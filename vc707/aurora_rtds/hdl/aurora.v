`timescale 1ns / 1ps

/* The "augmented-Aurora" module at the interface with RTDS. Contains the 
 * Aurora interface and the accompanying modules for additional functionality, 
 * like, appending sequence number to outgoing packets, or discarding the 
 * trailing sequence number word from incoming packets, among other 
 * functionalities. 
 * There are 3 clocks - 200 MHz board clock, 156 MHz clock for DRP (Aurora) 
 * and 125 MHz Transceiver clock. The SFP ports are physical serial links.
 * 
 * TODO: Register interface wrapper for use with VILLAS.
 * TODO: Check first TODO in post.v.
 * TODO: Handle {s, m}_axis_*_tkeep signals in pre and post modules.
 * 
 * @author Hatim Kanchwala <hatim@hatimak.me>
 * @copyright 2019 Hatim Kanchwala
 */

module aurora(
              // External ports, exposed through to physical pins
              input wire           SYS_CLK_P,
              input wire           SYS_CLK_N,
              input wire           GT_REFCLK1_P,
              input wire           GT_REFCLK1_N,
              input wire           CLK156M_P,
              input wire           CLK156M_N,
              input wire           SFP_RX_P,
              input wire           SFP_RX_N,
              output wire          SFP_TX_P,
              output wire          SFP_TX_N,
              output wire          SFP_TX_DISABLE_N,

              // AXI-Stream slave interface
              input wire           s_axis_tvalid,
              input wire [31 : 0]  s_axis_tdata,
              input wire           s_axis_tlast,
              output wire          s_axis_tready,

              // AXI-Stream master interface
              output wire          m_axis_tvalid,
              output wire [31 : 0] m_axis_tdata,
              output wire          m_axis_tlast,
              input wire           m_axis_tready,

              output wire          user_clk_out,
              output wire          sys_reset_out
              );

   wire                            sys_clk_i1, sys_clk_i2, sys_clk,
                                   clk156_i, clk156,
                                   gt_refclk1,
                                   flop_q0, flop_q1, flop_q2, flop_q3, rst_pulse, rst_d, rst_156,
                                   channel_up, lane_up, hard_err, soft_err, frame_err, link_reset_out,
                                   rx_resetdone_out, tx_resetdone_out, tx_lock,
                                   s_axis_aurora_tlast, s_axis_aurora_tvalid, s_axis_aurora_tready,
                                   m_axis_aurora_tlast, m_axis_aurora_tvalid,
                                   s_axis_loop_tlast, s_axis_loop_tvalid,
                                   m_axis_pre_tvalid, m_axis_pre_tlast;
   wire [0 : 3]                    s_axis_aurora_tkeep, m_axis_aurora_tkeep;
   wire [0 : 31]                   s_axis_aurora_tdata, m_axis_aurora_tdata;
   wire [31 : 0]                   s_axis_loop_tdata, m_axis_pre_tdata;
   wire [18 : 0]                   pre_0_ila;
   wire [47 : 0]                   post_0_ila;

   reg                             rst_stretch, rtds_tx_pulse,
                                   ctrl_loopback; // Control register, assert for loopback mode
   reg [31 : 0]                    rst_count;

   // Clock Buffering
   // ---------------
   IBUFDS IBUFDS_0 (
                    .I  (SYS_CLK_P),
                    .IB (SYS_CLK_N),

                    .O  (sys_clk_i1)
                    );

   BUFR #(
          .BUFR_DIVIDE   ("4")
          ) BUFR_0 (
                    .CE  (1'b1),
                    .CLR (1'b0),
                    .I   (sys_clk_i1),

                    .O   (sys_clk_i2)
                    );

   BUFG BUFG_0 (
                .I (sys_clk_i2),

                .O (sys_clk)
                );


   IBUFDS_GTE2 IBUFDS_GTE2_0 (
                              .CEB   (1'b0),
                              .I     (GT_REFCLK1_P),
                              .IB    (GT_REFCLK1_N),

                              .O     (gt_refclk1),
                              .ODIV2 ()
                              );


   IBUFDS IBUFDS_1 (
                    .I  (CLK156M_P),
                    .IB (CLK156M_N),

                    .O  (clk156_i)
                    );

   BUFG BUFG_1 (
                .I (clk156_i),

                .O (clk156)
                );
   // ---------------

   // Reset Circuit
   // -------------
   // D-FF with synchronous set, high on power-up
   FDS flop_0 (
               .C (clk156),
               .S (1'b0),
               .D (1'b0),

               .Q (flop_q0)
               );

   // D-FF with synchronous reset, low on power-up
   FDR flop_1 (
               .C (clk156),
               .R (1'b0),
               .D (flop_q0),

               .Q (flop_q1)
               );

   // D-FF with synchronous reset, low on power-up
   FDR flop_2 (
               .C (clk156),
               .R (1'b0),
               .D (flop_q1),

               .Q (flop_q2)
               );

   // D-FF with synchronous reset, low on power-up
   FDR flop_3 (
               .C (clk156),
               .R (1'b0),
               .D (flop_q2),

               .Q (flop_q3)
               );

   // rst_pulse is asserted for 3 clock cycles
   assign rst_pulse = flop_q1 || flop_q2 || flop_q3;

   always @(posedge clk156) begin
      if (rst_pulse == 1'b1) begin
         rst_stretch <= 1'b1;
         rst_count <= 32'h00_00_00_00;
      end else if (rst_count[26] == 1'b1) begin
         // Around 67,000,000 clock cycles at 156 MHz, 0.43 seconds
         rst_stretch <= 1'b0;
         rst_count <= rst_count;
      end else begin
         rst_count <= rst_count + 1;
      end
   end

   assign rst_d = rst_pulse || rst_stretch || flop_q0;

   // D-FF with synchronous set, high on power-up
   FDS flop_rst156 (
                    .C (clk156),
                    .S (1'b0),
                    .D (rst_d),

                    .Q (rst_156)
                    );
   // -------------

   // This must be asserted for the RTDS to be able to detect the Aurora link
   assign SFP_TX_DISABLE_N = 1'b1;

   pre pre (
            .m_axis_aclk    (user_clk_out),
            .m_axis_aresetn (!sys_reset_out),

            // AXI-Stream slave interface
            .s_axis_tvalid  (s_axis_tvalid),
            .s_axis_tdata   (s_axis_tdata),
            .s_axis_tlast   (s_axis_tlast),
            .s_axis_tready  (s_axis_tready),

            // AXI-Stream master interface
            .m_axis_tvalid  (m_axis_pre_tvalid),
            .m_axis_tdata   (m_axis_pre_tdata),
            .m_axis_tlast   (m_axis_pre_tlast),
            .m_axis_tready  (s_axis_aurora_tready)
            );


   aurora_8b10b_0 aurora_0 (
                            // Status and control ports
                            .reset                   (rst_156),
                            .gt_reset                (rst_156),

                            .channel_up              (channel_up),
                            .lane_up                 (lane_up),
                            .hard_err                (hard_err),
                            .soft_err                (soft_err),
                            .frame_err               (frame_err),
                            .link_reset_out          (link_reset_out), // Relative to init_clk_in

                            // User IO ports (TX), AXI_Stream slave interface
                            .s_axi_tx_tdata          (s_axis_aurora_tdata),
                            .s_axi_tx_tkeep          (s_axis_aurora_tkeep),
                            .s_axi_tx_tlast          (s_axis_aurora_tlast),
                            .s_axi_tx_tvalid         (s_axis_aurora_tvalid),

                            .s_axi_tx_tready         (s_axis_aurora_tready),

                            // User IO ports (RX), AXI_Stream master interface
                            .m_axi_rx_tdata         (m_axis_aurora_tdata),
                            .m_axi_rx_tkeep         (m_axis_aurora_tkeep),
                            .m_axi_rx_tlast         (m_axis_aurora_tlast),
                            .m_axi_rx_tvalid        (m_axis_aurora_tvalid),

                            // Transceiver ports 
                            .rxp                     (SFP_RX_P),
                            .rxn                     (SFP_RX_N),
                            .txp                     (SFP_TX_P),
                            .txn                     (SFP_TX_N),
                            .power_down              (1'b0),
                            .loopback                (1'b0),
                            .rx_resetdone_out        (rx_resetdone_out),
                            .tx_resetdone_out        (tx_resetdone_out),
                            .tx_lock                 (tx_lock),

                            // Clock interface
                            .pll_not_locked_out      (),
                            .gt_refclk1              (gt_refclk1),
                            .user_clk_out            (user_clk_out),
                            .sync_clk_out            (), // Same as user_clk_out
                            .sys_reset_out           (sys_reset_out), // Relative to user_clk_out
                            .gt_reset_out            (),
                            .init_clk_in             (sys_clk),
                            .gt0_qplllock_out        (),
                            .gt0_qpllrefclklost_out  (),
                            .gt_qpllclk_quad1_out    (),
                            .gt_qpllrefclk_quad1_out (),

                            // Transceiver DRP ports
                            .drpclk_in               (clk156),
                            .drpaddr_in              (9'h0),
                            .drpen_in                (1'b0),
                            .drpdi_in                (16'h0),
                            .drprdy_out              (),
                            .drpdo_out               (),
                            .drpwe_in                (1'b0)
                            );

   assign s_axis_aurora_tvalid = (ctrl_loopback == 1'b1) ? s_axis_loop_tvalid : m_axis_pre_tvalid;
   assign s_axis_aurora_tdata = (ctrl_loopback == 1'b1) ? s_axis_loop_tdata : m_axis_pre_tdata;
   assign s_axis_aurora_tlast = (ctrl_loopback == 1'b1) ? s_axis_loop_tlast : m_axis_pre_tlast;


   post post (
              .m_axis_aclk    (user_clk_out),
              .m_axis_aresetn (!sys_reset_out),

              // AXI-Stream slave interface
              .s_axis_tvalid     (m_axis_aurora_tvalid),
              .s_axis_tdata      (m_axis_aurora_tdata),
              .s_axis_tlast      (m_axis_aurora_tlast),

              // AXI-Stream master interface
              .m_axis_tvalid     (m_axis_tvalid),
              .m_axis_tdata      (m_axis_tdata),
              .m_axis_tlast      (m_axis_tlast),

              // Control ports
              .ctrl_strip_seq_en (1'b1) // TODO: ctrl_strip_seq_en should be exposed over AXI register interface for external control
              );


   // Generate a pulse after m_axis_aurora_tlast to instruct module to initiate data transfer to RTDS
   // TODO: Induce packet delay? If, packet delay user configurable?
   always @(posedge user_clk_out) begin
      if (sys_reset_out == 1'b1) begin
         rtds_tx_pulse <= 1'b0;
      end else begin
         if (m_axis_aurora_tlast == 1'b1) begin
            rtds_tx_pulse <= 1'b1;
         end else begin
            rtds_tx_pulse <= 1'b0;
         end
      end
   end


   fifo_loop fifo_loop_0 (
                          .s_aclk        (user_clk_out),
                          .s_aresetn     (!sys_reset_out),

                          // Status ports
                          .wr_rst_busy   (),
                          .rd_rst_busy   (),

                          // User IO ports AXI-Stream (TX)
                          .s_axis_tvalid (m_axis_aurora_tvalid),
                          .s_axis_tdata  (m_axis_aurora_tdata),
                          .s_axis_tlast  (m_axis_aurora_tlast),

                          .s_axis_tready (), // Aurora does NOT have a m_axis_tready, so partner cannot exert backpressure

                          // User IO ports AXI-Stream (RX)
                          .m_axis_tvalid (s_axis_loop_tvalid),
                          .m_axis_tdata  (s_axis_loop_tdata),
                          .m_axis_tlast  (s_axis_loop_tlast),

                          .m_axis_tready (s_axis_aurora_tready)
                          );


   // TODO: ctrl_loopback should be exposed over AXI register interface for 
   // external control. The following temporary block is in place only for 
   // testing the pre module. 
   always @(posedge user_clk_out) begin
      if (sys_reset_out == 1'b1) begin
         ctrl_loopback <= 1'b0;
      end else begin
      end
   end


   ila_aurora ila_aurora (
                          .clk    (user_clk_out),
                          .probe0 ({m_axis_aurora_tdata, m_axis_aurora_tkeep, m_axis_aurora_tlast, m_axis_aurora_tvalid}),
                          .probe1 ({s_axis_aurora_tdata, s_axis_aurora_tkeep, s_axis_aurora_tlast, s_axis_aurora_tvalid, s_axis_aurora_tready}),
                          .probe2 ({channel_up, lane_up, hard_err, soft_err, frame_err, link_reset_out}),
                          .probe3 ({m_axis_tvalid, m_axis_tdata, 1'b0})
                          );

endmodule // aurora

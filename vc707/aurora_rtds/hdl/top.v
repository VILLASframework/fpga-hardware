`timescale 1ns / 1ps

/* Top-level module for the Aurora interface with RTDS. There are 3 clocks - 
 * 200 MHz board clock, 156 MHz clock for DRP (Aurora) and 125 MHz Transceiver 
 * clock. The SFP ports are physical serial links.
 * 
 * TODO: Register interface wrapper for use with VILLAS.
 * 
 * @author Hatim Kanchwala <hatim@hatimak.me>
 * @copyright 2019 Hatim Kanchwala
 */

module top(
           input wire  SYS_CLK_P,
           input wire  SYS_CLK_N,
           input wire  GT_REFCLK1_P,
           input wire  GT_REFCLK1_N,
           input wire  CLK156M_P,
           input wire  CLK156M_N,
           input wire  SFP_RX_P,
           input wire  SFP_RX_N,

           output wire SFP_TX_P,
           output wire SFP_TX_N,
           output wire SFP_TX_DISABLE_N
           );

   wire                sys_clk_i1, sys_clk_i2, mmcm_locked, clk156_i, user_clk_out,
                       sys_clk, gt_refclk1, clk156,
                       flop_q0, flop_q1, flop_q2, flop_q3,
                       rst_pulse, rst_d, rst_156,
                       channel_up, hard_err, soft_err, frame_err, link_reset_out,
                       s_axi_tx_tlast, s_axi_tx_tvalid, s_axi_tx_tready,
                       m_axi_rx_tlast, m_axi_rx_tvalid, m_axi_rx_tready,
                       rx_resetdone_out, tx_resetdone_out, tx_lock, sys_reset_out,
                       s_axi_loop_tx_tlast, s_axi_loop_tx_tvalid, m_axi_loop_rx_tready,
                       m_axis_tvalid_seq, m_axis_tlast_seq, s_axis_tready_seq,
                       stat_cnt_pkts_in_rdy; // Status register, indicates when the corresponding status register holds the correct count

   wire [0 : 0]        lane_up;

   wire [0 : 3]        s_axi_tx_tkeep, m_axi_rx_tkeep;

   wire [0 : 31]       s_axi_tx_tdata, m_axi_rx_tdata;

   wire [18 : 0]       axis_data_0_ila;

   wire [31 : 0]       s_axi_loop_tx_tdata, m_axis_tdata_seq;

   reg                 rst_stretch, rtds_tx_pulse,
                       ctrl_loopback, // Control register, assert for loopback mode
                       stat_cnt_pkts_in_rdy_i;

   reg [31 : 0]        rst_count,
                       stat_cnt_pkts_in; // Status register, count of number of packets received 


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
                            .s_axi_tx_tdata          (s_axi_tx_tdata),
                            .s_axi_tx_tkeep          (s_axi_tx_tkeep),
                            .s_axi_tx_tlast          (s_axi_tx_tlast),
                            .s_axi_tx_tvalid         (s_axi_tx_tvalid),

                            .s_axi_tx_tready         (s_axi_tx_tready),

                            // User IO ports (RX), AXI_Stream master interface
                            .m_axi_rx_tdata          (m_axi_rx_tdata),
                            .m_axi_rx_tkeep          (m_axi_rx_tkeep),
                            .m_axi_rx_tlast          (m_axi_rx_tlast),
                            .m_axi_rx_tvalid         (m_axi_rx_tvalid),

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


   localparam
      ST_IN_COUNT = 1'b0,
      ST_IN_LAST  = 1'b1;

   reg state_cnt_pkts_in;

   // Count the number of packets received from RTDS
   // TODO: Does stat_cnt_pkts_in need to be 32-bit long?
   always @(posedge user_clk_out) begin
      if (sys_reset_out == 1'b1) begin
         stat_cnt_pkts_in <= 32'h00_00_00_00;
         stat_cnt_pkts_in_rdy_i <= 1'b0;

         state_cnt_pkts_in <= ST_IN_COUNT;
      end else begin
         case (state_cnt_pkts_in)
            ST_IN_COUNT: begin
               stat_cnt_pkts_in_rdy_i <= 1'b0;

               if (m_axi_rx_tvalid == 1'b1) begin
                  stat_cnt_pkts_in <= stat_cnt_pkts_in + 32'h00_00_00_01;

                  if (m_axi_rx_tlast == 1'b1) begin
                     stat_cnt_pkts_in_rdy_i <= 1'b1;
                     state_cnt_pkts_in <= ST_IN_LAST;
                  end
               end
            end
            ST_IN_LAST: begin
               stat_cnt_pkts_in_rdy_i <= 1'b1;
               if (m_axi_rx_tvalid == 1'b1) begin
                  stat_cnt_pkts_in <= 32'h00_00_00_01;

                  state_cnt_pkts_in <= ST_IN_COUNT;
               end
            end
         endcase
      end
   end

   assign stat_cnt_pkts_in_rdy = stat_cnt_pkts_in_rdy_i & ~m_axi_rx_tvalid;


   // Generate a pulse after m_axi_rx_tlast to instruct module to initiate data transfer to RTDS
   // TODO: Induce packet delay? If, packet delay user configurable?
   always @(posedge user_clk_out) begin
      if (sys_reset_out == 1'b1) begin
         rtds_tx_pulse <= 1'b0;
      end else begin
         if (m_axi_rx_tlast == 1'b1) begin
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
                          .s_axis_tvalid (m_axi_rx_tvalid),
                          .s_axis_tdata  (m_axi_rx_tdata),
                          .s_axis_tlast  (m_axi_rx_tlast),

                          .s_axis_tready (m_axi_loop_rx_tready),

                          // User IO ports AXI-Stream (RX)
                          .m_axis_tvalid (s_axi_loop_tx_tvalid),
                          .m_axis_tdata  (s_axi_loop_tx_tdata),
                          .m_axis_tlast  (s_axi_loop_tx_tlast),

                          .m_axis_tready (s_axi_tx_tready)
                          );


   // TODO: The following temporary block is in place only for testing the 
   // axis_data module. It stimulates the slave interface by dispatching 
   // a two-word constant {32'h00_05, 32'h00_03} periodically.
   // The st_count counter determines periodic stimulation, and it is long 
   // enough to discount the backpressure from the axis_data slave interface.
   reg          st_tvalid, st_tlast;
   reg  [1 : 0] st_state;
   reg  [7 : 0] st_count;
   reg [31 : 0] st_tdata;
   localparam
     S_ST_IDLE = 2'b00,
     S_ST_0005 = 2'b01,
     S_ST_0003 = 2'b11;
   always @(posedge user_clk_out) begin
      if (sys_reset_out == 1'b1) begin
         st_tvalid <= 1'b0;
         st_tdata <= 32'h00_00_00_00;
         st_tlast <= 1'b0;

         st_count <= 8'h00;

         st_state <= S_ST_IDLE;
      end else begin
         case (st_state)
           S_ST_IDLE: begin
              st_count <= st_count + 8'h01;

              st_tvalid <= 1'b0;
              st_tlast <= 1'b0;

              if (st_count == 8'hff) begin
                 st_state <= S_ST_0005;
              end
           end
           S_ST_0005: begin
              st_count <= 8'h00;

              st_tvalid <= 1'b1;
              st_tdata <= 32'h00_00_00_05;

              st_state <= S_ST_0003;
           end
           S_ST_0003: begin
              st_tdata <= 32'h00_00_00_03;
              st_tlast <= 1'b1;

              st_state <= S_ST_IDLE;
           end
         endcase
      end
   end


   axis_data axis_data_0 (
                          .m_axis_aclk    (user_clk_out),
                          .m_axis_aresetn (!sys_reset_out),

                          // AXI-Stream slave interface
                          .s_axis_tvalid  (st_tvalid),
                          .s_axis_tdata   (st_tdata),
                          .s_axis_tlast   (st_tlast),
                          .s_axis_tready  (s_axis_tready_seq),

                          // AXI-Stream master interface
                          .m_axis_tvalid  (m_axis_tvalid_seq),
                          .m_axis_tdata   (m_axis_tdata_seq),
                          .m_axis_tlast   (m_axis_tlast_seq),
                          .m_axis_tready  (s_axi_tx_tready),

                          // ILA probes out
                          .ila_out        (axis_data_0_ila)
                          );


   // TODO: ctrl_loopback should be exposed over AXI register interface for 
   // external control. The following temporary block is in place only for 
   // testing the axis_data module. 
   always @(posedge user_clk_out) begin
      if (sys_reset_out == 1'b1) begin
         ctrl_loopback <= 1'b0;
      end else begin
      end
   end

   // AXI-Stream master interface of Aurora does NOT have a tready port, so partner cannot exert backpressure.
   assign m_axi_rx_tready = m_axi_loop_rx_tready;

   assign s_axi_tx_tvalid = (ctrl_loopback == 1'b1) ? s_axi_loop_tx_tvalid : m_axis_tvalid_seq;
   assign s_axi_tx_tdata = (ctrl_loopback == 1'b1) ? s_axi_loop_tx_tdata : m_axis_tdata_seq;
   assign s_axi_tx_tlast = (ctrl_loopback == 1'b1) ? s_axi_loop_tx_tlast : m_axis_tlast_seq;


   ila_0 ila_0 (
                .clk    (user_clk_out),
                .probe0 ({m_axi_rx_tdata, m_axi_rx_tkeep, m_axi_rx_tlast, m_axi_rx_tvalid}),
                .probe1 ({s_axi_tx_tdata, s_axi_tx_tkeep, s_axi_tx_tlast, s_axi_tx_tvalid, s_axi_tx_tready}),
                .probe2 ({channel_up, lane_up, hard_err, soft_err, frame_err, link_reset_out}),
                .probe3 (axis_data_0_ila),
                .probe4 ({stat_cnt_pkts_in_rdy, stat_cnt_pkts_in, 15'b000_0000_0000_0000})
                );

endmodule // top

`include "defines.vh"

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
 * TOOD: Parametric data and address widths for AXI Slave register interface.
 * 
 * @author Hatim Kanchwala <hatim@hatimak.me>
 * @copyright 2019 Hatim Kanchwala
 */

module aurora(
              // External ports, exposed through to physical pins
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

              // Clock and reset interface
              input wire           free_clk_in,
              input wire           gt_refclk1,
              output wire          user_clk_out,
              input wire           reset,
              output wire          sys_reset_out,

              // AXI Slave register interface
              input wire           S_AXI_ARESETN, // Global reset signal, active LOW
              input wire [5 : 0]   S_AXI_AWADDR, // Write address
              input wire [2 : 0]   S_AXI_AWPROT, // Write protection type, TODO: unused for now.
              input wire           S_AXI_AWVALID, // Write address valid
              output reg           S_AXI_AWREADY, // Write address ready (slave ready to accept write address)
              input wire [31 : 0]  S_AXI_WDATA, // Write data bus
              input wire [3 : 0]   S_AXI_WSTRB, // Write strobes, per 8 bits of S_AXI_WDATA, indicating valid lane
              input wire           S_AXI_WVALID, // Write valid
              output reg           S_AXI_WREADY, // Write ready (slave ready to accept data)
              output reg           S_AXI_BVALID, // Write response valid
              input wire           S_AXI_BREADY, // Write response ready (master ready to accept write response)
              input wire [5 : 0]   S_AXI_ARADDR, // Read address
              input wire [2 : 0]   S_AXI_ARPROT, // Read protection type, TODO: unused for now.
              input wire           S_AXI_ARVALID, // Read address valid
              output reg           S_AXI_ARREADY, // Read address ready (slave ready to accept read address)
              output reg [31 : 0]  S_AXI_RDATA, // Read data
              output reg           S_AXI_RVALID, // Read valid
              input wire           S_AXI_RREADY // Read ready (master ready to receive)
              );

   wire                            channel_up, lane_up, hard_err, soft_err, frame_err, link_reset_out,
                                   rx_resetdone_out, tx_resetdone_out, tx_lock,
                                   s_axis_aurora_tlast, s_axis_aurora_tvalid, s_axis_aurora_tready,
                                   m_axis_aurora_tlast, m_axis_aurora_tvalid,
                                   s_axis_loop_tlast, s_axis_loop_tvalid,
                                   m_axis_pre_tvalid, m_axis_pre_tlast,
                                   usr_clk;
   wire [0 : 3]                    s_axis_aurora_tkeep, m_axis_aurora_tkeep;
   wire [0 : 31]                   s_axis_aurora_tdata, m_axis_aurora_tdata;
   wire [31 : 0]                   s_axis_loop_tdata, m_axis_pre_tdata,
                                   vio_in0, vio_out0;

   reg                             slv_ctrl_loopback; // Control register, assert for loopback mode

   wire                            slv_reg_wren;
   reg [5 : 0]                     s_axi_awaddr, s_axi_araddr;

   assign user_clk_out = usr_clk;

   // Addresses of slave registers
   localparam
     ADDR_STAT_REG   = 4'b0000,
     ADDR_CTRL_REG   = 4'b0001,
     ADDR_CNTR_IN_H  = 4'b0011, // 32-bits
     ADDR_CNTR_IN_L  = 4'b0010, // 32-bits
     ADDR_CNTR_OUT_H = 4'b0110, // 32-bits
     ADDR_CNTR_OUT_L = 4'b0111; // 32-bits

   // S_AXI_AWREADY / S_AXI_WREADY asserted for one S_AXI_ACLK cycle and 
   // S_AXI_AWADDR latched when both S_AXI_AWVALID and S_AXI_WVALID high
   // TODO: Assuming no pending transactions (side: this logic may not be the best?)
   always @(posedge usr_clk) begin
      if (S_AXI_ARESETN == 1'b0) begin
         S_AXI_AWREADY <= 1'b0;
         s_axi_awaddr <= 6'b00_0000;

         S_AXI_WREADY <= 1'b0;
      end else begin
         if (S_AXI_AWREADY == 1'b0 && S_AXI_AWVALID == 1'b1 && S_AXI_WVALID == 1'b1) begin
            S_AXI_AWREADY <= 1'b1;
            s_axi_awaddr <= S_AXI_AWADDR;
         end else begin
            S_AXI_AWREADY <= 1'b0;
         end

         if (S_AXI_WREADY == 1'b0 && S_AXI_AWVALID == 1'b1 && S_AXI_WVALID == 1'b1) begin
            S_AXI_WREADY <= 1'b1;
         end else begin
            S_AXI_WREADY <= 1'b0;
         end
      end
   end

   // Slave register write enable asserted when valid write address and data available, 
   // and slave ready to accept write address and data
   assign slv_reg_wren = S_AXI_AWVALID & S_AXI_WVALID & S_AXI_AWREADY & S_AXI_WREADY;

   /* Memory mapped register select and write logic
    * Write data is accepted and written to memory mapped registers when
    * S_AXI_AWREADY, S_AXI_AWVALID, S_AXI_WREADY and S_AXI_WVALID are high
    * TODO: Use write strobes
    */
   always @(posedge usr_clk) begin
      if (S_AXI_ARESETN == 1'b0) begin
         slv_ctrl_loopback <= 1'b0;
      end else begin
`ifndef USE_VIO_SLV_AURORA
         if (slv_reg_wren == 1'b1) begin
            case (s_axi_awaddr[5 : 2])
              ADDR_CTRL_LOOPBACK: begin
                 // Only use LSB of incoming write data word 
                 slv_ctrl_loopback <= S_AXI_WDATA[0 : 0];
              end
            endcase
         end
`else
         slv_ctrl_loopback <= vio_out0[0 : 0];
`endif
      end
   end

   // Write response logic
   // S_AXI_BVALID asserted when S_AXI_AWREADY, S_AXI_AWVALID, S_AXI_WREADY, S_AXI_WVALID high
   always @(posedge usr_clk) begin
      if (S_AXI_ARESETN == 1'b0) begin
         S_AXI_BVALID <= 1'b0;
      end else begin
         if (S_AXI_AWREADY == 1'b1 && S_AXI_AWVALID == 1'b1 && S_AXI_WREADY == 1'b1 && S_AXI_WVALID == 1'b1) begin
            S_AXI_BVALID <= 1'b1;
         end else if (S_AXI_BREADY == 1'b1 && S_AXI_BVALID == 1'b1) begin
            S_AXI_BVALID <= 1'b0;
         end
      end
   end


   // S_AXI_ARREADY asserted for one S_AXI_ACLK cycle and S_AXI_ARADDR latched when S_AXI_ARVALID high
   // TODO: this logic may not be the best?
   always @(posedge usr_clk) begin
      if (S_AXI_ARESETN == 1'b0) begin
         S_AXI_ARREADY <= 1'b0;
         s_axi_araddr <= 6'b00_0000;

         S_AXI_RVALID <= 1'b0;
      end else begin
         if (S_AXI_ARREADY == 1'b0 && S_AXI_ARVALID == 1'b1) begin
            S_AXI_ARREADY <= 1'b1;
            s_axi_araddr <= S_AXI_ARADDR;
         end else begin
            S_AXI_ARREADY <= 1'b0;
         end

         // S_AXI_RVALID asserted for one S_AXI_ACLK cycle when both S_AXI_ARREADY and S_AXI_ARVALID high
         // Slave register data available and valid on S_AXI_RDATA at this instance
         if (S_AXI_ARREADY == 1'b0 && S_AXI_ARVALID == 1'b1 && S_AXI_RVALID == 1'b0) begin
            S_AXI_RVALID <= 1'b1;
         end else if (S_AXI_RVALID == 1'b1 && S_AXI_RREADY == 1'b1) begin
            S_AXI_RVALID <= 1'b0;
         end
      end
   end

   // Memory mapped register select and read logic
   always @(posedge usr_clk) begin
      if (S_AXI_ARESETN == 1'b0) begin
         S_AXI_RDATA <= 32'h00_00_00_00;
      end else begin
         case (s_axi_araddr[5 : 2])
           ADDR_STAT_REG: begin
              S_AXI_RDATA <= { {32{1'b0}} }; // TODO
           end
           ADDR_CTRL_REG: begin
              S_AXI_RDATA <= { {32{1'b0}} }; // TODO
           end
           ADDR_CNTR_IN_H: begin
              S_AXI_RDATA <= { {32{1'b0}} }; // TODO
           end
           ADDR_CNTR_IN_L: begin
              S_AXI_RDATA <= { {32{1'b0}} }; // TODO
           end
           ADDR_CNTR_OUT_H: begin
              S_AXI_RDATA <= { {32{1'b0}} }; // TODO
           end
           ADDR_CNTR_OUT_L: begin
              S_AXI_RDATA <= { {32{1'b0}} }; // TODO
           end
           default: begin
              S_AXI_RDATA <= 32'h00_00_00_00;
           end
         endcase
      end
   end


   assign vio_in0 = { {31{1'b0}}, slv_ctrl_loopback };

   vio_aurora vio_aurora (
                          .clk        (user_clk_out),
                          .probe_in0  (vio_in0),
                          .probe_out0 (vio_out0)
                          );


   // This must be asserted for the RTDS to be able to detect the Aurora link
   assign SFP_TX_DISABLE_N = 1'b1;

   pre pre (
            .m_axis_aclk    (user_clk_out),
            .m_axis_aresetn (!sys_reset_out),

            // AXI-Stream slave interface
            .s_axis_tvalid     (s_axis_tvalid),
            .s_axis_tdata      (s_axis_tdata),
            .s_axis_tlast      (s_axis_tlast),
            .s_axis_tready     (s_axis_tready),

            // AXI-Stream master interface
            .m_axis_tvalid     (m_axis_pre_tvalid),
            .m_axis_tdata      (m_axis_pre_tdata),
            .m_axis_tlast      (m_axis_pre_tlast),
            .m_axis_tready     (s_axis_aurora_tready),

            .ctrl_rst_cntr_out (),
            .slv_cntr_out      ()
            );


   aurora_8b10b_0 aurora_0 (
                            // Status and control ports
                            .reset                   (reset),
                            .gt_reset                (reset),

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
                            .user_clk_out            (usr_clk),
                            .sync_clk_out            (), // Same as user_clk_out
                            .sys_reset_out           (sys_reset_out), // Relative to user_clk_out
                            .gt_reset_out            (),
                            .init_clk_in             (free_clk_in),
                            .gt0_qplllock_out        (),
                            .gt0_qpllrefclklost_out  (),
                            .gt_qpllclk_quad1_out    (),
                            .gt_qpllrefclk_quad1_out (),

                            // Transceiver DRP ports
                            .drpclk_in               (free_clk_in),
                            .drpaddr_in              (9'h0),
                            .drpen_in                (1'b0),
                            .drpdi_in                (16'h0),
                            .drprdy_out              (),
                            .drpdo_out               (),
                            .drpwe_in                (1'b0)
                            );

   assign s_axis_aurora_tvalid = (slv_ctrl_loopback == 1'b1) ? s_axis_loop_tvalid : m_axis_pre_tvalid;
   assign s_axis_aurora_tdata = (slv_ctrl_loopback == 1'b1) ? s_axis_loop_tdata : m_axis_pre_tdata;
   assign s_axis_aurora_tlast = (slv_ctrl_loopback == 1'b1) ? s_axis_loop_tlast : m_axis_pre_tlast;


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


`ifdef INCLUDE_ILA_AURORA
   ila_aurora ila_aurora (
                          .clk    (user_clk_out),
                          .probe0 ({m_axis_aurora_tdata, m_axis_aurora_tkeep, m_axis_aurora_tlast, m_axis_aurora_tvalid}),
                          .probe1 ({s_axis_aurora_tdata, s_axis_aurora_tkeep, s_axis_aurora_tlast, s_axis_aurora_tvalid, s_axis_aurora_tready}),
                          .probe2 ({channel_up, lane_up, hard_err, soft_err, frame_err, link_reset_out}),
                          .probe3 ({m_axis_tvalid, m_axis_tdata, 1'b0})
                          );
`endif

endmodule // aurora

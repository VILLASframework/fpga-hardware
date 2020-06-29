`include "defines.vh"

/* The "augmented-Aurora" module at the interface with RTDS. Contains the 
 * Aurora interface and the accompanying modules for additional functionality, 
 * like, appending sequence number to outgoing packets, or discarding the 
 * trailing sequence number word from incoming packets, among other 
 * functionalities. 
 * There are 3 clocks - 200 MHz board clock, 156 MHz clock for DRP (Aurora) 
 * and 125 MHz Transceiver clock. The SFP ports are physical serial links.
 * 
 * TODO: Check first TODO in post.v.
 * TODO: Handle {s, m}_axis_*_tkeep signals in pre and post modules.
 * 
 * @author Hatim Kanchwala <hatim@hatimak.me>
 * @copyright 2019 Hatim Kanchwala
 */

module aurora #(
                parameter integer C_S_AXI_DATA_WIDTH = 32, // Width of S_AXI data bus
                parameter integer C_S_AXI_ADDR_WIDTH = 5 // Width of S_AXI address bus
                ) (
                   // External ports, exposed through to physical pins
                   input wire                                SFP_RX_P,
                   input wire                                SFP_RX_N,
                   output wire                               SFP_TX_P,
                   output wire                               SFP_TX_N,
                   output wire                               SFP_TX_DISABLE_N,

                   // AXI-Stream slave interface
                   input wire                                s_axis_tvalid,
                   input wire [31 : 0]                       s_axis_tdata,
                   input wire                                s_axis_tlast,
                   output wire                               s_axis_tready,

                   // AXI-Stream master interface
                   output wire                               m_axis_tvalid,
                   output wire [31 : 0]                      m_axis_tdata,
                   output wire                               m_axis_tlast,
                   input wire                                m_axis_tready,

                   // Clock and reset interface
                   input wire                                free_clk_in,
                   input wire                                gt_refclk1,
                   output wire                               user_clk_out,
                   input wire                                reset,
                   output wire                               sys_reset_out,

                   // AXI Slave register interface
                   input wire                                S_AXI_ACLK, // Global Clock Signal
                   input wire                                S_AXI_ARESETN, // Global reset signal, active LOW
                   input wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR, // Write address
                   input wire [2 : 0]                        S_AXI_AWPROT, // Write protection type
                   input wire                                S_AXI_AWVALID, // Write address valid
                   output wire                               S_AXI_AWREADY, // Write address ready, slave ready to accept write address
                   input wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA, // Write data bus
                   input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB, // Write strobes, per 8 bits of S_AXI_WDATA, indicating valid lane
                   input wire                                S_AXI_WVALID, // Write valid
                   output wire                               S_AXI_WREADY, // Write ready, slave ready to accept data
                   output wire [1 : 0]                       S_AXI_BRESP, // Write response, indicates status of write transaction
                   output wire                               S_AXI_BVALID, // Write response valid, indicates channel is signalling valid write response
                   input wire                                S_AXI_BREADY, // Write response ready, master ready to accept write response
                   input wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR, // Read address
                   input wire [2 : 0]                        S_AXI_ARPROT, // Read protection type
                   input wire                                S_AXI_ARVALID, // Read address valid
                   output wire                               S_AXI_ARREADY, // Read address ready, slave ready to accept read address
                   output wire [C_S_AXI_DATA_WIDTH-1 : 0]    S_AXI_RDATA, // Read data
                   output wire [1 : 0]                       S_AXI_RRESP, // Read response, signal indicates status of read transfer
                   output wire                               S_AXI_RVALID, // Read valid
                   input wire                                S_AXI_RREADY // Read ready, master ready to receive
                   );

   wire                                                      channel_up, lane_up, hard_err, soft_err, frame_err, link_reset_out,
                                                             rx_resetdone_out, tx_resetdone_out, tx_lock,
                                                             s_axis_aurora_tlast, s_axis_aurora_tvalid, s_axis_aurora_tready,
                                                             m_axis_aurora_tlast, m_axis_aurora_tvalid,
                                                             s_axis_loop_tlast, s_axis_loop_tvalid,
                                                             m_axis_pre_tvalid, m_axis_pre_tlast,
                                                             usr_clk,
                                                             slv_reg_rden, slv_reg_wren;
   wire [0 : 3]                                              s_axis_aurora_tkeep, m_axis_aurora_tkeep;
   wire [0 : 31]                                             s_axis_aurora_tdata, m_axis_aurora_tdata;
   wire [31 : 0]                                             s_axis_loop_tdata, m_axis_pre_tdata;
   wire [63 : 0]                                             slv_cntr_out, slv_cntr_in;

   reg                                                       slv_ctrl_loopback, // Assert to put Aurora IP in loopback mode
                                                             slv_ctrl_rst_ctrs, // Assert to reset counters, incoming and outgoing frame counters
                                                             slv_ctrl_seq_mode, // Assert to turn off any sequence number handling by Aurora IP
                                                             slv_ctrl_seq_strip, // Assert to strip the received frame of the trailing sequence number
                                                             slv_ctrl_seq_echo, // Assert to use sequence number of incoming frame
                                                             aw_en,
                                                             // AXI4-LITE signals
                                                             axi_rvalid, axi_arready, axi_bvalid, axi_wready, axi_awready;
   reg [1 : 0]                                               axi_rresp, axi_bresp;
   reg [C_S_AXI_DATA_WIDTH-1 : 0]                            axi_rdata, reg_data_out;
   reg [C_S_AXI_ADDR_WIDTH-1 : 0]                            axi_araddr, axi_awaddr;
   
   integer                                                   byte_index;


   assign user_clk_out = usr_clk;

   assign S_AXI_AWREADY = axi_awready;
   assign S_AXI_WREADY = axi_wready;
   assign S_AXI_BRESP = axi_bresp;
   assign S_AXI_BVALID = axi_bvalid;
   assign S_AXI_ARREADY = axi_arready;
   assign S_AXI_RDATA = axi_rdata;
   assign S_AXI_RRESP = axi_rresp;
   assign S_AXI_RVALID = axi_rvalid;


   localparam integer                                        ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
   localparam integer                                        OPT_MEM_ADDR_BITS = 2;

   // Addresses of slave registers
   localparam
     ADDR_STAT_REG   = 3'b000,
     ADDR_CTRL_REG   = 3'b001,
     ADDR_CNTR_IN_H  = 3'b011, // 32-bits
     ADDR_CNTR_IN_L  = 3'b010, // 32-bits
     ADDR_CNTR_OUT_H = 3'b110, // 32-bits
     ADDR_CNTR_OUT_L = 3'b111; // 32-bits

   /* Implement axi_awready generation
    * axi_awready is asserted for one S_AXI_ACLK clock cycle when both
    * S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
    * de-asserted when reset is low. */
   always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
         axi_awready <= 1'b0;
         aw_en <= 1'b1;
      end else begin
         /* Slave is ready to accept write address when there is a valid write 
          * address and write data on the write address and data bus. This design 
          * expects no outstanding transactions. */
         if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin
            axi_awready <= 1'b1;
            aw_en <= 1'b0;
         end else if (S_AXI_BREADY && axi_bvalid) begin
            aw_en <= 1'b1;
            axi_awready <= 1'b0;
         end else begin
            axi_awready <= 1'b0;
         end
      end
   end

   /* Implement axi_awaddr latching 
    * This process is used to latch the address when both 
    * S_AXI_AWVALID and S_AXI_WVALID are valid. */
   always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
         axi_awaddr <= 0;
      end else begin
         /* Write Address latching  */
         if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en) begin
            axi_awaddr <= S_AXI_AWADDR;
         end
      end
   end

   /* Implement axi_wready generation axi_wready is asserted for one S_AXI_ACLK clock 
    * cycle when both S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
    * de-asserted when reset is low. */
   always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
         axi_wready <= 1'b0;
      end else begin
         /* Slave is ready to accept write data when there is a valid write address and 
          * write data on the write address and data bus. This design expects no 
          * outstanding transactions. */
         if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en) begin
            axi_wready <= 1'b1;
         end else begin
            axi_wready <= 1'b0;
         end
      end
   end

   /* Implement memory mapped register select and write logic generation
    * The write data is accepted and written to memory mapped registers when
    * axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
    * select byte enables of slave registers while writing.
    * These registers are cleared when reset (active low) is applied.
    * Slave register write enable is asserted when valid address and data are available
    * and the slave is ready to accept the write address and write data. */
   assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

   always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
         slv_ctrl_loopback <= 1'b0;
         slv_ctrl_rst_ctrs <= 1'b0;
         slv_ctrl_seq_mode <= 1'b0; // TODO: This has no influence on the logic yet
         slv_ctrl_seq_strip <= 1'b1;
         slv_ctrl_seq_echo <= 1'b0;
      end else begin
         if (slv_reg_wren) begin
            case (axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
              ADDR_CTRL_REG: begin
                 if (S_AXI_WSTRB[0] == 1) begin
                    slv_ctrl_loopback <= S_AXI_WDATA[0];
                    slv_ctrl_rst_ctrs <= S_AXI_WDATA[1];
                    slv_ctrl_seq_mode <= S_AXI_WDATA[2];
                    slv_ctrl_seq_strip <= S_AXI_WDATA[3];
                    slv_ctrl_seq_echo <= S_AXI_WDATA[4];
                 end
              end
              default: begin
                 slv_ctrl_loopback <= slv_ctrl_loopback;
                 slv_ctrl_rst_ctrs <= slv_ctrl_rst_ctrs;
                 slv_ctrl_seq_mode <= slv_ctrl_seq_mode;
                 slv_ctrl_seq_strip <= slv_ctrl_seq_strip;
                 slv_ctrl_seq_echo <= slv_ctrl_seq_echo;
              end
            endcase
         end
      end
   end

   /* Implement write response logic generation
    * The write response and response valid signals are asserted by the slave 
    * when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
    * This marks the acceptance of address and indicates the status of 
    * write transaction. */
   always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
         axi_bvalid <= 0;
         axi_bresp <= 2'b0;
      end else begin
         /* Indicates a valid write response is available. */
         if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID) begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; // 'Okay' response, TODO: error response
         end else begin
            /* Check if bready is asserted while bvalid is high, there 
             * is a possibility that bready is always asserted high. */
            if (S_AXI_BREADY && axi_bvalid) begin
               axi_bvalid <= 1'b0;
            end
         end
      end
   end


   /* Implement axi_arready generation
    * axi_arready is asserted for one S_AXI_ACLK clock cycle when S_AXI_ARVALID 
    * is asserted. axi_awready is de-asserted when reset (active low) is asserted. 
    * The read address is also latched when S_AXI_ARVALID is asserted. 
    * axi_araddr is reset to zero on reset assertion. */
   always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
         axi_arready <= 1'b0;
         axi_araddr  <= 32'b0;
      end else begin
         if (~axi_arready && S_AXI_ARVALID) begin
            axi_arready <= 1'b1; // Indicates that slave has acceped valid read address
            axi_araddr  <= S_AXI_ARADDR; // Read address latching
         end else begin
            axi_arready <= 1'b0;
         end
      end
   end

   /* Implement axi_arvalid generation
    * axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both S_AXI_ARVALID 
    * and axi_arready are asserted. The slave registers data are available on the 
    * axi_rdata bus at this instance. The assertion of axi_rvalid marks the validity 
    * of read data on the bus and axi_rresp indicates the status of read 
    * transaction. axi_rvalid is deasserted on reset (active low). axi_rresp and 
    * axi_rdata are cleared to zero on reset (active low). */
   always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
      end else begin
         if (axi_arready && S_AXI_ARVALID && ~axi_rvalid) begin
            axi_rvalid <= 1'b1; // Valid read data is available at the read data bus
            axi_rresp  <= 2'b0; // 'Okay' response
         end else if (axi_rvalid && S_AXI_RREADY) begin
            axi_rvalid <= 1'b0; // Read data is accepted by the master
         end
      end
   end

   /* Implement memory mapped register select and read logic generation
    * Slave register read enable is asserted when valid address is available 
    * and the slave is ready to accept the read address. */
   assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;

   always @(*) begin
      case (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
        ADDR_STAT_REG: begin
           reg_data_out = { {27{1'b0}}, frame_err, soft_err, hard_err, lane_up, channel_up };
        end
        ADDR_CTRL_REG: begin
           reg_data_out = { {27{1'b0}}, slv_ctrl_seq_echo, slv_ctrl_seq_strip, slv_ctrl_seq_mode, slv_ctrl_rst_ctrs, slv_ctrl_loopback};
        end
        ADDR_CNTR_IN_H: begin
           reg_data_out = slv_cntr_in[63 : 32];
        end
        ADDR_CNTR_IN_L: begin
           reg_data_out = slv_cntr_in[31 : 0];
        end
        ADDR_CNTR_OUT_H: begin
           reg_data_out = slv_cntr_out[63 : 32];
        end
        ADDR_CNTR_OUT_L: begin
           reg_data_out = slv_cntr_out[31 : 0];
        end
        default: begin
           reg_data_out = 0;
        end
      endcase
   end

   /* Output register or memory read data */
   always @(posedge S_AXI_ACLK) begin
      if (S_AXI_ARESETN == 1'b0) begin
         axi_rdata <= 0;
      end else begin
         /* When there is a valid read address (S_AXI_ARVALID) with acceptance 
          * of read address by the slave (axi_arready), output the read dada */
         if (slv_reg_rden) begin
            axi_rdata <= reg_data_out; // Register read data
         end
      end
   end


   // This must be asserted for the RTDS to be able to detect the Aurora link
   assign SFP_TX_DISABLE_N = 1'b1;

   pre pre (
            .m_axis_aclk       (user_clk_out),
            .m_axis_aresetn    (!sys_reset_out),

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

            // Status and control ports
            .ctrl_rst_cntr_out (slv_ctrl_rst_ctrs),
            .slv_cntr_out      (slv_cntr_out)
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

              // Status and control ports
              .ctrl_strip_seq_en (slv_ctrl_seq_strip),
              .ctrl_rst_cntr_in  (slv_ctrl_rst_ctrs),
              .slv_cntr_in       (slv_cntr_in)
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

endmodule // aurora

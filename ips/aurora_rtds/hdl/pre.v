`include "defines.vh"

/* Wrapper module to generate and append a sequence number to incoming 
 * AXI-Stream data packets, which are then forwarded to the Aurora block.
 *
 * TODO: Account for backpressure exerted from partner at master interface.
 * TODO: Input control port to determine whether sequence number is 
 *       apppended (like post module has ctrl_strip_seq_en)
 *
 * @author Hatim Kanchwala <hatim@hatimak.me>
 * @copyright 2019 Hatim Kanchwala
 */

module pre(
           input wire           m_axis_aclk,
           input wire           m_axis_aresetn,

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

           // Status and control ports
           input wire           ctrl_rst_cntr_out,
           output wire [63 : 0] slv_cntr_out
           );

   reg                          state_pre, state_cnt, passthrough, tvalid;
   reg [15 : 0]                 seq_ctr;
   reg [63 : 0]                 slv_cntr_out_i; // Slave register to count sent frames

   localparam
     S_PRE_PASS = 1'b0,
     S_PRE_SEQ  = 1'b1;

   localparam
     S_CNT_COUNT = 1'b0,
     S_CNT_RST   = 1'b1;

   /* Count number of outgoing frames, frames from Aurora to
    * NovaCor. Counter is reset as long as corresponding bit in 
    * control register is asserted. 
    * 
    * TODO: Handle overflow of counter. */
   always @(posedge m_axis_aclk) begin
      if (m_axis_aresetn == 1'b0) begin // Global reset
         slv_cntr_out_i <= { {64{1'b0}} };

         state_cnt <= S_CNT_COUNT;
      end else begin
         case (state_cnt)
           S_CNT_RST: begin
              // Wait here until control port is de-asserted
              if (ctrl_rst_cntr_out == 1'b0) begin
                 state_cnt <= S_CNT_COUNT;
              end
           end
           S_CNT_COUNT: begin
              // Increment counter as the last bit is transmitted.
              if (s_axis_tvalid == 1'b1 && s_axis_tlast == 1'b1) begin
                 slv_cntr_out_i <= slv_cntr_out_i + 64'h0000_0000_0000_0001;
              end

              // Reset counter when control port is asserted
              if (ctrl_rst_cntr_out == 1'b1) begin
                 slv_cntr_out_i <= { {64{1'b0}} };

                 state_cnt <= S_CNT_RST;
              end
           end
         endcase
      end
   end

   assign slv_cntr_out = slv_cntr_out_i;


   always @(posedge m_axis_aclk) begin
      if (m_axis_aresetn == 1'b0) begin
         // Sequence number starts at 1 (please 
         // see RTDS NovaCor Aurora user guide)
         seq_ctr <= 16'h00_01;

         // When asserted, frames "pass-through" to Aurora. 
         // We de-assert for one cycle, to append the sequence number.
         passthrough <= 1'b1;

         state_pre <= S_PRE_PASS;
      end else begin
         case (state_pre)
           S_PRE_PASS: begin
              if (s_axis_tvalid == 1'b1 && s_axis_tlast == 1'b1) begin
                 seq_ctr <= seq_ctr + 16'h00_01;

                 passthrough <= 1'b0;
                 tvalid <= 1'b1;

                 state_pre <= S_PRE_SEQ;
              end
           end
           S_PRE_SEQ: begin
              passthrough <= 1'b1;

              state_pre <= S_PRE_PASS;
           end
         endcase
      end
   end

   assign s_axis_tready = passthrough;

   assign m_axis_tvalid = (passthrough == 1'b1) ? s_axis_tvalid : tvalid;
   assign m_axis_tdata = (passthrough == 1'b1) ? s_axis_tdata : {16'h00_00, seq_ctr};
   assign m_axis_tlast = (passthrough == 1'b1) ? 1'b0 : 1'b1;


`ifdef INCLUDE_ILA_AURORA_PRE
   ila_pre ila_pre (
                    .clk    (m_axis_aclk),
                    .probe0 (seq_ctr),
                    .probe1 (passthrough),
                    .probe2 (state_pre)
                    );
`endif

endmodule // pre

`timescale 1ns / 1ps

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
           input wire           m_axis_tready
           );

   reg                          state, passthrough, tvalid;
   reg [15 : 0]                 seq_ctr;

   localparam
     S_PASS = 1'b0,
     S_SEQ  = 1'b1;

   always @(posedge m_axis_aclk) begin
      if (m_axis_aresetn == 1'b0) begin
         // Sequence number starts at 1 (please 
         // see RTDS NovaCor Aurora user guide)
         seq_ctr <= 16'h00_01;

         passthrough <= 1'b1;

         state <= S_PASS;
      end else begin
         case (state)
           S_PASS: begin
              if (s_axis_tvalid == 1'b1 && s_axis_tlast == 1'b1) begin
                 seq_ctr <= seq_ctr + 16'h00_01;

                 passthrough <= 1'b0;
                 tvalid <= 1'b1;

                 state <= S_SEQ;
              end
           end
           S_SEQ: begin
              passthrough <= 1'b1;

              state <= S_PASS;
           end
         endcase
      end
   end

   assign s_axis_tready = passthrough;

   assign m_axis_tvalid = (passthrough == 1'b1) ? s_axis_tvalid : tvalid;
   assign m_axis_tdata = (passthrough == 1'b1) ? s_axis_tdata : {16'h00_00, seq_ctr};
   assign m_axis_tlast = (passthrough == 1'b1) ? 1'b0 : 1'b1;


   ila_pre ila_pre (
                    .clk    (m_axis_aclk),
                    .probe0 (seq_ctr),
                    .probe1 (passthrough),
                    .probe2 (state)
                    );

endmodule // pre

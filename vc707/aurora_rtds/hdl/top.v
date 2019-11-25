`timescale 1ns / 1ps

/* Top-level module for the Aurora interface with RTDS. This module serves 
 * as a demonstration for how to deploy the "augmented-Aurora" module within 
 * other realistic designs. 
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

   wire                user_clk_out, sys_reset_out;

   reg                 st_tvalid, st_tlast;
   reg [1 : 0]         st_state;
   reg [7 : 0]         st_count;
   reg [31 : 0]        st_tdata;

   localparam
     S_ST_IDLE = 2'b00,
     S_ST_0005 = 2'b01,
     S_ST_0003 = 2'b11;


   // Stimulate the slave interface by dispatching a two-word constant 
   // {32'h00_05, 32'h00_03} periodically. The st_count counter determines 
   // periodic stimulation, and it is long enough to discount the 
   // backpressure from the pre module (contained within the augmented-Aurora 
   // module) slave interface.

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

   aurora aurora_0 (
                    .SYS_CLK_P        (SYS_CLK_P),
                    .SYS_CLK_N        (SYS_CLK_N),
                    .GT_REFCLK1_P     (GT_REFCLK1_P),
                    .GT_REFCLK1_N     (GT_REFCLK1_N),
                    .CLK156M_P        (CLK156M_P),
                    .CLK156M_N        (CLK156M_N),
                    .SFP_RX_P         (SFP_RX_P),
                    .SFP_RX_N         (SFP_RX_N),

                    .SFP_TX_P         (SFP_TX_P),
                    .SFP_TX_N         (SFP_TX_N),
                    .SFP_TX_DISABLE_N (SFP_TX_DISABLE_N),

                    // AXI-Stream slave interface
                    .s_axis_tvalid    (st_tvalid),
                    .s_axis_tdata     (st_tdata),
                    .s_axis_tlast     (st_tlast),
                    .s_axis_tready    (),

                    // AXI-Stream master interface
                    .m_axis_tvalid    (),
                    .m_axis_tdata     (),
                    .m_axis_tlast     (),
                    .m_axis_tready    (),

                    .user_clk_out     (user_clk_out),
                    .sys_reset_out    (sys_reset_out)
   );

endmodule // top

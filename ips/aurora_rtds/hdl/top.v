`include "defines.vh"

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

   wire                sys_clk_i1, sys_clk_i2, sys_clk,
                       gt_refclk1,
                       clk156_i, clk156,
                       flop_q0, flop_q1, flop_q2, flop_q3, rst_pulse, rst_d, rst_156,
                       user_clk_out, sys_reset_out;

   reg                 rst_stretch, st_tvalid, st_tlast;
   reg [1 : 0]         st_state;
   reg [7 : 0]         st_count;
   reg [31 : 0]        rst_count, st_tdata;

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


   // Clock Buffering for Aurora
   // --------------------------
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
   // --------------------------

   // Reset Circuit for Aurora
   // ------------------------
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
   // ------------------------

   aurora aurora_0 (
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

                    // Clock interface
                    .init_clk_in      (sys_clk),
                    .gt_refclk1       (gt_refclk1),
                    .drpclk_in        (clk156),
                    .user_clk_out     (user_clk_out),
                    .sys_reset_out    (sys_reset_out),
                    .aur_reset        (rst_156),
                    .gt_reset         (rst_156)
   );

endmodule // top

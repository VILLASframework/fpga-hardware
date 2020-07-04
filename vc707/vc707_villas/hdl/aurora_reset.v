/* @author Hatim Kanchwala <hatim@hatimak.me>
 * @copyright 2019 Hatim Kanchwala
 */

module aurora_reset(
                    input wire  clk156,
                    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *)
                    output wire reset
                    );

   wire                         flop_q0, flop_q1, flop_q2, flop_q3, rst_pulse, rst_d;
   reg                          rst_stretch;
   reg [31 : 0]                 rst_count;

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

                    .Q (reset)
                    );
   // ------------------------

endmodule // aurora_reset

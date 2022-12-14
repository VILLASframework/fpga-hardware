/* @author Steffen Vogel <post@steffenvogel.de>
 * @copyright 2020-2022, Institute for Automation of Complex Power Systems, EONERC
 */

`timescale 1ns / 1ps

module aresetn_cdc(
    (* TYPE = "rst" *)
    input aresetn_in,

    (* TYPE = "rst" *)
    output aresetn,

    (* TYPE = "clk" *)
    input aclk
    );

    (* ASYNC_REG = "true" *)
    reg	s_reset_n;

    (* ASYNC_REG = "true" *)
    reg	r_pipe;
 
    assign aresetn = s_reset_n;
   
    always @(posedge aclk, negedge aresetn_in)
	if (!aresetn_in)
		{ s_reset_n, r_pipe } <= 2'b00;
	else
		{ s_reset_n, r_pipe } <= { r_pipe, 1'b1 };
endmodule

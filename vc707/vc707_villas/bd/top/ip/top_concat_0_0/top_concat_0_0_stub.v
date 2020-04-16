// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 13 12:49:04 2020
// Host        : ubuntu-svg-xilinx.acs-lab.eonerc.rwth-aachen.de running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/svg-hka/VILLASfpga-hardware/vc707/vc707_villas/bd/top/ip/top_concat_0_0/top_concat_0_0_stub.v
// Design      : top_concat_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "concat,Vivado 2018.3" *)
module top_concat_0_0(in3, in2, in1, in0, concated)
/* synthesis syn_black_box black_box_pad_pin="in3,in2,in1,in0,concated[3:0]" */;
  input in3;
  input in2;
  input in1;
  input in0;
  output [3:0]concated;
endmodule

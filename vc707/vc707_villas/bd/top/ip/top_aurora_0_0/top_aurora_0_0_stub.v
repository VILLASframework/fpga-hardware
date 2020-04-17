// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Apr 17 01:42:25 2020
// Host        : ubuntu-svg-xilinx.acs-lab.eonerc.rwth-aachen.de running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/svg-hka/VILLASfpga-hardware/vc707/vc707_villas/bd/top/ip/top_aurora_0_0/top_aurora_0_0_stub.v
// Design      : top_aurora_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "aurora,Vivado 2018.3" *)
module top_aurora_0_0(SFP_RX_P, SFP_RX_N, SFP_TX_P, SFP_TX_N, 
  SFP_TX_DISABLE_N, s_axis_tvalid, s_axis_tdata, s_axis_tlast, s_axis_tready, m_axis_tvalid, 
  m_axis_tdata, m_axis_tlast, m_axis_tready, init_clk_in, gt_refclk1, drpclk_in, user_clk_out, 
  reset, sys_reset_out, S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWADDR, S_AXI_AWPROT, S_AXI_AWVALID, 
  S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WVALID, S_AXI_WREADY, S_AXI_BVALID, 
  S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARPROT, S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, 
  S_AXI_RVALID, S_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="SFP_RX_P,SFP_RX_N,SFP_TX_P,SFP_TX_N,SFP_TX_DISABLE_N,s_axis_tvalid,s_axis_tdata[31:0],s_axis_tlast,s_axis_tready,m_axis_tvalid,m_axis_tdata[31:0],m_axis_tlast,m_axis_tready,init_clk_in,gt_refclk1,drpclk_in,user_clk_out,reset,sys_reset_out,S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[5:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[5:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RVALID,S_AXI_RREADY" */;
  input SFP_RX_P;
  input SFP_RX_N;
  output SFP_TX_P;
  output SFP_TX_N;
  output SFP_TX_DISABLE_N;
  input s_axis_tvalid;
  input [31:0]s_axis_tdata;
  input s_axis_tlast;
  output s_axis_tready;
  output m_axis_tvalid;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  input m_axis_tready;
  input init_clk_in;
  input gt_refclk1;
  input drpclk_in;
  output user_clk_out;
  input reset;
  output sys_reset_out;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [5:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [5:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
endmodule

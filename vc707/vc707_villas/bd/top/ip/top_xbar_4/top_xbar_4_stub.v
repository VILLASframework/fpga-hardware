// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Thu Jun 23 17:39:20 2016
// Host        : E265 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top top_xbar_4 -prefix top_xbar_4_ top_xbar_4_stub.v
// Design      : top_xbar_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_switch_v1_1_8_axis_switch,Vivado 2016.1" *)
module top_xbar_4(aclk, aresetn, s_axis_tvalid, s_axis_tready, s_axis_tdata, s_axis_tkeep, s_axis_tlast, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tkeep, m_axis_tlast, s_axi_ctrl_aclk, s_axi_ctrl_aresetn, s_axi_ctrl_awvalid, s_axi_ctrl_awready, s_axi_ctrl_awaddr, s_axi_ctrl_wvalid, s_axi_ctrl_wready, s_axi_ctrl_wdata, s_axi_ctrl_bvalid, s_axi_ctrl_bready, s_axi_ctrl_bresp, s_axi_ctrl_arvalid, s_axi_ctrl_arready, s_axi_ctrl_araddr, s_axi_ctrl_rvalid, s_axi_ctrl_rready, s_axi_ctrl_rdata, s_axi_ctrl_rresp)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid[6:0],s_axis_tready[6:0],s_axis_tdata[223:0],s_axis_tkeep[27:0],s_axis_tlast[6:0],m_axis_tvalid[6:0],m_axis_tready[6:0],m_axis_tdata[223:0],m_axis_tkeep[27:0],m_axis_tlast[6:0],s_axi_ctrl_aclk,s_axi_ctrl_aresetn,s_axi_ctrl_awvalid,s_axi_ctrl_awready,s_axi_ctrl_awaddr[6:0],s_axi_ctrl_wvalid,s_axi_ctrl_wready,s_axi_ctrl_wdata[31:0],s_axi_ctrl_bvalid,s_axi_ctrl_bready,s_axi_ctrl_bresp[1:0],s_axi_ctrl_arvalid,s_axi_ctrl_arready,s_axi_ctrl_araddr[6:0],s_axi_ctrl_rvalid,s_axi_ctrl_rready,s_axi_ctrl_rdata[31:0],s_axi_ctrl_rresp[1:0]" */;
  input aclk;
  input aresetn;
  input [6:0]s_axis_tvalid;
  output [6:0]s_axis_tready;
  input [223:0]s_axis_tdata;
  input [27:0]s_axis_tkeep;
  input [6:0]s_axis_tlast;
  output [6:0]m_axis_tvalid;
  input [6:0]m_axis_tready;
  output [223:0]m_axis_tdata;
  output [27:0]m_axis_tkeep;
  output [6:0]m_axis_tlast;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
endmodule

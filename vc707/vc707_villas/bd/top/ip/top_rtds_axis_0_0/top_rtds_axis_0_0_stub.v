// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Thu Jun 23 17:43:09 2016
// Host        : E265 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top top_rtds_axis_0_0 -prefix top_rtds_axis_0_0_
//               top_rtds_axis_0_0_stub.v
// Design      : top_rtds_axis_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "rtds_axis,Vivado 2016.1" *)
module top_rtds_axis_0_0(clk100m, aresetn, axi_resetn, CLKBUF_Q0_N, CLKBUF_Q0_P, SFP_RX_N, SFP_RX_P, SFP_TX_N, SFP_TX_P, SFP_LOS, SFP_TX_DISABLE, SYS_CLK, s_axis_tdata, s_axis_tvalid, s_axis_tlast, s_axis_tready, m_axis_tdata, m_axis_tvalid, m_axis_tlast, m_axis_tready, irq_ts, irq_overflow, irq_case, s_axi_ctl_awaddr, s_axi_ctl_awprot, s_axi_ctl_awvalid, s_axi_ctl_awready, s_axi_ctl_wdata, s_axi_ctl_wstrb, s_axi_ctl_wvalid, s_axi_ctl_wready, s_axi_ctl_bvalid, s_axi_ctl_bready, s_axi_ctl_araddr, s_axi_ctl_arprot, s_axi_ctl_arvalid, s_axi_ctl_arready, s_axi_ctl_rdata, s_axi_ctl_rvalid, s_axi_ctl_rready)
/* synthesis syn_black_box black_box_pad_pin="clk100m,aresetn,axi_resetn,CLKBUF_Q0_N,CLKBUF_Q0_P,SFP_RX_N,SFP_RX_P,SFP_TX_N,SFP_TX_P,SFP_LOS,SFP_TX_DISABLE,SYS_CLK,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tlast,s_axis_tready,m_axis_tdata[31:0],m_axis_tvalid,m_axis_tlast,m_axis_tready,irq_ts,irq_overflow,irq_case,s_axi_ctl_awaddr[5:0],s_axi_ctl_awprot[2:0],s_axi_ctl_awvalid,s_axi_ctl_awready,s_axi_ctl_wdata[31:0],s_axi_ctl_wstrb[3:0],s_axi_ctl_wvalid,s_axi_ctl_wready,s_axi_ctl_bvalid,s_axi_ctl_bready,s_axi_ctl_araddr[5:0],s_axi_ctl_arprot[2:0],s_axi_ctl_arvalid,s_axi_ctl_arready,s_axi_ctl_rdata[31:0],s_axi_ctl_rvalid,s_axi_ctl_rready" */;
  output clk100m;
  input aresetn;
  output axi_resetn;
  input CLKBUF_Q0_N;
  input CLKBUF_Q0_P;
  input SFP_RX_N;
  input SFP_RX_P;
  output SFP_TX_N;
  output SFP_TX_P;
  input SFP_LOS;
  output SFP_TX_DISABLE;
  input SYS_CLK;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  input s_axis_tlast;
  output s_axis_tready;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input m_axis_tready;
  output irq_ts;
  output irq_overflow;
  output irq_case;
  input [5:0]s_axi_ctl_awaddr;
  input [2:0]s_axi_ctl_awprot;
  input s_axi_ctl_awvalid;
  output s_axi_ctl_awready;
  input [31:0]s_axi_ctl_wdata;
  input [3:0]s_axi_ctl_wstrb;
  input s_axi_ctl_wvalid;
  output s_axi_ctl_wready;
  output s_axi_ctl_bvalid;
  input s_axi_ctl_bready;
  input [5:0]s_axi_ctl_araddr;
  input [2:0]s_axi_ctl_arprot;
  input s_axi_ctl_arvalid;
  output s_axi_ctl_arready;
  output [31:0]s_axi_ctl_rdata;
  output s_axi_ctl_rvalid;
  input s_axi_ctl_rready;
endmodule

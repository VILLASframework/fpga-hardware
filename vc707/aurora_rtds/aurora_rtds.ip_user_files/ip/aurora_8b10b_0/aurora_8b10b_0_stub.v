// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Wed Oct 16 14:55:50 2019
// Host        : acs-vm-ubuntu-xilinx running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/svg-hka/aurora_rtds/aurora_rtds.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_stub.v
// Design      : aurora_8b10b_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module aurora_8b10b_0(s_axi_tx_tdata, s_axi_tx_tkeep, 
  s_axi_tx_tvalid, s_axi_tx_tlast, s_axi_tx_tready, m_axi_rx_tdata, m_axi_rx_tkeep, 
  m_axi_rx_tvalid, m_axi_rx_tlast, rxp, rxn, txp, txn, gt_refclk1, frame_err, hard_err, soft_err, 
  lane_up, channel_up, user_clk_out, sync_clk_out, gt_reset, reset, sys_reset_out, gt_reset_out, 
  power_down, loopback, tx_lock, init_clk_in, tx_resetdone_out, rx_resetdone_out, 
  link_reset_out, drpclk_in, drpaddr_in, drpen_in, drpdi_in, drprdy_out, drpdo_out, drpwe_in, 
  gt0_qplllock_out, gt0_qpllrefclklost_out, gt_qpllclk_quad1_out, 
  gt_qpllrefclk_quad1_out, pll_not_locked_out)
/* synthesis syn_black_box black_box_pad_pin="s_axi_tx_tdata[0:31],s_axi_tx_tkeep[0:3],s_axi_tx_tvalid,s_axi_tx_tlast,s_axi_tx_tready,m_axi_rx_tdata[0:31],m_axi_rx_tkeep[0:3],m_axi_rx_tvalid,m_axi_rx_tlast,rxp,rxn,txp,txn,gt_refclk1,frame_err,hard_err,soft_err,lane_up,channel_up,user_clk_out,sync_clk_out,gt_reset,reset,sys_reset_out,gt_reset_out,power_down,loopback[2:0],tx_lock,init_clk_in,tx_resetdone_out,rx_resetdone_out,link_reset_out,drpclk_in,drpaddr_in[8:0],drpen_in,drpdi_in[15:0],drprdy_out,drpdo_out[15:0],drpwe_in,gt0_qplllock_out,gt0_qpllrefclklost_out,gt_qpllclk_quad1_out,gt_qpllrefclk_quad1_out,pll_not_locked_out" */;
  input [0:31]s_axi_tx_tdata;
  input [0:3]s_axi_tx_tkeep;
  input s_axi_tx_tvalid;
  input s_axi_tx_tlast;
  output s_axi_tx_tready;
  output [0:31]m_axi_rx_tdata;
  output [0:3]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  input rxp;
  input rxn;
  output txp;
  output txn;
  input gt_refclk1;
  output frame_err;
  output hard_err;
  output soft_err;
  output lane_up;
  output channel_up;
  output user_clk_out;
  output sync_clk_out;
  input gt_reset;
  input reset;
  output sys_reset_out;
  output gt_reset_out;
  input power_down;
  input [2:0]loopback;
  output tx_lock;
  input init_clk_in;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output link_reset_out;
  input drpclk_in;
  input [8:0]drpaddr_in;
  input drpen_in;
  input [15:0]drpdi_in;
  output drprdy_out;
  output [15:0]drpdo_out;
  input drpwe_in;
  output gt0_qplllock_out;
  output gt0_qpllrefclklost_out;
  output gt_qpllclk_quad1_out;
  output gt_qpllrefclk_quad1_out;
  output pll_not_locked_out;
endmodule

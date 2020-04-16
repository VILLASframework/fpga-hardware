//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Thu Apr 16 23:39:31 2020
//Host        : ubuntu-svg-xilinx.acs-lab.eonerc.rwth-aachen.de running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target top_wrapper.bd
//Design      : top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_wrapper
   (clkbuf_clk_n,
    clkbuf_clk_p,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_ref_clk_n,
    pcie_ref_clk_p,
    perstn,
    sfp_rxn,
    sfp_rxp,
    sfp_tx_disable,
    sfp_txn,
    sfp_txp,
    sys_clk_clk_n,
    sys_clk_clk_p,
    user_clk_clk_n,
    user_clk_clk_p);
  input [0:0]clkbuf_clk_n;
  input [0:0]clkbuf_clk_p;
  input [3:0]pcie_mgt_rxn;
  input [3:0]pcie_mgt_rxp;
  output [3:0]pcie_mgt_txn;
  output [3:0]pcie_mgt_txp;
  input [0:0]pcie_ref_clk_n;
  input [0:0]pcie_ref_clk_p;
  input perstn;
  input sfp_rxn;
  input sfp_rxp;
  output sfp_tx_disable;
  output sfp_txn;
  output sfp_txp;
  input sys_clk_clk_n;
  input sys_clk_clk_p;
  input [0:0]user_clk_clk_n;
  input [0:0]user_clk_clk_p;

  wire [0:0]clkbuf_clk_n;
  wire [0:0]clkbuf_clk_p;
  wire [3:0]pcie_mgt_rxn;
  wire [3:0]pcie_mgt_rxp;
  wire [3:0]pcie_mgt_txn;
  wire [3:0]pcie_mgt_txp;
  wire [0:0]pcie_ref_clk_n;
  wire [0:0]pcie_ref_clk_p;
  wire perstn;
  wire sfp_rxn;
  wire sfp_rxp;
  wire sfp_tx_disable;
  wire sfp_txn;
  wire sfp_txp;
  wire sys_clk_clk_n;
  wire sys_clk_clk_p;
  wire [0:0]user_clk_clk_n;
  wire [0:0]user_clk_clk_p;

  top top_i
       (.clkbuf_clk_n(clkbuf_clk_n),
        .clkbuf_clk_p(clkbuf_clk_p),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .pcie_ref_clk_n(pcie_ref_clk_n),
        .pcie_ref_clk_p(pcie_ref_clk_p),
        .perstn(perstn),
        .sfp_rxn(sfp_rxn),
        .sfp_rxp(sfp_rxp),
        .sfp_tx_disable(sfp_tx_disable),
        .sfp_txn(sfp_txn),
        .sfp_txp(sfp_txp),
        .sys_clk_clk_n(sys_clk_clk_n),
        .sys_clk_clk_p(sys_clk_clk_p),
        .user_clk_clk_n(user_clk_clk_n),
        .user_clk_clk_p(user_clk_clk_p));
endmodule

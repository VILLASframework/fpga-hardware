--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4.1 (win64) Build 1431336 Fri Dec 11 14:52:45 MST 2015
--Date        : Thu Apr 21 10:55:07 2016
--Host        : E265 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target pcie_wrapper.bd
--Design      : pcie_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pcie_wrapper is
  port (
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    PCIE_MGT_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIE_MGT_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIE_MGT_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIE_MGT_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIE_REFCLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    PCIE_REFCLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTL_IRQ_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CTL_IRQ_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CTL_IRQ_arready : out STD_LOGIC;
    S_AXI_CTL_IRQ_arvalid : in STD_LOGIC;
    S_AXI_CTL_IRQ_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CTL_IRQ_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CTL_IRQ_awready : out STD_LOGIC;
    S_AXI_CTL_IRQ_awvalid : in STD_LOGIC;
    S_AXI_CTL_IRQ_bready : in STD_LOGIC;
    S_AXI_CTL_IRQ_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTL_IRQ_bvalid : out STD_LOGIC;
    S_AXI_CTL_IRQ_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_IRQ_rready : in STD_LOGIC;
    S_AXI_CTL_IRQ_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTL_IRQ_rvalid : out STD_LOGIC;
    S_AXI_CTL_IRQ_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_IRQ_wready : out STD_LOGIC;
    S_AXI_CTL_IRQ_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CTL_IRQ_wvalid : in STD_LOGIC;
    S_AXI_CTL_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_arready : out STD_LOGIC;
    S_AXI_CTL_arvalid : in STD_LOGIC;
    S_AXI_CTL_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_awready : out STD_LOGIC;
    S_AXI_CTL_awvalid : in STD_LOGIC;
    S_AXI_CTL_bready : in STD_LOGIC;
    S_AXI_CTL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTL_bvalid : out STD_LOGIC;
    S_AXI_CTL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_rready : in STD_LOGIC;
    S_AXI_CTL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTL_rvalid : out STD_LOGIC;
    S_AXI_CTL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_wready : out STD_LOGIC;
    S_AXI_CTL_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CTL_wvalid : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    axi_aclk_out : out STD_LOGIC;
    axi_ctl_aclk_out : out STD_LOGIC;
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    msi_irq : in STD_LOGIC_VECTOR ( 7 downto 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    perstn : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end pcie_wrapper;

architecture STRUCTURE of pcie_wrapper is
  component pcie is
  port (
    PCIE_REFCLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    PCIE_REFCLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTL_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_arready : out STD_LOGIC;
    S_AXI_CTL_arvalid : in STD_LOGIC;
    S_AXI_CTL_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_awready : out STD_LOGIC;
    S_AXI_CTL_awvalid : in STD_LOGIC;
    S_AXI_CTL_bready : in STD_LOGIC;
    S_AXI_CTL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTL_bvalid : out STD_LOGIC;
    S_AXI_CTL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_rready : in STD_LOGIC;
    S_AXI_CTL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTL_rvalid : out STD_LOGIC;
    S_AXI_CTL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_wready : out STD_LOGIC;
    S_AXI_CTL_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CTL_wvalid : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    PCIE_MGT_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIE_MGT_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIE_MGT_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PCIE_MGT_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CTL_IRQ_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CTL_IRQ_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CTL_IRQ_awvalid : in STD_LOGIC;
    S_AXI_CTL_IRQ_awready : out STD_LOGIC;
    S_AXI_CTL_IRQ_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_IRQ_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CTL_IRQ_wvalid : in STD_LOGIC;
    S_AXI_CTL_IRQ_wready : out STD_LOGIC;
    S_AXI_CTL_IRQ_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTL_IRQ_bvalid : out STD_LOGIC;
    S_AXI_CTL_IRQ_bready : in STD_LOGIC;
    S_AXI_CTL_IRQ_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CTL_IRQ_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CTL_IRQ_arvalid : in STD_LOGIC;
    S_AXI_CTL_IRQ_arready : out STD_LOGIC;
    S_AXI_CTL_IRQ_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_IRQ_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTL_IRQ_rvalid : out STD_LOGIC;
    S_AXI_CTL_IRQ_rready : in STD_LOGIC;
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    perstn : in STD_LOGIC;
    axi_aclk_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    msi_irq : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_ctl_aclk_out : out STD_LOGIC
  );
  end component pcie;
begin
pcie_i: component pcie
     port map (
      M_AXI_araddr(31 downto 0) => M_AXI_araddr(31 downto 0),
      M_AXI_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      M_AXI_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      M_AXI_arlen(7 downto 0) => M_AXI_arlen(7 downto 0),
      M_AXI_arlock => M_AXI_arlock,
      M_AXI_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      M_AXI_arready => M_AXI_arready,
      M_AXI_arsize(2 downto 0) => M_AXI_arsize(2 downto 0),
      M_AXI_arvalid => M_AXI_arvalid,
      M_AXI_awaddr(31 downto 0) => M_AXI_awaddr(31 downto 0),
      M_AXI_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      M_AXI_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      M_AXI_awlen(7 downto 0) => M_AXI_awlen(7 downto 0),
      M_AXI_awlock => M_AXI_awlock,
      M_AXI_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      M_AXI_awready => M_AXI_awready,
      M_AXI_awsize(2 downto 0) => M_AXI_awsize(2 downto 0),
      M_AXI_awvalid => M_AXI_awvalid,
      M_AXI_bready => M_AXI_bready,
      M_AXI_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      M_AXI_bvalid => M_AXI_bvalid,
      M_AXI_rdata(127 downto 0) => M_AXI_rdata(127 downto 0),
      M_AXI_rlast => M_AXI_rlast,
      M_AXI_rready => M_AXI_rready,
      M_AXI_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      M_AXI_rvalid => M_AXI_rvalid,
      M_AXI_wdata(127 downto 0) => M_AXI_wdata(127 downto 0),
      M_AXI_wlast => M_AXI_wlast,
      M_AXI_wready => M_AXI_wready,
      M_AXI_wstrb(15 downto 0) => M_AXI_wstrb(15 downto 0),
      M_AXI_wvalid => M_AXI_wvalid,
      PCIE_MGT_rxn(3 downto 0) => PCIE_MGT_rxn(3 downto 0),
      PCIE_MGT_rxp(3 downto 0) => PCIE_MGT_rxp(3 downto 0),
      PCIE_MGT_txn(3 downto 0) => PCIE_MGT_txn(3 downto 0),
      PCIE_MGT_txp(3 downto 0) => PCIE_MGT_txp(3 downto 0),
      PCIE_REFCLK_clk_n(0) => PCIE_REFCLK_clk_n(0),
      PCIE_REFCLK_clk_p(0) => PCIE_REFCLK_clk_p(0),
      S_AXI_CTL_IRQ_araddr(3 downto 0) => S_AXI_CTL_IRQ_araddr(3 downto 0),
      S_AXI_CTL_IRQ_arprot(2 downto 0) => S_AXI_CTL_IRQ_arprot(2 downto 0),
      S_AXI_CTL_IRQ_arready => S_AXI_CTL_IRQ_arready,
      S_AXI_CTL_IRQ_arvalid => S_AXI_CTL_IRQ_arvalid,
      S_AXI_CTL_IRQ_awaddr(3 downto 0) => S_AXI_CTL_IRQ_awaddr(3 downto 0),
      S_AXI_CTL_IRQ_awprot(2 downto 0) => S_AXI_CTL_IRQ_awprot(2 downto 0),
      S_AXI_CTL_IRQ_awready => S_AXI_CTL_IRQ_awready,
      S_AXI_CTL_IRQ_awvalid => S_AXI_CTL_IRQ_awvalid,
      S_AXI_CTL_IRQ_bready => S_AXI_CTL_IRQ_bready,
      S_AXI_CTL_IRQ_bresp(1 downto 0) => S_AXI_CTL_IRQ_bresp(1 downto 0),
      S_AXI_CTL_IRQ_bvalid => S_AXI_CTL_IRQ_bvalid,
      S_AXI_CTL_IRQ_rdata(31 downto 0) => S_AXI_CTL_IRQ_rdata(31 downto 0),
      S_AXI_CTL_IRQ_rready => S_AXI_CTL_IRQ_rready,
      S_AXI_CTL_IRQ_rresp(1 downto 0) => S_AXI_CTL_IRQ_rresp(1 downto 0),
      S_AXI_CTL_IRQ_rvalid => S_AXI_CTL_IRQ_rvalid,
      S_AXI_CTL_IRQ_wdata(31 downto 0) => S_AXI_CTL_IRQ_wdata(31 downto 0),
      S_AXI_CTL_IRQ_wready => S_AXI_CTL_IRQ_wready,
      S_AXI_CTL_IRQ_wstrb(3 downto 0) => S_AXI_CTL_IRQ_wstrb(3 downto 0),
      S_AXI_CTL_IRQ_wvalid => S_AXI_CTL_IRQ_wvalid,
      S_AXI_CTL_araddr(31 downto 0) => S_AXI_CTL_araddr(31 downto 0),
      S_AXI_CTL_arready => S_AXI_CTL_arready,
      S_AXI_CTL_arvalid => S_AXI_CTL_arvalid,
      S_AXI_CTL_awaddr(31 downto 0) => S_AXI_CTL_awaddr(31 downto 0),
      S_AXI_CTL_awready => S_AXI_CTL_awready,
      S_AXI_CTL_awvalid => S_AXI_CTL_awvalid,
      S_AXI_CTL_bready => S_AXI_CTL_bready,
      S_AXI_CTL_bresp(1 downto 0) => S_AXI_CTL_bresp(1 downto 0),
      S_AXI_CTL_bvalid => S_AXI_CTL_bvalid,
      S_AXI_CTL_rdata(31 downto 0) => S_AXI_CTL_rdata(31 downto 0),
      S_AXI_CTL_rready => S_AXI_CTL_rready,
      S_AXI_CTL_rresp(1 downto 0) => S_AXI_CTL_rresp(1 downto 0),
      S_AXI_CTL_rvalid => S_AXI_CTL_rvalid,
      S_AXI_CTL_wdata(31 downto 0) => S_AXI_CTL_wdata(31 downto 0),
      S_AXI_CTL_wready => S_AXI_CTL_wready,
      S_AXI_CTL_wstrb(3 downto 0) => S_AXI_CTL_wstrb(3 downto 0),
      S_AXI_CTL_wvalid => S_AXI_CTL_wvalid,
      S_AXI_araddr(31 downto 0) => S_AXI_araddr(31 downto 0),
      S_AXI_arburst(1 downto 0) => S_AXI_arburst(1 downto 0),
      S_AXI_arid(1 downto 0) => S_AXI_arid(1 downto 0),
      S_AXI_arlen(7 downto 0) => S_AXI_arlen(7 downto 0),
      S_AXI_arready => S_AXI_arready,
      S_AXI_arregion(3 downto 0) => S_AXI_arregion(3 downto 0),
      S_AXI_arsize(2 downto 0) => S_AXI_arsize(2 downto 0),
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr(31 downto 0) => S_AXI_awaddr(31 downto 0),
      S_AXI_awburst(1 downto 0) => S_AXI_awburst(1 downto 0),
      S_AXI_awid(1 downto 0) => S_AXI_awid(1 downto 0),
      S_AXI_awlen(7 downto 0) => S_AXI_awlen(7 downto 0),
      S_AXI_awready => S_AXI_awready,
      S_AXI_awregion(3 downto 0) => S_AXI_awregion(3 downto 0),
      S_AXI_awsize(2 downto 0) => S_AXI_awsize(2 downto 0),
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_bid(1 downto 0) => S_AXI_bid(1 downto 0),
      S_AXI_bready => S_AXI_bready,
      S_AXI_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_rdata(127 downto 0) => S_AXI_rdata(127 downto 0),
      S_AXI_rid(1 downto 0) => S_AXI_rid(1 downto 0),
      S_AXI_rlast => S_AXI_rlast,
      S_AXI_rready => S_AXI_rready,
      S_AXI_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      S_AXI_rvalid => S_AXI_rvalid,
      S_AXI_wdata(127 downto 0) => S_AXI_wdata(127 downto 0),
      S_AXI_wlast => S_AXI_wlast,
      S_AXI_wready => S_AXI_wready,
      S_AXI_wstrb(15 downto 0) => S_AXI_wstrb(15 downto 0),
      S_AXI_wvalid => S_AXI_wvalid,
      axi_aclk_out => axi_aclk_out,
      axi_ctl_aclk_out => axi_ctl_aclk_out,
      interconnect_aresetn(0) => interconnect_aresetn(0),
      msi_irq(7 downto 0) => msi_irq(7 downto 0),
      peripheral_aresetn(0) => peripheral_aresetn(0),
      perstn => perstn,
      reset => reset
    );
end STRUCTURE;

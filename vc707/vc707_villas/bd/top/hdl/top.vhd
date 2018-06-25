--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
--Date        : Mon Jul 04 13:22:22 2016
--Host        : E265 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target top.bd
--Design      : top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_158FRUC is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_158FRUC;

architecture STRUCTURE of m00_couplers_imp_158FRUC is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal m00_couplers_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_RLAST : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal m00_couplers_to_m00_couplers_WLAST : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m00_couplers_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arid(2 downto 0) <= m00_couplers_to_m00_couplers_ARID(2 downto 0);
  M_AXI_arlen(7 downto 0) <= m00_couplers_to_m00_couplers_ARLEN(7 downto 0);
  M_AXI_arregion(3 downto 0) <= m00_couplers_to_m00_couplers_ARREGION(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m00_couplers_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m00_couplers_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awid(2 downto 0) <= m00_couplers_to_m00_couplers_AWID(2 downto 0);
  M_AXI_awlen(7 downto 0) <= m00_couplers_to_m00_couplers_AWLEN(7 downto 0);
  M_AXI_awregion(3 downto 0) <= m00_couplers_to_m00_couplers_AWREGION(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m00_couplers_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(127 downto 0) <= m00_couplers_to_m00_couplers_WDATA(127 downto 0);
  M_AXI_wlast <= m00_couplers_to_m00_couplers_WLAST;
  M_AXI_wstrb(15 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(15 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bid(2 downto 0) <= m00_couplers_to_m00_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(127 downto 0) <= m00_couplers_to_m00_couplers_RDATA(127 downto 0);
  S_AXI_rid(2 downto 0) <= m00_couplers_to_m00_couplers_RID(2 downto 0);
  S_AXI_rlast <= m00_couplers_to_m00_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_m00_couplers_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m00_couplers_to_m00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_m00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_m00_couplers_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m00_couplers_to_m00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_m00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(127 downto 0) <= M_AXI_rdata(127 downto 0);
  m00_couplers_to_m00_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  m00_couplers_to_m00_couplers_RLAST <= M_AXI_rlast;
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  m00_couplers_to_m00_couplers_WLAST <= S_AXI_wlast;
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1REU45J is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1REU45J;

architecture STRUCTURE of m00_couplers_imp_1REU45J is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_GDIZOZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_GDIZOZ;

architecture STRUCTURE of m00_couplers_imp_GDIZOZ is
  component top_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component top_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_L6Q0P4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_L6Q0P4;

architecture STRUCTURE of m00_couplers_imp_L6Q0P4 is
  component top_auto_cc_3 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_cc_3;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_auto_cc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_cc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(31 downto 0) <= auto_cc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_cc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_cc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_cc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_cc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_cc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m00_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_cc_WREADY;
  auto_cc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component top_auto_cc_3
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(31 downto 0) => auto_cc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => NLW_auto_cc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_cc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_cc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_cc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_cc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_cc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_cc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_cc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_cc_ARADDR(31 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m00_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m00_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_cc_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m00_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m00_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m00_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m00_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m00_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_YQX1N2 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m00_couplers_imp_YQX1N2;

architecture STRUCTURE of m00_couplers_imp_YQX1N2 is
  component top_auto_cc_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component top_auto_cc_0;
  component top_auto_ss_k_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    sparse_tkeep_removed : out STD_LOGIC
  );
  end component top_auto_ss_k_0;
  signal M_AXIS_ACLK_1 : STD_LOGIC;
  signal M_AXIS_ARESETN_1 : STD_LOGIC;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_auto_ss_k_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_auto_ss_k_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_auto_ss_k_TLAST : STD_LOGIC;
  signal auto_cc_to_auto_ss_k_TREADY : STD_LOGIC;
  signal auto_cc_to_auto_ss_k_TVALID : STD_LOGIC;
  signal auto_ss_k_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_k_to_m00_couplers_TLAST : STD_LOGIC;
  signal auto_ss_k_to_m00_couplers_TREADY : STD_LOGIC;
  signal auto_ss_k_to_m00_couplers_TVALID : STD_LOGIC;
  signal m00_couplers_to_auto_cc_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_cc_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_cc_TLAST : STD_LOGIC;
  signal m00_couplers_to_auto_cc_TREADY : STD_LOGIC;
  signal m00_couplers_to_auto_cc_TVALID : STD_LOGIC;
  signal NLW_auto_ss_k_sparse_tkeep_removed_UNCONNECTED : STD_LOGIC;
begin
  M_AXIS_ACLK_1 <= M_AXIS_ACLK;
  M_AXIS_ARESETN_1 <= M_AXIS_ARESETN;
  M_AXIS_tdata(31 downto 0) <= auto_ss_k_to_m00_couplers_TDATA(31 downto 0);
  M_AXIS_tlast <= auto_ss_k_to_m00_couplers_TLAST;
  M_AXIS_tvalid <= auto_ss_k_to_m00_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1(0) <= S_AXIS_ARESETN(0);
  S_AXIS_tready <= m00_couplers_to_auto_cc_TREADY;
  auto_ss_k_to_m00_couplers_TREADY <= M_AXIS_tready;
  m00_couplers_to_auto_cc_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  m00_couplers_to_auto_cc_TKEEP(3 downto 0) <= S_AXIS_tkeep(3 downto 0);
  m00_couplers_to_auto_cc_TLAST <= S_AXIS_tlast;
  m00_couplers_to_auto_cc_TVALID <= S_AXIS_tvalid;
auto_cc: component top_auto_cc_0
     port map (
      m_axis_aclk => M_AXIS_ACLK_1,
      m_axis_aresetn => M_AXIS_ARESETN_1,
      m_axis_tdata(31 downto 0) => auto_cc_to_auto_ss_k_TDATA(31 downto 0),
      m_axis_tkeep(3 downto 0) => auto_cc_to_auto_ss_k_TKEEP(3 downto 0),
      m_axis_tlast => auto_cc_to_auto_ss_k_TLAST,
      m_axis_tready => auto_cc_to_auto_ss_k_TREADY,
      m_axis_tvalid => auto_cc_to_auto_ss_k_TVALID,
      s_axis_aclk => S_AXIS_ACLK_1,
      s_axis_aresetn => S_AXIS_ARESETN_1(0),
      s_axis_tdata(31 downto 0) => m00_couplers_to_auto_cc_TDATA(31 downto 0),
      s_axis_tkeep(3 downto 0) => m00_couplers_to_auto_cc_TKEEP(3 downto 0),
      s_axis_tlast => m00_couplers_to_auto_cc_TLAST,
      s_axis_tready => m00_couplers_to_auto_cc_TREADY,
      s_axis_tvalid => m00_couplers_to_auto_cc_TVALID
    );
auto_ss_k: component top_auto_ss_k_0
     port map (
      aclk => M_AXIS_ACLK_1,
      aresetn => M_AXIS_ARESETN_1,
      m_axis_tdata(31 downto 0) => auto_ss_k_to_m00_couplers_TDATA(31 downto 0),
      m_axis_tlast => auto_ss_k_to_m00_couplers_TLAST,
      m_axis_tready => auto_ss_k_to_m00_couplers_TREADY,
      m_axis_tvalid => auto_ss_k_to_m00_couplers_TVALID,
      s_axis_tdata(31 downto 0) => auto_cc_to_auto_ss_k_TDATA(31 downto 0),
      s_axis_tkeep(3 downto 0) => auto_cc_to_auto_ss_k_TKEEP(3 downto 0),
      s_axis_tlast => auto_cc_to_auto_ss_k_TLAST,
      s_axis_tready => auto_cc_to_auto_ss_k_TREADY,
      s_axis_tvalid => auto_cc_to_auto_ss_k_TVALID,
      sparse_tkeep_removed => NLW_auto_ss_k_sparse_tkeep_removed_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_14GD7YL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_14GD7YL;

architecture STRUCTURE of m01_couplers_imp_14GD7YL is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_18KYNT7 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m01_couplers_imp_18KYNT7;

architecture STRUCTURE of m01_couplers_imp_18KYNT7 is
  signal m01_couplers_to_m01_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_TLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_TREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= m01_couplers_to_m01_couplers_TDATA(31 downto 0);
  M_AXIS_tkeep(3 downto 0) <= m01_couplers_to_m01_couplers_TKEEP(3 downto 0);
  M_AXIS_tlast <= m01_couplers_to_m01_couplers_TLAST;
  M_AXIS_tvalid <= m01_couplers_to_m01_couplers_TVALID;
  S_AXIS_tready <= m01_couplers_to_m01_couplers_TREADY;
  m01_couplers_to_m01_couplers_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  m01_couplers_to_m01_couplers_TKEEP(3 downto 0) <= S_AXIS_tkeep(3 downto 0);
  m01_couplers_to_m01_couplers_TLAST <= S_AXIS_tlast;
  m01_couplers_to_m01_couplers_TREADY <= M_AXIS_tready;
  m01_couplers_to_m01_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1RZ3XKM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_1RZ3XKM;

architecture STRUCTURE of m01_couplers_imp_1RZ3XKM is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARBURST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARCACHE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARLEN : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARQOS : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARREGION : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARSIZE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWBURST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWCACHE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWLEN : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWQOS : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWREGION : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWSIZE : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m01_couplers_to_m01_couplers_ARADDR;
  M_AXI_arburst <= m01_couplers_to_m01_couplers_ARBURST;
  M_AXI_arcache <= m01_couplers_to_m01_couplers_ARCACHE;
  M_AXI_arlen <= m01_couplers_to_m01_couplers_ARLEN;
  M_AXI_arlock <= m01_couplers_to_m01_couplers_ARLOCK;
  M_AXI_arprot <= m01_couplers_to_m01_couplers_ARPROT;
  M_AXI_arqos <= m01_couplers_to_m01_couplers_ARQOS;
  M_AXI_arregion <= m01_couplers_to_m01_couplers_ARREGION;
  M_AXI_arsize <= m01_couplers_to_m01_couplers_ARSIZE;
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr <= m01_couplers_to_m01_couplers_AWADDR;
  M_AXI_awburst <= m01_couplers_to_m01_couplers_AWBURST;
  M_AXI_awcache <= m01_couplers_to_m01_couplers_AWCACHE;
  M_AXI_awlen <= m01_couplers_to_m01_couplers_AWLEN;
  M_AXI_awlock <= m01_couplers_to_m01_couplers_AWLOCK;
  M_AXI_awprot <= m01_couplers_to_m01_couplers_AWPROT;
  M_AXI_awqos <= m01_couplers_to_m01_couplers_AWQOS;
  M_AXI_awregion <= m01_couplers_to_m01_couplers_AWREGION;
  M_AXI_awsize <= m01_couplers_to_m01_couplers_AWSIZE;
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata <= m01_couplers_to_m01_couplers_WDATA;
  M_AXI_wlast <= m01_couplers_to_m01_couplers_WLAST;
  M_AXI_wstrb <= m01_couplers_to_m01_couplers_WSTRB;
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp <= m01_couplers_to_m01_couplers_BRESP;
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata <= m01_couplers_to_m01_couplers_RDATA;
  S_AXI_rlast <= m01_couplers_to_m01_couplers_RLAST;
  S_AXI_rresp <= m01_couplers_to_m01_couplers_RRESP;
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR <= S_AXI_araddr;
  m01_couplers_to_m01_couplers_ARBURST <= S_AXI_arburst;
  m01_couplers_to_m01_couplers_ARCACHE <= S_AXI_arcache;
  m01_couplers_to_m01_couplers_ARLEN <= S_AXI_arlen;
  m01_couplers_to_m01_couplers_ARLOCK <= S_AXI_arlock;
  m01_couplers_to_m01_couplers_ARPROT <= S_AXI_arprot;
  m01_couplers_to_m01_couplers_ARQOS <= S_AXI_arqos;
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARREGION <= S_AXI_arregion;
  m01_couplers_to_m01_couplers_ARSIZE <= S_AXI_arsize;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR <= S_AXI_awaddr;
  m01_couplers_to_m01_couplers_AWBURST <= S_AXI_awburst;
  m01_couplers_to_m01_couplers_AWCACHE <= S_AXI_awcache;
  m01_couplers_to_m01_couplers_AWLEN <= S_AXI_awlen;
  m01_couplers_to_m01_couplers_AWLOCK <= S_AXI_awlock;
  m01_couplers_to_m01_couplers_AWPROT <= S_AXI_awprot;
  m01_couplers_to_m01_couplers_AWQOS <= S_AXI_awqos;
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWREGION <= S_AXI_awregion;
  m01_couplers_to_m01_couplers_AWSIZE <= S_AXI_awsize;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP <= M_AXI_bresp;
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA <= M_AXI_rdata;
  m01_couplers_to_m01_couplers_RLAST <= M_AXI_rlast;
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP <= M_AXI_rresp;
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA <= S_AXI_wdata;
  m01_couplers_to_m01_couplers_WLAST <= S_AXI_wlast;
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB <= S_AXI_wstrb;
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_FUGJYA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_FUGJYA;

architecture STRUCTURE of m01_couplers_imp_FUGJYA is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_10UV9HO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_10UV9HO;

architecture STRUCTURE of m02_couplers_imp_10UV9HO is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_85P2H1 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m02_couplers_imp_85P2H1;

architecture STRUCTURE of m02_couplers_imp_85P2H1 is
  component top_auto_ss_k_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    sparse_tkeep_removed : out STD_LOGIC
  );
  end component top_auto_ss_k_1;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_k_to_m02_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_k_to_m02_couplers_TLAST : STD_LOGIC;
  signal auto_ss_k_to_m02_couplers_TREADY : STD_LOGIC;
  signal auto_ss_k_to_m02_couplers_TVALID : STD_LOGIC;
  signal m02_couplers_to_auto_ss_k_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_ss_k_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_ss_k_TLAST : STD_LOGIC;
  signal m02_couplers_to_auto_ss_k_TREADY : STD_LOGIC;
  signal m02_couplers_to_auto_ss_k_TVALID : STD_LOGIC;
  signal NLW_auto_ss_k_sparse_tkeep_removed_UNCONNECTED : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= auto_ss_k_to_m02_couplers_TDATA(31 downto 0);
  M_AXIS_tlast <= auto_ss_k_to_m02_couplers_TLAST;
  M_AXIS_tvalid <= auto_ss_k_to_m02_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1(0) <= S_AXIS_ARESETN(0);
  S_AXIS_tready <= m02_couplers_to_auto_ss_k_TREADY;
  auto_ss_k_to_m02_couplers_TREADY <= M_AXIS_tready;
  m02_couplers_to_auto_ss_k_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  m02_couplers_to_auto_ss_k_TKEEP(3 downto 0) <= S_AXIS_tkeep(3 downto 0);
  m02_couplers_to_auto_ss_k_TLAST <= S_AXIS_tlast;
  m02_couplers_to_auto_ss_k_TVALID <= S_AXIS_tvalid;
auto_ss_k: component top_auto_ss_k_1
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1(0),
      m_axis_tdata(31 downto 0) => auto_ss_k_to_m02_couplers_TDATA(31 downto 0),
      m_axis_tlast => auto_ss_k_to_m02_couplers_TLAST,
      m_axis_tready => auto_ss_k_to_m02_couplers_TREADY,
      m_axis_tvalid => auto_ss_k_to_m02_couplers_TVALID,
      s_axis_tdata(31 downto 0) => m02_couplers_to_auto_ss_k_TDATA(31 downto 0),
      s_axis_tkeep(3 downto 0) => m02_couplers_to_auto_ss_k_TKEEP(3 downto 0),
      s_axis_tlast => m02_couplers_to_auto_ss_k_TLAST,
      s_axis_tready => m02_couplers_to_auto_ss_k_TREADY,
      s_axis_tvalid => m02_couplers_to_auto_ss_k_TVALID,
      sparse_tkeep_removed => NLW_auto_ss_k_sparse_tkeep_removed_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_C7SLZ7 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_C7SLZ7;

architecture STRUCTURE of m02_couplers_imp_C7SLZ7 is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_PCF1X4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_PCF1X4;

architecture STRUCTURE of m02_couplers_imp_PCF1X4 is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m02_couplers_to_m02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m02_couplers_to_m02_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m02_couplers_to_m02_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m02_couplers_to_m02_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m02_couplers_to_m02_couplers_ARQOS(3 downto 0);
  M_AXI_arregion(3 downto 0) <= m02_couplers_to_m02_couplers_ARREGION(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m02_couplers_to_m02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m02_couplers_to_m02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m02_couplers_to_m02_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m02_couplers_to_m02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m02_couplers_to_m02_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m02_couplers_to_m02_couplers_AWQOS(3 downto 0);
  M_AXI_awregion(3 downto 0) <= m02_couplers_to_m02_couplers_AWREGION(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m02_couplers_to_m02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= m02_couplers_to_m02_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rlast(0) <= m02_couplers_to_m02_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m02_couplers_to_m02_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m02_couplers_to_m02_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m02_couplers_to_m02_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m02_couplers_to_m02_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m02_couplers_to_m02_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m02_couplers_to_m02_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m02_couplers_to_m02_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m02_couplers_to_m02_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RLAST(0) <= M_AXI_rlast(0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WLAST(0) <= S_AXI_wlast(0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_11EJTOD is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_11EJTOD;

architecture STRUCTURE of m03_couplers_imp_11EJTOD is
  component top_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_pc_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m03_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m03_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m03_couplers_WVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= auto_pc_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= auto_pc_to_m03_couplers_AWVALID;
  M_AXI_bready(0) <= auto_pc_to_m03_couplers_BREADY;
  M_AXI_rready(0) <= auto_pc_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= auto_pc_to_m03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m03_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m03_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m03_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m03_couplers_to_auto_pc_WREADY;
  auto_pc_to_m03_couplers_ARREADY(0) <= M_AXI_arready(0);
  auto_pc_to_m03_couplers_AWREADY(0) <= M_AXI_awready(0);
  auto_pc_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m03_couplers_BVALID(0) <= M_AXI_bvalid(0);
  auto_pc_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m03_couplers_RVALID(0) <= M_AXI_rvalid(0);
  auto_pc_to_m03_couplers_WREADY(0) <= M_AXI_wready(0);
  m03_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m03_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m03_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m03_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m03_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m03_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m03_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m03_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m03_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m03_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m03_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m03_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m03_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m03_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m03_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m03_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m03_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m03_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component top_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_m03_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m03_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m03_couplers_ARREADY(0),
      m_axi_arvalid => auto_pc_to_m03_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m03_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m03_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m03_couplers_AWREADY(0),
      m_axi_awvalid => auto_pc_to_m03_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m03_couplers_BVALID(0),
      m_axi_rdata(31 downto 0) => auto_pc_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m03_couplers_RVALID(0),
      m_axi_wdata(31 downto 0) => auto_pc_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m03_couplers_WREADY(0),
      m_axi_wstrb(3 downto 0) => auto_pc_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m03_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m03_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m03_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m03_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m03_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m03_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m03_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m03_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m03_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m03_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m03_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m03_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m03_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m03_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m03_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m03_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m03_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m03_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m03_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m03_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m03_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m03_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m03_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m03_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m03_couplers_to_auto_pc_RLAST,
      s_axi_rready => m03_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m03_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m03_couplers_to_auto_pc_WLAST,
      s_axi_wready => m03_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m03_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m03_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1HJ9N40 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m03_couplers_imp_1HJ9N40;

architecture STRUCTURE of m03_couplers_imp_1HJ9N40 is
  signal m03_couplers_to_m03_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_TLAST : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_TREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= m03_couplers_to_m03_couplers_TDATA(31 downto 0);
  M_AXIS_tkeep(3 downto 0) <= m03_couplers_to_m03_couplers_TKEEP(3 downto 0);
  M_AXIS_tlast <= m03_couplers_to_m03_couplers_TLAST;
  M_AXIS_tvalid <= m03_couplers_to_m03_couplers_TVALID;
  S_AXIS_tready <= m03_couplers_to_m03_couplers_TREADY;
  m03_couplers_to_m03_couplers_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  m03_couplers_to_m03_couplers_TKEEP(3 downto 0) <= S_AXIS_tkeep(3 downto 0);
  m03_couplers_to_m03_couplers_TLAST <= S_AXIS_tlast;
  m03_couplers_to_m03_couplers_TREADY <= M_AXIS_tready;
  m03_couplers_to_m03_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_ORJ421 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_ORJ421;

architecture STRUCTURE of m03_couplers_imp_ORJ421 is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_1GKYXI0 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m04_couplers_imp_1GKYXI0;

architecture STRUCTURE of m04_couplers_imp_1GKYXI0 is
  signal m04_couplers_to_m04_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_TLAST : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_TREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= m04_couplers_to_m04_couplers_TDATA(31 downto 0);
  M_AXIS_tkeep(3 downto 0) <= m04_couplers_to_m04_couplers_TKEEP(3 downto 0);
  M_AXIS_tlast <= m04_couplers_to_m04_couplers_TLAST;
  M_AXIS_tvalid <= m04_couplers_to_m04_couplers_TVALID;
  S_AXIS_tready <= m04_couplers_to_m04_couplers_TREADY;
  m04_couplers_to_m04_couplers_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  m04_couplers_to_m04_couplers_TKEEP(3 downto 0) <= S_AXIS_tkeep(3 downto 0);
  m04_couplers_to_m04_couplers_TLAST <= S_AXIS_tlast;
  m04_couplers_to_m04_couplers_TREADY <= M_AXIS_tready;
  m04_couplers_to_m04_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_1XUKEJP is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_1XUKEJP;

architecture STRUCTURE of m04_couplers_imp_1XUKEJP is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m04_couplers_to_m04_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m04_couplers_to_m04_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m04_couplers_to_m04_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= m04_couplers_to_m04_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= m04_couplers_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m04_couplers_to_m04_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m04_couplers_to_m04_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m04_couplers_to_m04_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m04_couplers_to_m04_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= m04_couplers_to_m04_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= m04_couplers_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m04_couplers_to_m04_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= m04_couplers_to_m04_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rlast(0) <= m04_couplers_to_m04_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m04_couplers_to_m04_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m04_couplers_to_m04_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m04_couplers_to_m04_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  m04_couplers_to_m04_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m04_couplers_to_m04_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m04_couplers_to_m04_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m04_couplers_to_m04_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  m04_couplers_to_m04_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RLAST(0) <= M_AXI_rlast(0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WLAST(0) <= S_AXI_wlast(0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_A1MC5T is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_A1MC5T;

architecture STRUCTURE of m04_couplers_imp_A1MC5T is
  component top_auto_cc_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_cc_2;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_cc_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m04_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m04_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m04_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m04_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m04_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m04_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m04_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m04_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m04_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m04_couplers_WVALID : STD_LOGIC;
  signal m04_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m04_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m04_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m04_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m04_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m04_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m04_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m04_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m04_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m04_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_cc_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(5 downto 0) <= auto_cc_to_m04_couplers_ARADDR(5 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_cc_to_m04_couplers_ARVALID;
  M_AXI_awaddr(5 downto 0) <= auto_cc_to_m04_couplers_AWADDR(5 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_cc_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_cc_to_m04_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m04_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_cc_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_cc_to_m04_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= m04_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m04_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m04_couplers_to_auto_cc_WREADY;
  auto_cc_to_m04_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m04_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m04_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m04_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m04_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m04_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component top_auto_cc_2
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(5 downto 0) => auto_cc_to_m04_couplers_ARADDR(5 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m04_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m04_couplers_ARREADY,
      m_axi_arvalid => auto_cc_to_m04_couplers_ARVALID,
      m_axi_awaddr(5 downto 0) => auto_cc_to_m04_couplers_AWADDR(5 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m04_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m04_couplers_AWREADY,
      m_axi_awvalid => auto_cc_to_m04_couplers_AWVALID,
      m_axi_bready => auto_cc_to_m04_couplers_BREADY,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_bvalid => auto_cc_to_m04_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m04_couplers_RREADY,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_rvalid => auto_cc_to_m04_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m04_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m04_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m04_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m04_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(5 downto 0) => m04_couplers_to_auto_cc_ARADDR(5 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arprot(2 downto 0) => m04_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m04_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m04_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(5 downto 0) => m04_couplers_to_auto_cc_AWADDR(5 downto 0),
      s_axi_awprot(2 downto 0) => m04_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m04_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m04_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m04_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m04_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m04_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m04_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m04_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m04_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m04_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m04_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m04_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m04_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m04_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1X9MW7O is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_1X9MW7O;

architecture STRUCTURE of m05_couplers_imp_1X9MW7O is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m05_couplers_to_m05_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m05_couplers_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_couplers_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_couplers_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m05_couplers_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_couplers_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_m05_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_m05_couplers_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_couplers_WREADY;
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_couplers_to_m05_couplers_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_couplers_to_m05_couplers_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_couplers_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_m05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_QNP9JX is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m05_couplers_imp_QNP9JX;

architecture STRUCTURE of m05_couplers_imp_QNP9JX is
  component top_auto_ss_k_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    sparse_tkeep_removed : out STD_LOGIC
  );
  end component top_auto_ss_k_2;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_k_to_m05_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_k_to_m05_couplers_TLAST : STD_LOGIC;
  signal auto_ss_k_to_m05_couplers_TREADY : STD_LOGIC;
  signal auto_ss_k_to_m05_couplers_TVALID : STD_LOGIC;
  signal m05_couplers_to_auto_ss_k_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_ss_k_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ss_k_TLAST : STD_LOGIC;
  signal m05_couplers_to_auto_ss_k_TREADY : STD_LOGIC;
  signal m05_couplers_to_auto_ss_k_TVALID : STD_LOGIC;
  signal NLW_auto_ss_k_sparse_tkeep_removed_UNCONNECTED : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= auto_ss_k_to_m05_couplers_TDATA(31 downto 0);
  M_AXIS_tlast(0) <= auto_ss_k_to_m05_couplers_TLAST;
  M_AXIS_tvalid <= auto_ss_k_to_m05_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1(0) <= S_AXIS_ARESETN(0);
  S_AXIS_tready <= m05_couplers_to_auto_ss_k_TREADY;
  auto_ss_k_to_m05_couplers_TREADY <= M_AXIS_tready;
  m05_couplers_to_auto_ss_k_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  m05_couplers_to_auto_ss_k_TKEEP(3 downto 0) <= S_AXIS_tkeep(3 downto 0);
  m05_couplers_to_auto_ss_k_TLAST <= S_AXIS_tlast;
  m05_couplers_to_auto_ss_k_TVALID <= S_AXIS_tvalid;
auto_ss_k: component top_auto_ss_k_2
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1(0),
      m_axis_tdata(31 downto 0) => auto_ss_k_to_m05_couplers_TDATA(31 downto 0),
      m_axis_tlast => auto_ss_k_to_m05_couplers_TLAST,
      m_axis_tready => auto_ss_k_to_m05_couplers_TREADY,
      m_axis_tvalid => auto_ss_k_to_m05_couplers_TVALID,
      s_axis_tdata(31 downto 0) => m05_couplers_to_auto_ss_k_TDATA(31 downto 0),
      s_axis_tkeep(3 downto 0) => m05_couplers_to_auto_ss_k_TKEEP(3 downto 0),
      s_axis_tlast => m05_couplers_to_auto_ss_k_TLAST,
      s_axis_tready => m05_couplers_to_auto_ss_k_TREADY,
      s_axis_tvalid => m05_couplers_to_auto_ss_k_TVALID,
      sparse_tkeep_removed => NLW_auto_ss_k_sparse_tkeep_removed_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_1PK6R83 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m06_couplers_imp_1PK6R83;

architecture STRUCTURE of m06_couplers_imp_1PK6R83 is
  signal m06_couplers_to_m06_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_TLAST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_TREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= m06_couplers_to_m06_couplers_TDATA(31 downto 0);
  M_AXIS_tkeep(3 downto 0) <= m06_couplers_to_m06_couplers_TKEEP(3 downto 0);
  M_AXIS_tlast <= m06_couplers_to_m06_couplers_TLAST;
  M_AXIS_tvalid <= m06_couplers_to_m06_couplers_TVALID;
  S_AXIS_tready <= m06_couplers_to_m06_couplers_TREADY;
  m06_couplers_to_m06_couplers_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  m06_couplers_to_m06_couplers_TKEEP(3 downto 0) <= S_AXIS_tkeep(3 downto 0);
  m06_couplers_to_m06_couplers_TLAST <= S_AXIS_tlast;
  m06_couplers_to_m06_couplers_TREADY <= M_AXIS_tready;
  m06_couplers_to_m06_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_14J6UX5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_14J6UX5;

architecture STRUCTURE of s00_couplers_imp_14J6UX5 is
  component top_auto_ds_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_ds_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_ds_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_ds_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_ds_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_ds_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_ds_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_ds_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_ds_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_ds_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_ds_WVALID : STD_LOGIC;
  signal NLW_auto_ds_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_ds_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_ds_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_ds_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_ds_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_ds_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_ds_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_ds_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_ds_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_ds_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_ds_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_ds_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_ds_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_ds_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_ds_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_ds_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_ds_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_ds_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_ds_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_ds_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_ds_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_ds_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_ds_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_ds_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_ds_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_ds_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= s00_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_ds_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(127 downto 0) <= s00_couplers_to_auto_ds_RDATA(127 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_ds_WREADY;
  auto_ds_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_ds_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_ds_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_ds_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_ds_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_ds_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_ds_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_ds_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_ds_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_ds_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_ds_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_ds_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  s00_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_ds_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  s00_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component top_auto_ds_0
     port map (
      m_axi_araddr(31 downto 0) => auto_ds_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_ds_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_ds_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_ds_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_s00_couplers_AWVALID,
      m_axi_bready => auto_ds_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_s00_couplers_RLAST,
      m_axi_rready => auto_ds_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_s00_couplers_WLAST,
      m_axi_wready => auto_ds_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_s00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_ds_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_ds_ARLOCK,
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s00_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_ds_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_ds_AWLOCK,
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s00_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_ds_AWVALID,
      s_axi_bready => s00_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_ds_BVALID,
      s_axi_rdata(127 downto 0) => s00_couplers_to_auto_ds_RDATA(127 downto 0),
      s_axi_rlast => s00_couplers_to_auto_ds_RLAST,
      s_axi_rready => s00_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_ds_RVALID,
      s_axi_wdata(127 downto 0) => s00_couplers_to_auto_ds_WDATA(127 downto 0),
      s_axi_wlast => s00_couplers_to_auto_ds_WLAST,
      s_axi_wready => s00_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(15 downto 0) => s00_couplers_to_auto_ds_WSTRB(15 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_ds_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1MV96ES is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s00_couplers_imp_1MV96ES;

architecture STRUCTURE of s00_couplers_imp_1MV96ES is
  component top_auto_cc_1 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component top_auto_cc_1;
  component top_auto_ss_k_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component top_auto_ss_k_3;
  signal M_AXIS_ACLK_1 : STD_LOGIC;
  signal M_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_auto_ss_k_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_auto_ss_k_TLAST : STD_LOGIC;
  signal auto_cc_to_auto_ss_k_TREADY : STD_LOGIC;
  signal auto_cc_to_auto_ss_k_TVALID : STD_LOGIC;
  signal auto_ss_k_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_k_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_k_to_s00_couplers_TLAST : STD_LOGIC;
  signal auto_ss_k_to_s00_couplers_TREADY : STD_LOGIC;
  signal auto_ss_k_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_couplers_to_auto_cc_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_cc_TLAST : STD_LOGIC;
  signal s00_couplers_to_auto_cc_TREADY : STD_LOGIC;
  signal s00_couplers_to_auto_cc_TVALID : STD_LOGIC;
begin
  M_AXIS_ACLK_1 <= M_AXIS_ACLK;
  M_AXIS_ARESETN_1(0) <= M_AXIS_ARESETN(0);
  M_AXIS_tdata(31 downto 0) <= auto_ss_k_to_s00_couplers_TDATA(31 downto 0);
  M_AXIS_tkeep(3 downto 0) <= auto_ss_k_to_s00_couplers_TKEEP(3 downto 0);
  M_AXIS_tlast <= auto_ss_k_to_s00_couplers_TLAST;
  M_AXIS_tvalid <= auto_ss_k_to_s00_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1 <= S_AXIS_ARESETN;
  S_AXIS_tready <= s00_couplers_to_auto_cc_TREADY;
  auto_ss_k_to_s00_couplers_TREADY <= M_AXIS_tready;
  s00_couplers_to_auto_cc_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  s00_couplers_to_auto_cc_TLAST <= S_AXIS_tlast;
  s00_couplers_to_auto_cc_TVALID <= S_AXIS_tvalid;
auto_cc: component top_auto_cc_1
     port map (
      m_axis_aclk => M_AXIS_ACLK_1,
      m_axis_aresetn => M_AXIS_ARESETN_1(0),
      m_axis_tdata(31 downto 0) => auto_cc_to_auto_ss_k_TDATA(31 downto 0),
      m_axis_tlast => auto_cc_to_auto_ss_k_TLAST,
      m_axis_tready => auto_cc_to_auto_ss_k_TREADY,
      m_axis_tvalid => auto_cc_to_auto_ss_k_TVALID,
      s_axis_aclk => S_AXIS_ACLK_1,
      s_axis_aresetn => S_AXIS_ARESETN_1,
      s_axis_tdata(31 downto 0) => s00_couplers_to_auto_cc_TDATA(31 downto 0),
      s_axis_tlast => s00_couplers_to_auto_cc_TLAST,
      s_axis_tready => s00_couplers_to_auto_cc_TREADY,
      s_axis_tvalid => s00_couplers_to_auto_cc_TVALID
    );
auto_ss_k: component top_auto_ss_k_3
     port map (
      aclk => M_AXIS_ACLK_1,
      aresetn => M_AXIS_ARESETN_1(0),
      m_axis_tdata(31 downto 0) => auto_ss_k_to_s00_couplers_TDATA(31 downto 0),
      m_axis_tkeep(3 downto 0) => auto_ss_k_to_s00_couplers_TKEEP(3 downto 0),
      m_axis_tlast => auto_ss_k_to_s00_couplers_TLAST,
      m_axis_tready => auto_ss_k_to_s00_couplers_TREADY,
      m_axis_tvalid => auto_ss_k_to_s00_couplers_TVALID,
      s_axis_tdata(31 downto 0) => auto_cc_to_auto_ss_k_TDATA(31 downto 0),
      s_axis_tlast => auto_cc_to_auto_ss_k_TLAST,
      s_axis_tready => auto_cc_to_auto_ss_k_TREADY,
      s_axis_tvalid => auto_cc_to_auto_ss_k_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1RMBCQA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_1RMBCQA;

architecture STRUCTURE of s00_couplers_imp_1RMBCQA is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_H2TAQ6 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_H2TAQ6;

architecture STRUCTURE of s00_couplers_imp_H2TAQ6 is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_couplers_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_couplers_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s00_couplers_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_couplers_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_rdata(127 downto 0) <= s00_couplers_to_s00_couplers_RDATA(127 downto 0);
  S_AXI_rlast(0) <= s00_couplers_to_s00_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_RDATA(127 downto 0) <= M_AXI_rdata(127 downto 0);
  s00_couplers_to_s00_couplers_RLAST(0) <= M_AXI_rlast(0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_LJ6MD9 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_LJ6MD9;

architecture STRUCTURE of s00_couplers_imp_LJ6MD9 is
  component top_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready(0) <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready(0) <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast(0) <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready(0) <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_auto_pc_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_auto_pc_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WLAST(0) <= S_AXI_wlast(0);
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID(0) <= S_AXI_wvalid(0);
auto_pc: component top_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1(0),
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => s00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => s00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID(0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY(0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST(0),
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1Q6K5QJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s01_couplers_imp_1Q6K5QJ;

architecture STRUCTURE of s01_couplers_imp_1Q6K5QJ is
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_couplers_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_couplers_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s01_couplers_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_couplers_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s01_couplers_to_s01_couplers_AWVALID(0);
  M_AXI_bready(0) <= s01_couplers_to_s01_couplers_BREADY(0);
  M_AXI_wdata(127 downto 0) <= s01_couplers_to_s01_couplers_WDATA(127 downto 0);
  M_AXI_wlast(0) <= s01_couplers_to_s01_couplers_WLAST(0);
  M_AXI_wstrb(15 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(15 downto 0);
  M_AXI_wvalid(0) <= s01_couplers_to_s01_couplers_WVALID(0);
  S_AXI_awready(0) <= s01_couplers_to_s01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s01_couplers_to_s01_couplers_BVALID(0);
  S_AXI_wready(0) <= s01_couplers_to_s01_couplers_WREADY(0);
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWREADY(0) <= M_AXI_awready(0);
  s01_couplers_to_s01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s01_couplers_to_s01_couplers_BREADY(0) <= S_AXI_bready(0);
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s01_couplers_to_s01_couplers_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  s01_couplers_to_s01_couplers_WLAST(0) <= S_AXI_wlast(0);
  s01_couplers_to_s01_couplers_WREADY(0) <= M_AXI_wready(0);
  s01_couplers_to_s01_couplers_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  s01_couplers_to_s01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_2P9RU9 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s01_couplers_imp_2P9RU9;

architecture STRUCTURE of s01_couplers_imp_2P9RU9 is
  signal s01_couplers_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_TLAST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_TREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= s01_couplers_to_s01_couplers_TDATA(31 downto 0);
  M_AXIS_tkeep(3 downto 0) <= s01_couplers_to_s01_couplers_TKEEP(3 downto 0);
  M_AXIS_tlast <= s01_couplers_to_s01_couplers_TLAST;
  M_AXIS_tvalid <= s01_couplers_to_s01_couplers_TVALID;
  S_AXIS_tready <= s01_couplers_to_s01_couplers_TREADY;
  s01_couplers_to_s01_couplers_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  s01_couplers_to_s01_couplers_TKEEP(3 downto 0) <= S_AXIS_tkeep(3 downto 0);
  s01_couplers_to_s01_couplers_TLAST <= S_AXIS_tlast;
  s01_couplers_to_s01_couplers_TREADY <= M_AXIS_tready;
  s01_couplers_to_s01_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_1E2LIIN is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s02_couplers_imp_1E2LIIN;

architecture STRUCTURE of s02_couplers_imp_1E2LIIN is
  component top_auto_ss_k_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component top_auto_ss_k_4;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_k_to_s02_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_k_to_s02_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_k_to_s02_couplers_TLAST : STD_LOGIC;
  signal auto_ss_k_to_s02_couplers_TREADY : STD_LOGIC;
  signal auto_ss_k_to_s02_couplers_TVALID : STD_LOGIC;
  signal s02_couplers_to_auto_ss_k_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_ss_k_TLAST : STD_LOGIC;
  signal s02_couplers_to_auto_ss_k_TREADY : STD_LOGIC;
  signal s02_couplers_to_auto_ss_k_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= auto_ss_k_to_s02_couplers_TDATA(31 downto 0);
  M_AXIS_tkeep(3 downto 0) <= auto_ss_k_to_s02_couplers_TKEEP(3 downto 0);
  M_AXIS_tlast <= auto_ss_k_to_s02_couplers_TLAST;
  M_AXIS_tvalid <= auto_ss_k_to_s02_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1(0) <= S_AXIS_ARESETN(0);
  S_AXIS_tready <= s02_couplers_to_auto_ss_k_TREADY;
  auto_ss_k_to_s02_couplers_TREADY <= M_AXIS_tready;
  s02_couplers_to_auto_ss_k_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  s02_couplers_to_auto_ss_k_TLAST <= S_AXIS_tlast;
  s02_couplers_to_auto_ss_k_TVALID <= S_AXIS_tvalid;
auto_ss_k: component top_auto_ss_k_4
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1(0),
      m_axis_tdata(31 downto 0) => auto_ss_k_to_s02_couplers_TDATA(31 downto 0),
      m_axis_tkeep(3 downto 0) => auto_ss_k_to_s02_couplers_TKEEP(3 downto 0),
      m_axis_tlast => auto_ss_k_to_s02_couplers_TLAST,
      m_axis_tready => auto_ss_k_to_s02_couplers_TREADY,
      m_axis_tvalid => auto_ss_k_to_s02_couplers_TVALID,
      s_axis_tdata(31 downto 0) => s02_couplers_to_auto_ss_k_TDATA(31 downto 0),
      s_axis_tlast => s02_couplers_to_auto_ss_k_TLAST,
      s_axis_tready => s02_couplers_to_auto_ss_k_TREADY,
      s_axis_tvalid => s02_couplers_to_auto_ss_k_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_Q14SZP is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s02_couplers_imp_Q14SZP;

architecture STRUCTURE of s02_couplers_imp_Q14SZP is
  signal s02_couplers_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_s02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s02_couplers_to_s02_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_s02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s02_couplers_to_s02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s02_couplers_to_s02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s02_couplers_to_s02_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s02_couplers_to_s02_couplers_ARLEN(7 downto 0);
  M_AXI_arprot(2 downto 0) <= s02_couplers_to_s02_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= s02_couplers_to_s02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s02_couplers_to_s02_couplers_ARVALID(0);
  M_AXI_rready(0) <= s02_couplers_to_s02_couplers_RREADY(0);
  S_AXI_arready(0) <= s02_couplers_to_s02_couplers_ARREADY(0);
  S_AXI_rdata(127 downto 0) <= s02_couplers_to_s02_couplers_RDATA(127 downto 0);
  S_AXI_rlast(0) <= s02_couplers_to_s02_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s02_couplers_to_s02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s02_couplers_to_s02_couplers_RVALID(0);
  s02_couplers_to_s02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s02_couplers_to_s02_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s02_couplers_to_s02_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s02_couplers_to_s02_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s02_couplers_to_s02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s02_couplers_to_s02_couplers_ARREADY(0) <= M_AXI_arready(0);
  s02_couplers_to_s02_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s02_couplers_to_s02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s02_couplers_to_s02_couplers_RDATA(127 downto 0) <= M_AXI_rdata(127 downto 0);
  s02_couplers_to_s02_couplers_RLAST(0) <= M_AXI_rlast(0);
  s02_couplers_to_s02_couplers_RREADY(0) <= S_AXI_rready(0);
  s02_couplers_to_s02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s02_couplers_to_s02_couplers_RVALID(0) <= M_AXI_rvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s03_couplers_imp_TDKDQ2 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s03_couplers_imp_TDKDQ2;

architecture STRUCTURE of s03_couplers_imp_TDKDQ2 is
  signal s03_couplers_to_s03_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_couplers_TLAST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_TREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= s03_couplers_to_s03_couplers_TDATA(31 downto 0);
  M_AXIS_tkeep(3 downto 0) <= s03_couplers_to_s03_couplers_TKEEP(3 downto 0);
  M_AXIS_tlast <= s03_couplers_to_s03_couplers_TLAST;
  M_AXIS_tvalid <= s03_couplers_to_s03_couplers_TVALID;
  S_AXIS_tready <= s03_couplers_to_s03_couplers_TREADY;
  s03_couplers_to_s03_couplers_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  s03_couplers_to_s03_couplers_TKEEP(3 downto 0) <= S_AXIS_tkeep(3 downto 0);
  s03_couplers_to_s03_couplers_TLAST <= S_AXIS_tlast;
  s03_couplers_to_s03_couplers_TREADY <= M_AXIS_tready;
  s03_couplers_to_s03_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s03_couplers_imp_ZLCCW0 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s03_couplers_imp_ZLCCW0;

architecture STRUCTURE of s03_couplers_imp_ZLCCW0 is
  signal s03_couplers_to_s03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_s03_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_s03_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_s03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_s03_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_s03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s03_couplers_to_s03_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_s03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s03_couplers_to_s03_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_awaddr(31 downto 0) <= s03_couplers_to_s03_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s03_couplers_to_s03_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s03_couplers_to_s03_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s03_couplers_to_s03_couplers_AWLEN(7 downto 0);
  M_AXI_awprot(2 downto 0) <= s03_couplers_to_s03_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= s03_couplers_to_s03_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s03_couplers_to_s03_couplers_AWVALID(0);
  M_AXI_bready(0) <= s03_couplers_to_s03_couplers_BREADY(0);
  M_AXI_wdata(127 downto 0) <= s03_couplers_to_s03_couplers_WDATA(127 downto 0);
  M_AXI_wlast(0) <= s03_couplers_to_s03_couplers_WLAST(0);
  M_AXI_wstrb(15 downto 0) <= s03_couplers_to_s03_couplers_WSTRB(15 downto 0);
  M_AXI_wvalid(0) <= s03_couplers_to_s03_couplers_WVALID(0);
  S_AXI_awready(0) <= s03_couplers_to_s03_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s03_couplers_to_s03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s03_couplers_to_s03_couplers_BVALID(0);
  S_AXI_wready(0) <= s03_couplers_to_s03_couplers_WREADY(0);
  s03_couplers_to_s03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s03_couplers_to_s03_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s03_couplers_to_s03_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s03_couplers_to_s03_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s03_couplers_to_s03_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s03_couplers_to_s03_couplers_AWREADY(0) <= M_AXI_awready(0);
  s03_couplers_to_s03_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s03_couplers_to_s03_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s03_couplers_to_s03_couplers_BREADY(0) <= S_AXI_bready(0);
  s03_couplers_to_s03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s03_couplers_to_s03_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s03_couplers_to_s03_couplers_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  s03_couplers_to_s03_couplers_WLAST(0) <= S_AXI_wlast(0);
  s03_couplers_to_s03_couplers_WREADY(0) <= M_AXI_wready(0);
  s03_couplers_to_s03_couplers_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  s03_couplers_to_s03_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s04_couplers_imp_1Y96WIG is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
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
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s04_couplers_imp_1Y96WIG;

architecture STRUCTURE of s04_couplers_imp_1Y96WIG is
  component top_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component top_auto_us_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s04_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s04_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s04_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s04_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s04_couplers_AWREADY : STD_LOGIC;
  signal auto_us_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s04_couplers_AWVALID : STD_LOGIC;
  signal auto_us_to_s04_couplers_BREADY : STD_LOGIC;
  signal auto_us_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s04_couplers_BVALID : STD_LOGIC;
  signal auto_us_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_us_to_s04_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s04_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s04_couplers_RVALID : STD_LOGIC;
  signal auto_us_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_us_to_s04_couplers_WLAST : STD_LOGIC;
  signal auto_us_to_s04_couplers_WREADY : STD_LOGIC;
  signal auto_us_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_us_to_s04_couplers_WVALID : STD_LOGIC;
  signal s04_couplers_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_auto_us_ARREADY : STD_LOGIC;
  signal s04_couplers_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_auto_us_ARVALID : STD_LOGIC;
  signal s04_couplers_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_auto_us_AWREADY : STD_LOGIC;
  signal s04_couplers_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_auto_us_AWVALID : STD_LOGIC;
  signal s04_couplers_to_auto_us_BREADY : STD_LOGIC;
  signal s04_couplers_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_auto_us_BVALID : STD_LOGIC;
  signal s04_couplers_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_auto_us_RLAST : STD_LOGIC;
  signal s04_couplers_to_auto_us_RREADY : STD_LOGIC;
  signal s04_couplers_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_auto_us_RVALID : STD_LOGIC;
  signal s04_couplers_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_auto_us_WLAST : STD_LOGIC;
  signal s04_couplers_to_auto_us_WREADY : STD_LOGIC;
  signal s04_couplers_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_auto_us_WVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_us_to_s04_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s04_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s04_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_to_s04_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_to_s04_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s04_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s04_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s04_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s04_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_us_to_s04_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_to_s04_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_to_s04_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_to_s04_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_to_s04_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_to_s04_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_to_s04_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_to_s04_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_to_s04_couplers_AWVALID;
  M_AXI_bready <= auto_us_to_s04_couplers_BREADY;
  M_AXI_rready <= auto_us_to_s04_couplers_RREADY;
  M_AXI_wdata(127 downto 0) <= auto_us_to_s04_couplers_WDATA(127 downto 0);
  M_AXI_wlast <= auto_us_to_s04_couplers_WLAST;
  M_AXI_wstrb(15 downto 0) <= auto_us_to_s04_couplers_WSTRB(15 downto 0);
  M_AXI_wvalid <= auto_us_to_s04_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1(0) <= S_ARESETN(0);
  S_AXI_arready <= s04_couplers_to_auto_us_ARREADY;
  S_AXI_awready <= s04_couplers_to_auto_us_AWREADY;
  S_AXI_bresp(1 downto 0) <= s04_couplers_to_auto_us_BRESP(1 downto 0);
  S_AXI_bvalid <= s04_couplers_to_auto_us_BVALID;
  S_AXI_rdata(31 downto 0) <= s04_couplers_to_auto_us_RDATA(31 downto 0);
  S_AXI_rlast <= s04_couplers_to_auto_us_RLAST;
  S_AXI_rresp(1 downto 0) <= s04_couplers_to_auto_us_RRESP(1 downto 0);
  S_AXI_rvalid <= s04_couplers_to_auto_us_RVALID;
  S_AXI_wready <= s04_couplers_to_auto_us_WREADY;
  auto_us_to_s04_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s04_couplers_AWREADY <= M_AXI_awready;
  auto_us_to_s04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_to_s04_couplers_BVALID <= M_AXI_bvalid;
  auto_us_to_s04_couplers_RDATA(127 downto 0) <= M_AXI_rdata(127 downto 0);
  auto_us_to_s04_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s04_couplers_RVALID <= M_AXI_rvalid;
  auto_us_to_s04_couplers_WREADY <= M_AXI_wready;
  s04_couplers_to_auto_us_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s04_couplers_to_auto_us_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s04_couplers_to_auto_us_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s04_couplers_to_auto_us_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s04_couplers_to_auto_us_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s04_couplers_to_auto_us_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s04_couplers_to_auto_us_ARVALID <= S_AXI_arvalid;
  s04_couplers_to_auto_us_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s04_couplers_to_auto_us_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s04_couplers_to_auto_us_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s04_couplers_to_auto_us_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s04_couplers_to_auto_us_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s04_couplers_to_auto_us_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s04_couplers_to_auto_us_AWVALID <= S_AXI_awvalid;
  s04_couplers_to_auto_us_BREADY <= S_AXI_bready;
  s04_couplers_to_auto_us_RREADY <= S_AXI_rready;
  s04_couplers_to_auto_us_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s04_couplers_to_auto_us_WLAST <= S_AXI_wlast;
  s04_couplers_to_auto_us_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s04_couplers_to_auto_us_WVALID <= S_AXI_wvalid;
auto_us: component top_auto_us_0
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_s04_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s04_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s04_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_s04_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_s04_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_s04_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s04_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s04_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_s04_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s04_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_us_to_s04_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_s04_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_s04_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_s04_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_s04_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_to_s04_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_s04_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_s04_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_s04_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_s04_couplers_AWVALID,
      m_axi_bready => auto_us_to_s04_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_s04_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_s04_couplers_BVALID,
      m_axi_rdata(127 downto 0) => auto_us_to_s04_couplers_RDATA(127 downto 0),
      m_axi_rlast => auto_us_to_s04_couplers_RLAST,
      m_axi_rready => auto_us_to_s04_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s04_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s04_couplers_RVALID,
      m_axi_wdata(127 downto 0) => auto_us_to_s04_couplers_WDATA(127 downto 0),
      m_axi_wlast => auto_us_to_s04_couplers_WLAST,
      m_axi_wready => auto_us_to_s04_couplers_WREADY,
      m_axi_wstrb(15 downto 0) => auto_us_to_s04_couplers_WSTRB(15 downto 0),
      m_axi_wvalid => auto_us_to_s04_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s04_couplers_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s04_couplers_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s04_couplers_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1(0),
      s_axi_arlen(7 downto 0) => s04_couplers_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s04_couplers_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s04_couplers_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s04_couplers_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s04_couplers_to_auto_us_ARVALID,
      s_axi_awaddr(31 downto 0) => s04_couplers_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s04_couplers_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s04_couplers_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s04_couplers_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s04_couplers_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s04_couplers_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s04_couplers_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => s04_couplers_to_auto_us_AWVALID,
      s_axi_bready => s04_couplers_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => s04_couplers_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => s04_couplers_to_auto_us_BVALID,
      s_axi_rdata(31 downto 0) => s04_couplers_to_auto_us_RDATA(31 downto 0),
      s_axi_rlast => s04_couplers_to_auto_us_RLAST,
      s_axi_rready => s04_couplers_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s04_couplers_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s04_couplers_to_auto_us_RVALID,
      s_axi_wdata(31 downto 0) => s04_couplers_to_auto_us_WDATA(31 downto 0),
      s_axi_wlast => s04_couplers_to_auto_us_WLAST,
      s_axi_wready => s04_couplers_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => s04_couplers_to_auto_us_WSTRB(3 downto 0),
      s_axi_wvalid => s04_couplers_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s04_couplers_imp_5PIQSI is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s04_couplers_imp_5PIQSI;

architecture STRUCTURE of s04_couplers_imp_5PIQSI is
  signal s04_couplers_to_s04_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_TLAST : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_TREADY : STD_LOGIC;
  signal s04_couplers_to_s04_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= s04_couplers_to_s04_couplers_TDATA(31 downto 0);
  M_AXIS_tkeep(3 downto 0) <= s04_couplers_to_s04_couplers_TKEEP(3 downto 0);
  M_AXIS_tlast <= s04_couplers_to_s04_couplers_TLAST;
  M_AXIS_tvalid <= s04_couplers_to_s04_couplers_TVALID;
  S_AXIS_tready <= s04_couplers_to_s04_couplers_TREADY;
  s04_couplers_to_s04_couplers_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  s04_couplers_to_s04_couplers_TKEEP(3 downto 0) <= S_AXIS_tkeep(3 downto 0);
  s04_couplers_to_s04_couplers_TLAST <= S_AXIS_tlast;
  s04_couplers_to_s04_couplers_TREADY <= M_AXIS_tready;
  s04_couplers_to_s04_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s05_couplers_imp_1JRY9PJ is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s05_couplers_imp_1JRY9PJ;

architecture STRUCTURE of s05_couplers_imp_1JRY9PJ is
  component top_auto_ss_k_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component top_auto_ss_k_5;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_k_to_s05_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ss_k_to_s05_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_k_to_s05_couplers_TLAST : STD_LOGIC;
  signal auto_ss_k_to_s05_couplers_TREADY : STD_LOGIC;
  signal auto_ss_k_to_s05_couplers_TVALID : STD_LOGIC;
  signal s05_couplers_to_auto_ss_k_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_auto_ss_k_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_auto_ss_k_TREADY : STD_LOGIC;
  signal s05_couplers_to_auto_ss_k_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= auto_ss_k_to_s05_couplers_TDATA(31 downto 0);
  M_AXIS_tkeep(3 downto 0) <= auto_ss_k_to_s05_couplers_TKEEP(3 downto 0);
  M_AXIS_tlast <= auto_ss_k_to_s05_couplers_TLAST;
  M_AXIS_tvalid <= auto_ss_k_to_s05_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1(0) <= S_AXIS_ARESETN(0);
  S_AXIS_tready <= s05_couplers_to_auto_ss_k_TREADY;
  auto_ss_k_to_s05_couplers_TREADY <= M_AXIS_tready;
  s05_couplers_to_auto_ss_k_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  s05_couplers_to_auto_ss_k_TLAST(0) <= S_AXIS_tlast(0);
  s05_couplers_to_auto_ss_k_TVALID <= S_AXIS_tvalid;
auto_ss_k: component top_auto_ss_k_5
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1(0),
      m_axis_tdata(31 downto 0) => auto_ss_k_to_s05_couplers_TDATA(31 downto 0),
      m_axis_tkeep(3 downto 0) => auto_ss_k_to_s05_couplers_TKEEP(3 downto 0),
      m_axis_tlast => auto_ss_k_to_s05_couplers_TLAST,
      m_axis_tready => auto_ss_k_to_s05_couplers_TREADY,
      m_axis_tvalid => auto_ss_k_to_s05_couplers_TVALID,
      s_axis_tdata(31 downto 0) => s05_couplers_to_auto_ss_k_TDATA(31 downto 0),
      s_axis_tlast => s05_couplers_to_auto_ss_k_TLAST(0),
      s_axis_tready => s05_couplers_to_auto_ss_k_TREADY,
      s_axis_tvalid => s05_couplers_to_auto_ss_k_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s06_couplers_imp_WESZFT is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s06_couplers_imp_WESZFT;

architecture STRUCTURE of s06_couplers_imp_WESZFT is
  signal s06_couplers_to_s06_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s06_couplers_to_s06_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s06_couplers_to_s06_couplers_TLAST : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_TREADY : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(31 downto 0) <= s06_couplers_to_s06_couplers_TDATA(31 downto 0);
  M_AXIS_tkeep(3 downto 0) <= s06_couplers_to_s06_couplers_TKEEP(3 downto 0);
  M_AXIS_tlast <= s06_couplers_to_s06_couplers_TLAST;
  M_AXIS_tvalid <= s06_couplers_to_s06_couplers_TVALID;
  S_AXIS_tready <= s06_couplers_to_s06_couplers_TREADY;
  s06_couplers_to_s06_couplers_TDATA(31 downto 0) <= S_AXIS_tdata(31 downto 0);
  s06_couplers_to_s06_couplers_TKEEP(3 downto 0) <= S_AXIS_tkeep(3 downto 0);
  s06_couplers_to_s06_couplers_TLAST <= S_AXIS_tlast;
  s06_couplers_to_s06_couplers_TREADY <= M_AXIS_tready;
  s06_couplers_to_s06_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity timer_0_imp_45NYOX is
  port (
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    irq_timer_0 : out STD_LOGIC;
    irq_timer_1 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end timer_0_imp_45NYOX;

architecture STRUCTURE of timer_0_imp_45NYOX is
  component top_axi_timer_0_0 is
  port (
    capturetrig0 : in STD_LOGIC;
    capturetrig1 : in STD_LOGIC;
    generateout0 : out STD_LOGIC;
    generateout1 : out STD_LOGIC;
    pwm0 : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  end component top_axi_timer_0_0;
  signal axi_interconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_pcie_0_axi_aclk_out1 : STD_LOGIC;
  signal axi_timer_0_generateout0 : STD_LOGIC;
  signal axi_timer_0_generateout1 : STD_LOGIC;
  signal rst_axi_pcie_0_125M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_timer_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_0_pwm0_UNCONNECTED : STD_LOGIC;
begin
  S_AXI_arready <= axi_interconnect_0_M01_AXI_ARREADY;
  S_AXI_awready <= axi_interconnect_0_M01_AXI_AWREADY;
  S_AXI_bresp(1 downto 0) <= axi_interconnect_0_M01_AXI_BRESP(1 downto 0);
  S_AXI_bvalid <= axi_interconnect_0_M01_AXI_BVALID;
  S_AXI_rdata(31 downto 0) <= axi_interconnect_0_M01_AXI_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= axi_interconnect_0_M01_AXI_RRESP(1 downto 0);
  S_AXI_rvalid <= axi_interconnect_0_M01_AXI_RVALID;
  S_AXI_wready <= axi_interconnect_0_M01_AXI_WREADY;
  axi_interconnect_0_M01_AXI_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  axi_interconnect_0_M01_AXI_ARVALID <= S_AXI_arvalid;
  axi_interconnect_0_M01_AXI_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  axi_interconnect_0_M01_AXI_AWVALID <= S_AXI_awvalid;
  axi_interconnect_0_M01_AXI_BREADY <= S_AXI_bready;
  axi_interconnect_0_M01_AXI_RREADY <= S_AXI_rready;
  axi_interconnect_0_M01_AXI_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  axi_interconnect_0_M01_AXI_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  axi_interconnect_0_M01_AXI_WVALID <= S_AXI_wvalid;
  axi_pcie_0_axi_aclk_out1 <= s_axi_aclk;
  irq_timer_0 <= axi_timer_0_generateout0;
  irq_timer_1 <= axi_timer_0_generateout1;
  rst_axi_pcie_0_125M_peripheral_aresetn(0) <= s_axi_aresetn(0);
axi_timer_0: component top_axi_timer_0_0
     port map (
      capturetrig0 => '0',
      capturetrig1 => '0',
      freeze => '0',
      generateout0 => axi_timer_0_generateout0,
      generateout1 => axi_timer_0_generateout1,
      interrupt => NLW_axi_timer_0_interrupt_UNCONNECTED,
      pwm0 => NLW_axi_timer_0_pwm0_UNCONNECTED,
      s_axi_aclk => axi_pcie_0_axi_aclk_out1,
      s_axi_araddr(4 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(4 downto 0),
      s_axi_aresetn => rst_axi_pcie_0_125M_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M01_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      s_axi_awaddr(4 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(4 downto 0),
      s_axi_awready => axi_interconnect_0_M01_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M01_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end top_axi_interconnect_0_0;

architecture STRUCTURE of top_axi_interconnect_0_0 is
  component top_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component top_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 3 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_0_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1(0) <= M01_ARESETN(0);
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_axi_interconnect_0_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_axi_interconnect_0_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_interconnect_0_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_interconnect_0_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_axi_interconnect_0_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1(0) <= M02_ARESETN(0);
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_axi_interconnect_0_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_axi_interconnect_0_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_axi_interconnect_0_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_axi_interconnect_0_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_axi_interconnect_0_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1(0) <= S00_ARESETN(0);
  S00_AXI_arready(0) <= axi_interconnect_0_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= axi_interconnect_0_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= axi_interconnect_0_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= axi_interconnect_0_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= axi_interconnect_0_to_s00_couplers_WREADY(0);
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net(0) <= ARESETN(0);
  axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  axi_interconnect_0_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  axi_interconnect_0_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  m00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
  m01_couplers_to_axi_interconnect_0_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_interconnect_0_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_interconnect_0_WREADY <= M01_AXI_wready;
  m02_couplers_to_axi_interconnect_0_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_axi_interconnect_0_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_axi_interconnect_0_WREADY(0) <= M02_AXI_wready(0);
m00_couplers: entity work.m00_couplers_imp_L6Q0P4
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_14GD7YL
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN(0) => M01_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m01_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m01_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m01_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m01_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_C7SLZ7
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN(0) => M02_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m02_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready(0) => m02_couplers_to_axi_interconnect_0_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_axi_interconnect_0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready(0) => m02_couplers_to_axi_interconnect_0_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_axi_interconnect_0_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_axi_interconnect_0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_axi_interconnect_0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_axi_interconnect_0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_axi_interconnect_0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_axi_interconnect_0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_axi_interconnect_0_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_1RMBCQA
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => S00_ACLK_1,
      S_ARESETN(0) => S00_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => axi_interconnect_0_to_s00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => axi_interconnect_0_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => axi_interconnect_0_to_s00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => axi_interconnect_0_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => axi_interconnect_0_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_0_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => axi_interconnect_0_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_interconnect_0_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => axi_interconnect_0_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_0_to_s00_couplers_WVALID(0)
    );
xbar: component top_xbar_0
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net(0),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(8 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(8 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(8 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(8 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_axi_interconnect_0_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC;
    M01_AXI_arburst : out STD_LOGIC;
    M01_AXI_arcache : out STD_LOGIC;
    M01_AXI_arlen : out STD_LOGIC;
    M01_AXI_arlock : out STD_LOGIC;
    M01_AXI_arprot : out STD_LOGIC;
    M01_AXI_arqos : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arregion : out STD_LOGIC;
    M01_AXI_arsize : out STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC;
    M01_AXI_awburst : out STD_LOGIC;
    M01_AXI_awcache : out STD_LOGIC;
    M01_AXI_awlen : out STD_LOGIC;
    M01_AXI_awlock : out STD_LOGIC;
    M01_AXI_awprot : out STD_LOGIC;
    M01_AXI_awqos : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awregion : out STD_LOGIC;
    M01_AXI_awsize : out STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC;
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC;
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC;
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC;
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end top_axi_interconnect_0_1;

architecture STRUCTURE of top_axi_interconnect_0_1 is
  component top_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component top_xbar_1;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 16 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_0_WVALID;
  M01_AXI_araddr <= m01_couplers_to_axi_interconnect_0_ARADDR;
  M01_AXI_arburst <= m01_couplers_to_axi_interconnect_0_ARBURST;
  M01_AXI_arcache <= m01_couplers_to_axi_interconnect_0_ARCACHE;
  M01_AXI_arlen <= m01_couplers_to_axi_interconnect_0_ARLEN;
  M01_AXI_arlock <= m01_couplers_to_axi_interconnect_0_ARLOCK;
  M01_AXI_arprot <= m01_couplers_to_axi_interconnect_0_ARPROT;
  M01_AXI_arqos <= m01_couplers_to_axi_interconnect_0_ARQOS;
  M01_AXI_arregion <= m01_couplers_to_axi_interconnect_0_ARREGION;
  M01_AXI_arsize <= m01_couplers_to_axi_interconnect_0_ARSIZE;
  M01_AXI_arvalid <= m01_couplers_to_axi_interconnect_0_ARVALID;
  M01_AXI_awaddr <= m01_couplers_to_axi_interconnect_0_AWADDR;
  M01_AXI_awburst <= m01_couplers_to_axi_interconnect_0_AWBURST;
  M01_AXI_awcache <= m01_couplers_to_axi_interconnect_0_AWCACHE;
  M01_AXI_awlen <= m01_couplers_to_axi_interconnect_0_AWLEN;
  M01_AXI_awlock <= m01_couplers_to_axi_interconnect_0_AWLOCK;
  M01_AXI_awprot <= m01_couplers_to_axi_interconnect_0_AWPROT;
  M01_AXI_awqos <= m01_couplers_to_axi_interconnect_0_AWQOS;
  M01_AXI_awregion <= m01_couplers_to_axi_interconnect_0_AWREGION;
  M01_AXI_awsize <= m01_couplers_to_axi_interconnect_0_AWSIZE;
  M01_AXI_awvalid <= m01_couplers_to_axi_interconnect_0_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_interconnect_0_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_interconnect_0_RREADY;
  M01_AXI_wdata <= m01_couplers_to_axi_interconnect_0_WDATA;
  M01_AXI_wlast <= m01_couplers_to_axi_interconnect_0_WLAST;
  M01_AXI_wstrb <= m01_couplers_to_axi_interconnect_0_WSTRB;
  M01_AXI_wvalid <= m01_couplers_to_axi_interconnect_0_WVALID;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M02_AXI_arburst(1 downto 0) <= m02_couplers_to_axi_interconnect_0_ARBURST(1 downto 0);
  M02_AXI_arcache(3 downto 0) <= m02_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0);
  M02_AXI_arlen(7 downto 0) <= m02_couplers_to_axi_interconnect_0_ARLEN(7 downto 0);
  M02_AXI_arlock(0) <= m02_couplers_to_axi_interconnect_0_ARLOCK(0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M02_AXI_arqos(3 downto 0) <= m02_couplers_to_axi_interconnect_0_ARQOS(3 downto 0);
  M02_AXI_arregion(3 downto 0) <= m02_couplers_to_axi_interconnect_0_ARREGION(3 downto 0);
  M02_AXI_arsize(2 downto 0) <= m02_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_axi_interconnect_0_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M02_AXI_awburst(1 downto 0) <= m02_couplers_to_axi_interconnect_0_AWBURST(1 downto 0);
  M02_AXI_awcache(3 downto 0) <= m02_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0);
  M02_AXI_awlen(7 downto 0) <= m02_couplers_to_axi_interconnect_0_AWLEN(7 downto 0);
  M02_AXI_awlock(0) <= m02_couplers_to_axi_interconnect_0_AWLOCK(0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M02_AXI_awqos(3 downto 0) <= m02_couplers_to_axi_interconnect_0_AWQOS(3 downto 0);
  M02_AXI_awregion(3 downto 0) <= m02_couplers_to_axi_interconnect_0_AWREGION(3 downto 0);
  M02_AXI_awsize(2 downto 0) <= m02_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_axi_interconnect_0_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_axi_interconnect_0_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_axi_interconnect_0_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M02_AXI_wlast(0) <= m02_couplers_to_axi_interconnect_0_WLAST(0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_axi_interconnect_0_WVALID(0);
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M03_AXI_arvalid(0) <= m03_couplers_to_axi_interconnect_0_ARVALID(0);
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M03_AXI_awvalid(0) <= m03_couplers_to_axi_interconnect_0_AWVALID(0);
  M03_AXI_bready(0) <= m03_couplers_to_axi_interconnect_0_BREADY(0);
  M03_AXI_rready(0) <= m03_couplers_to_axi_interconnect_0_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M03_AXI_wvalid(0) <= m03_couplers_to_axi_interconnect_0_WVALID(0);
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M04_AXI_arburst(1 downto 0) <= m04_couplers_to_axi_interconnect_0_ARBURST(1 downto 0);
  M04_AXI_arcache(3 downto 0) <= m04_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0);
  M04_AXI_arlen(7 downto 0) <= m04_couplers_to_axi_interconnect_0_ARLEN(7 downto 0);
  M04_AXI_arlock(0) <= m04_couplers_to_axi_interconnect_0_ARLOCK(0);
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M04_AXI_arsize(2 downto 0) <= m04_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_axi_interconnect_0_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M04_AXI_awburst(1 downto 0) <= m04_couplers_to_axi_interconnect_0_AWBURST(1 downto 0);
  M04_AXI_awcache(3 downto 0) <= m04_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0);
  M04_AXI_awlen(7 downto 0) <= m04_couplers_to_axi_interconnect_0_AWLEN(7 downto 0);
  M04_AXI_awlock(0) <= m04_couplers_to_axi_interconnect_0_AWLOCK(0);
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M04_AXI_awsize(2 downto 0) <= m04_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_axi_interconnect_0_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_axi_interconnect_0_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_axi_interconnect_0_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M04_AXI_wlast(0) <= m04_couplers_to_axi_interconnect_0_WLAST(0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_axi_interconnect_0_WVALID(0);
  S00_AXI_arready <= axi_interconnect_0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_interconnect_0_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_interconnect_0_to_s00_couplers_BVALID;
  S00_AXI_rdata(127 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(127 downto 0);
  S00_AXI_rlast <= axi_interconnect_0_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_interconnect_0_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_interconnect_0_to_s00_couplers_WREADY;
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net(0) <= ARESETN(0);
  axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_interconnect_0_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_interconnect_0_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_interconnect_0_to_s00_couplers_WDATA(127 downto 0) <= S00_AXI_wdata(127 downto 0);
  axi_interconnect_0_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_interconnect_0_to_s00_couplers_WSTRB(15 downto 0) <= S00_AXI_wstrb(15 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
  m01_couplers_to_axi_interconnect_0_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_interconnect_0_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_interconnect_0_BRESP <= M01_AXI_bresp;
  m01_couplers_to_axi_interconnect_0_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_interconnect_0_RDATA <= M01_AXI_rdata;
  m01_couplers_to_axi_interconnect_0_RLAST <= M01_AXI_rlast;
  m01_couplers_to_axi_interconnect_0_RRESP <= M01_AXI_rresp;
  m01_couplers_to_axi_interconnect_0_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_interconnect_0_WREADY <= M01_AXI_wready;
  m02_couplers_to_axi_interconnect_0_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_axi_interconnect_0_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_axi_interconnect_0_RLAST(0) <= M02_AXI_rlast(0);
  m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_axi_interconnect_0_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_axi_interconnect_0_ARREADY(0) <= M03_AXI_arready(0);
  m03_couplers_to_axi_interconnect_0_AWREADY(0) <= M03_AXI_awready(0);
  m03_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_axi_interconnect_0_BVALID(0) <= M03_AXI_bvalid(0);
  m03_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_axi_interconnect_0_RVALID(0) <= M03_AXI_rvalid(0);
  m03_couplers_to_axi_interconnect_0_WREADY(0) <= M03_AXI_wready(0);
  m04_couplers_to_axi_interconnect_0_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_axi_interconnect_0_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_axi_interconnect_0_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_axi_interconnect_0_RLAST(0) <= M04_AXI_rlast(0);
  m04_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_axi_interconnect_0_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_axi_interconnect_0_WREADY(0) <= M04_AXI_wready(0);
m00_couplers: entity work.m00_couplers_imp_GDIZOZ
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1RZ3XKM
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr => m01_couplers_to_axi_interconnect_0_ARADDR,
      M_AXI_arburst => m01_couplers_to_axi_interconnect_0_ARBURST,
      M_AXI_arcache => m01_couplers_to_axi_interconnect_0_ARCACHE,
      M_AXI_arlen => m01_couplers_to_axi_interconnect_0_ARLEN,
      M_AXI_arlock => m01_couplers_to_axi_interconnect_0_ARLOCK,
      M_AXI_arprot => m01_couplers_to_axi_interconnect_0_ARPROT,
      M_AXI_arqos => m01_couplers_to_axi_interconnect_0_ARQOS,
      M_AXI_arready => m01_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion => m01_couplers_to_axi_interconnect_0_ARREGION,
      M_AXI_arsize => m01_couplers_to_axi_interconnect_0_ARSIZE,
      M_AXI_arvalid => m01_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr => m01_couplers_to_axi_interconnect_0_AWADDR,
      M_AXI_awburst => m01_couplers_to_axi_interconnect_0_AWBURST,
      M_AXI_awcache => m01_couplers_to_axi_interconnect_0_AWCACHE,
      M_AXI_awlen => m01_couplers_to_axi_interconnect_0_AWLEN,
      M_AXI_awlock => m01_couplers_to_axi_interconnect_0_AWLOCK,
      M_AXI_awprot => m01_couplers_to_axi_interconnect_0_AWPROT,
      M_AXI_awqos => m01_couplers_to_axi_interconnect_0_AWQOS,
      M_AXI_awready => m01_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion => m01_couplers_to_axi_interconnect_0_AWREGION,
      M_AXI_awsize => m01_couplers_to_axi_interconnect_0_AWSIZE,
      M_AXI_awvalid => m01_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m01_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp => m01_couplers_to_axi_interconnect_0_BRESP,
      M_AXI_bvalid => m01_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata => m01_couplers_to_axi_interconnect_0_RDATA,
      M_AXI_rlast => m01_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m01_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp => m01_couplers_to_axi_interconnect_0_RRESP,
      M_AXI_rvalid => m01_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata => m01_couplers_to_axi_interconnect_0_WDATA,
      M_AXI_wlast => m01_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m01_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb => m01_couplers_to_axi_interconnect_0_WSTRB,
      M_AXI_wvalid => m01_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr => xbar_to_m01_couplers_ARADDR(32),
      S_AXI_arburst => xbar_to_m01_couplers_ARBURST(2),
      S_AXI_arcache => xbar_to_m01_couplers_ARCACHE(4),
      S_AXI_arlen => xbar_to_m01_couplers_ARLEN(8),
      S_AXI_arlock => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot => xbar_to_m01_couplers_ARPROT(3),
      S_AXI_arqos => xbar_to_m01_couplers_ARQOS(4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m01_couplers_ARREGION(4),
      S_AXI_arsize => xbar_to_m01_couplers_ARSIZE(3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr => xbar_to_m01_couplers_AWADDR(32),
      S_AXI_awburst => xbar_to_m01_couplers_AWBURST(2),
      S_AXI_awcache => xbar_to_m01_couplers_AWCACHE(4),
      S_AXI_awlen => xbar_to_m01_couplers_AWLEN(8),
      S_AXI_awlock => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot => xbar_to_m01_couplers_AWPROT(3),
      S_AXI_awqos => xbar_to_m01_couplers_AWQOS(4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m01_couplers_AWREGION(4),
      S_AXI_awsize => xbar_to_m01_couplers_AWSIZE(3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp => xbar_to_m01_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata => xbar_to_m01_couplers_RDATA,
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp => xbar_to_m01_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata => xbar_to_m01_couplers_WDATA(32),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m01_couplers_WSTRB(4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_PCF1X4
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => m02_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m02_couplers_to_axi_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m02_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m02_couplers_to_axi_interconnect_0_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m02_couplers_to_axi_interconnect_0_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m02_couplers_to_axi_interconnect_0_ARQOS(3 downto 0),
      M_AXI_arready(0) => m02_couplers_to_axi_interconnect_0_ARREADY(0),
      M_AXI_arregion(3 downto 0) => m02_couplers_to_axi_interconnect_0_ARREGION(3 downto 0),
      M_AXI_arsize(2 downto 0) => m02_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => m02_couplers_to_axi_interconnect_0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m02_couplers_to_axi_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m02_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m02_couplers_to_axi_interconnect_0_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m02_couplers_to_axi_interconnect_0_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m02_couplers_to_axi_interconnect_0_AWQOS(3 downto 0),
      M_AXI_awready(0) => m02_couplers_to_axi_interconnect_0_AWREADY(0),
      M_AXI_awregion(3 downto 0) => m02_couplers_to_axi_interconnect_0_AWREGION(3 downto 0),
      M_AXI_awsize(2 downto 0) => m02_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => m02_couplers_to_axi_interconnect_0_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_axi_interconnect_0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_axi_interconnect_0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rlast(0) => m02_couplers_to_axi_interconnect_0_RLAST(0),
      M_AXI_rready(0) => m02_couplers_to_axi_interconnect_0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_axi_interconnect_0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wlast(0) => m02_couplers_to_axi_interconnect_0_WLAST(0),
      M_AXI_wready(0) => m02_couplers_to_axi_interconnect_0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_axi_interconnect_0_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arburst(1 downto 0) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      S_AXI_arcache(3 downto 0) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      S_AXI_arlen(7 downto 0) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      S_AXI_arlock(0) => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arqos(3 downto 0) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arregion(3 downto 0) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      S_AXI_arsize(2 downto 0) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awburst(1 downto 0) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      S_AXI_awcache(3 downto 0) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      S_AXI_awlen(7 downto 0) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      S_AXI_awlock(0) => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awqos(3 downto 0) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awregion(3 downto 0) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      S_AXI_awsize(2 downto 0) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rlast(0) => xbar_to_m02_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wlast(0) => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_11EJTOD
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => m03_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready(0) => m03_couplers_to_axi_interconnect_0_ARREADY(0),
      M_AXI_arvalid(0) => m03_couplers_to_axi_interconnect_0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready(0) => m03_couplers_to_axi_interconnect_0_AWREADY(0),
      M_AXI_awvalid(0) => m03_couplers_to_axi_interconnect_0_AWVALID(0),
      M_AXI_bready(0) => m03_couplers_to_axi_interconnect_0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m03_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m03_couplers_to_axi_interconnect_0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m03_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready(0) => m03_couplers_to_axi_interconnect_0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m03_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m03_couplers_to_axi_interconnect_0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m03_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready(0) => m03_couplers_to_axi_interconnect_0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m03_couplers_to_axi_interconnect_0_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arburst(1 downto 0) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      S_AXI_arcache(3 downto 0) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      S_AXI_arlen(7 downto 0) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      S_AXI_arlock(0) => xbar_to_m03_couplers_ARLOCK(3),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arqos(3 downto 0) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      S_AXI_arsize(2 downto 0) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awburst(1 downto 0) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      S_AXI_awcache(3 downto 0) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      S_AXI_awlen(7 downto 0) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      S_AXI_awlock(0) => xbar_to_m03_couplers_AWLOCK(3),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awqos(3 downto 0) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      S_AXI_awsize(2 downto 0) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m03_couplers_RLAST,
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wlast => xbar_to_m03_couplers_WLAST(3),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_1XUKEJP
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => m04_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m04_couplers_to_axi_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m04_couplers_to_axi_interconnect_0_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m04_couplers_to_axi_interconnect_0_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m04_couplers_to_axi_interconnect_0_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m04_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready(0) => m04_couplers_to_axi_interconnect_0_ARREADY(0),
      M_AXI_arsize(2 downto 0) => m04_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => m04_couplers_to_axi_interconnect_0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m04_couplers_to_axi_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m04_couplers_to_axi_interconnect_0_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m04_couplers_to_axi_interconnect_0_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m04_couplers_to_axi_interconnect_0_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m04_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready(0) => m04_couplers_to_axi_interconnect_0_AWREADY(0),
      M_AXI_awsize(2 downto 0) => m04_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => m04_couplers_to_axi_interconnect_0_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_axi_interconnect_0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_axi_interconnect_0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m04_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rlast(0) => m04_couplers_to_axi_interconnect_0_RLAST(0),
      M_AXI_rready(0) => m04_couplers_to_axi_interconnect_0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_axi_interconnect_0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m04_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wlast(0) => m04_couplers_to_axi_interconnect_0_WLAST(0),
      M_AXI_wready(0) => m04_couplers_to_axi_interconnect_0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_axi_interconnect_0_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arburst(1 downto 0) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      S_AXI_arcache(3 downto 0) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      S_AXI_arlen(7 downto 0) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      S_AXI_arlock(0) => xbar_to_m04_couplers_ARLOCK(4),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arready(0) => xbar_to_m04_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      S_AXI_arvalid(0) => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awburst(1 downto 0) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      S_AXI_awcache(3 downto 0) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      S_AXI_awlen(7 downto 0) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      S_AXI_awlock(0) => xbar_to_m04_couplers_AWLOCK(4),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awready(0) => xbar_to_m04_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      S_AXI_awvalid(0) => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rlast(0) => xbar_to_m04_couplers_RLAST(0),
      S_AXI_rready(0) => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wlast(0) => xbar_to_m04_couplers_WLAST(4),
      S_AXI_wready(0) => xbar_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => xbar_to_m04_couplers_WVALID(4)
    );
s00_couplers: entity work.s00_couplers_imp_14J6UX5
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => axi_interconnect_0_to_s00_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_interconnect_0_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_0_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => axi_interconnect_0_to_s00_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_interconnect_0_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_0_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_interconnect_0_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_0_to_s00_couplers_BVALID,
      S_AXI_rdata(127 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(127 downto 0),
      S_AXI_rlast => axi_interconnect_0_to_s00_couplers_RLAST,
      S_AXI_rready => axi_interconnect_0_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_0_to_s00_couplers_RVALID,
      S_AXI_wdata(127 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(127 downto 0),
      S_AXI_wlast => axi_interconnect_0_to_s00_couplers_WLAST,
      S_AXI_wready => axi_interconnect_0_to_s00_couplers_WREADY,
      S_AXI_wstrb(15 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(15 downto 0),
      S_AXI_wvalid => axi_interconnect_0_to_s00_couplers_WVALID
    );
xbar: component top_xbar_1
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net(0),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(9 downto 8) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      m_axi_arburst(7 downto 6) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(19 downto 16) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      m_axi_arcache(15 downto 12) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(39 downto 32) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      m_axi_arlen(31 downto 24) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(4) => xbar_to_m04_couplers_ARLOCK(4),
      m_axi_arlock(3) => xbar_to_m03_couplers_ARLOCK(3),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(19 downto 16) => NLW_xbar_m_axi_arqos_UNCONNECTED(19 downto 16),
      m_axi_arqos(15 downto 12) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      m_axi_arqos(11 downto 8) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(19 downto 16) => NLW_xbar_m_axi_arregion_UNCONNECTED(19 downto 16),
      m_axi_arregion(15 downto 12) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      m_axi_arregion(11 downto 8) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(14 downto 12) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      m_axi_arsize(11 downto 9) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(9 downto 8) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      m_axi_awburst(7 downto 6) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(19 downto 16) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      m_axi_awcache(15 downto 12) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(39 downto 32) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      m_axi_awlen(31 downto 24) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(4) => xbar_to_m04_couplers_AWLOCK(4),
      m_axi_awlock(3) => xbar_to_m03_couplers_AWLOCK(3),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(19 downto 16) => NLW_xbar_m_axi_awqos_UNCONNECTED(19 downto 16),
      m_axi_awqos(15 downto 12) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      m_axi_awqos(11 downto 8) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(19 downto 16) => NLW_xbar_m_axi_awregion_UNCONNECTED(19 downto 16),
      m_axi_awregion(15 downto 12) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      m_axi_awregion(11 downto 8) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(14 downto 12) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      m_axi_awsize(11 downto 9) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(2) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(62) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(61) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(60) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(59) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(58) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(57) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(56) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(55) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(54) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(53) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(52) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(51) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(50) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(49) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(48) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(47) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(46) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(45) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(44) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(43) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(42) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(41) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(40) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(39) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(38) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(37) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(36) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(35) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(34) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(33) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(32) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rlast(4) => xbar_to_m04_couplers_RLAST(0),
      m_axi_rlast(3) => xbar_to_m03_couplers_RLAST,
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST(0),
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(2) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(4) => xbar_to_m04_couplers_WLAST(4),
      m_axi_wlast(3) => xbar_to_m03_couplers_WLAST(3),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_axi_interconnect_0_2 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S02_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_ACLK : in STD_LOGIC;
    S03_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S03_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_ACLK : in STD_LOGIC;
    S04_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arready : out STD_LOGIC;
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC;
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awready : out STD_LOGIC;
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awvalid : in STD_LOGIC;
    S04_AXI_bready : in STD_LOGIC;
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_bvalid : out STD_LOGIC;
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_rlast : out STD_LOGIC;
    S04_AXI_rready : in STD_LOGIC;
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rvalid : out STD_LOGIC;
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_wlast : in STD_LOGIC;
    S04_AXI_wready : out STD_LOGIC;
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_wvalid : in STD_LOGIC
  );
end top_axi_interconnect_0_2;

architecture STRUCTURE of top_axi_interconnect_0_2 is
  component top_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 639 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 79 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 639 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_xbar_2;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_0_to_s02_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s03_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s03_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s03_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s03_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_0_to_s03_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_to_s03_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s04_couplers_BREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_BVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_RLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s04_couplers_RREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_RVALID : STD_LOGIC;
  signal axi_interconnect_0_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_WLAST : STD_LOGIC;
  signal axi_interconnect_0_to_s04_couplers_WREADY : STD_LOGIC;
  signal axi_interconnect_0_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s04_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 383 downto 256 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s03_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s03_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s03_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s04_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 639 downto 512 );
  signal s04_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s04_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s04_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s04_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s04_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 128 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_interconnect_0_ARBURST(1 downto 0);
  M00_AXI_arid(2 downto 0) <= m00_couplers_to_axi_interconnect_0_ARID(2 downto 0);
  M00_AXI_arlen(7 downto 0) <= m00_couplers_to_axi_interconnect_0_ARLEN(7 downto 0);
  M00_AXI_arregion(3 downto 0) <= m00_couplers_to_axi_interconnect_0_ARREGION(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_interconnect_0_AWBURST(1 downto 0);
  M00_AXI_awid(2 downto 0) <= m00_couplers_to_axi_interconnect_0_AWID(2 downto 0);
  M00_AXI_awlen(7 downto 0) <= m00_couplers_to_axi_interconnect_0_AWLEN(7 downto 0);
  M00_AXI_awregion(3 downto 0) <= m00_couplers_to_axi_interconnect_0_AWREGION(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(127 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(127 downto 0);
  M00_AXI_wlast <= m00_couplers_to_axi_interconnect_0_WLAST;
  M00_AXI_wstrb(15 downto 0) <= m00_couplers_to_axi_interconnect_0_WSTRB(15 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_0_WVALID;
  S00_AXI_arready(0) <= axi_interconnect_0_to_s00_couplers_ARREADY(0);
  S00_AXI_rdata(127 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(127 downto 0);
  S00_AXI_rlast(0) <= axi_interconnect_0_to_s00_couplers_RLAST(0);
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= axi_interconnect_0_to_s00_couplers_RVALID(0);
  S01_AXI_awready(0) <= axi_interconnect_0_to_s01_couplers_AWREADY(0);
  S01_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid(0) <= axi_interconnect_0_to_s01_couplers_BVALID(0);
  S01_AXI_wready(0) <= axi_interconnect_0_to_s01_couplers_WREADY(0);
  S02_AXI_arready(0) <= axi_interconnect_0_to_s02_couplers_ARREADY(0);
  S02_AXI_rdata(127 downto 0) <= axi_interconnect_0_to_s02_couplers_RDATA(127 downto 0);
  S02_AXI_rlast(0) <= axi_interconnect_0_to_s02_couplers_RLAST(0);
  S02_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s02_couplers_RRESP(1 downto 0);
  S02_AXI_rvalid(0) <= axi_interconnect_0_to_s02_couplers_RVALID(0);
  S03_AXI_awready(0) <= axi_interconnect_0_to_s03_couplers_AWREADY(0);
  S03_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s03_couplers_BRESP(1 downto 0);
  S03_AXI_bvalid(0) <= axi_interconnect_0_to_s03_couplers_BVALID(0);
  S03_AXI_wready(0) <= axi_interconnect_0_to_s03_couplers_WREADY(0);
  S04_AXI_arready <= axi_interconnect_0_to_s04_couplers_ARREADY;
  S04_AXI_awready <= axi_interconnect_0_to_s04_couplers_AWREADY;
  S04_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s04_couplers_BRESP(1 downto 0);
  S04_AXI_bvalid <= axi_interconnect_0_to_s04_couplers_BVALID;
  S04_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s04_couplers_RDATA(31 downto 0);
  S04_AXI_rlast <= axi_interconnect_0_to_s04_couplers_RLAST;
  S04_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s04_couplers_RRESP(1 downto 0);
  S04_AXI_rvalid <= axi_interconnect_0_to_s04_couplers_RVALID;
  S04_AXI_wready <= axi_interconnect_0_to_s04_couplers_WREADY;
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net(0) <= ARESETN(0);
  axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  axi_interconnect_0_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  axi_interconnect_0_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s01_couplers_AWVALID(0) <= S01_AXI_awvalid(0);
  axi_interconnect_0_to_s01_couplers_BREADY(0) <= S01_AXI_bready(0);
  axi_interconnect_0_to_s01_couplers_WDATA(127 downto 0) <= S01_AXI_wdata(127 downto 0);
  axi_interconnect_0_to_s01_couplers_WLAST(0) <= S01_AXI_wlast(0);
  axi_interconnect_0_to_s01_couplers_WSTRB(15 downto 0) <= S01_AXI_wstrb(15 downto 0);
  axi_interconnect_0_to_s01_couplers_WVALID(0) <= S01_AXI_wvalid(0);
  axi_interconnect_0_to_s02_couplers_ARADDR(31 downto 0) <= S02_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s02_couplers_ARBURST(1 downto 0) <= S02_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s02_couplers_ARCACHE(3 downto 0) <= S02_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s02_couplers_ARLEN(7 downto 0) <= S02_AXI_arlen(7 downto 0);
  axi_interconnect_0_to_s02_couplers_ARPROT(2 downto 0) <= S02_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s02_couplers_ARSIZE(2 downto 0) <= S02_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s02_couplers_ARVALID(0) <= S02_AXI_arvalid(0);
  axi_interconnect_0_to_s02_couplers_RREADY(0) <= S02_AXI_rready(0);
  axi_interconnect_0_to_s03_couplers_AWADDR(31 downto 0) <= S03_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s03_couplers_AWBURST(1 downto 0) <= S03_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s03_couplers_AWCACHE(3 downto 0) <= S03_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s03_couplers_AWLEN(7 downto 0) <= S03_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s03_couplers_AWPROT(2 downto 0) <= S03_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s03_couplers_AWSIZE(2 downto 0) <= S03_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s03_couplers_AWVALID(0) <= S03_AXI_awvalid(0);
  axi_interconnect_0_to_s03_couplers_BREADY(0) <= S03_AXI_bready(0);
  axi_interconnect_0_to_s03_couplers_WDATA(127 downto 0) <= S03_AXI_wdata(127 downto 0);
  axi_interconnect_0_to_s03_couplers_WLAST(0) <= S03_AXI_wlast(0);
  axi_interconnect_0_to_s03_couplers_WSTRB(15 downto 0) <= S03_AXI_wstrb(15 downto 0);
  axi_interconnect_0_to_s03_couplers_WVALID(0) <= S03_AXI_wvalid(0);
  axi_interconnect_0_to_s04_couplers_ARADDR(31 downto 0) <= S04_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s04_couplers_ARBURST(1 downto 0) <= S04_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s04_couplers_ARCACHE(3 downto 0) <= S04_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s04_couplers_ARLEN(7 downto 0) <= S04_AXI_arlen(7 downto 0);
  axi_interconnect_0_to_s04_couplers_ARPROT(2 downto 0) <= S04_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s04_couplers_ARSIZE(2 downto 0) <= S04_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s04_couplers_ARVALID <= S04_AXI_arvalid;
  axi_interconnect_0_to_s04_couplers_AWADDR(31 downto 0) <= S04_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s04_couplers_AWBURST(1 downto 0) <= S04_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s04_couplers_AWCACHE(3 downto 0) <= S04_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s04_couplers_AWLEN(7 downto 0) <= S04_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s04_couplers_AWPROT(2 downto 0) <= S04_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s04_couplers_AWSIZE(2 downto 0) <= S04_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s04_couplers_AWVALID <= S04_AXI_awvalid;
  axi_interconnect_0_to_s04_couplers_BREADY <= S04_AXI_bready;
  axi_interconnect_0_to_s04_couplers_RREADY <= S04_AXI_rready;
  axi_interconnect_0_to_s04_couplers_WDATA(31 downto 0) <= S04_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s04_couplers_WLAST <= S04_AXI_wlast;
  axi_interconnect_0_to_s04_couplers_WSTRB(3 downto 0) <= S04_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s04_couplers_WVALID <= S04_AXI_wvalid;
  m00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_0_BID(2 downto 0) <= M00_AXI_bid(2 downto 0);
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_0_RDATA(127 downto 0) <= M00_AXI_rdata(127 downto 0);
  m00_couplers_to_axi_interconnect_0_RID(2 downto 0) <= M00_AXI_rid(2 downto 0);
  m00_couplers_to_axi_interconnect_0_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_158FRUC
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arid(2 downto 0) => m00_couplers_to_axi_interconnect_0_ARID(2 downto 0),
      M_AXI_arlen(7 downto 0) => m00_couplers_to_axi_interconnect_0_ARLEN(7 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arregion(3 downto 0) => m00_couplers_to_axi_interconnect_0_ARREGION(3 downto 0),
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awid(2 downto 0) => m00_couplers_to_axi_interconnect_0_AWID(2 downto 0),
      M_AXI_awlen(7 downto 0) => m00_couplers_to_axi_interconnect_0_AWLEN(7 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awregion(3 downto 0) => m00_couplers_to_axi_interconnect_0_AWREGION(3 downto 0),
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bid(2 downto 0) => m00_couplers_to_axi_interconnect_0_BID(2 downto 0),
      M_AXI_bready => m00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(127 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(127 downto 0),
      M_AXI_rid(2 downto 0) => m00_couplers_to_axi_interconnect_0_RID(2 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(127 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(127 downto 0),
      M_AXI_wlast => m00_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(15 downto 0) => m00_couplers_to_axi_interconnect_0_WSTRB(15 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(127 downto 0) => xbar_to_m00_couplers_RDATA(127 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(127 downto 0) => xbar_to_m00_couplers_WDATA(127 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(15 downto 0) => xbar_to_m00_couplers_WSTRB(15 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_H2TAQ6
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_rdata(127 downto 0) => s00_couplers_to_xbar_RDATA(127 downto 0),
      M_AXI_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => axi_interconnect_0_to_s00_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => axi_interconnect_0_to_s00_couplers_ARVALID(0),
      S_AXI_rdata(127 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(127 downto 0),
      S_AXI_rlast(0) => axi_interconnect_0_to_s00_couplers_RLAST(0),
      S_AXI_rready(0) => axi_interconnect_0_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_interconnect_0_to_s00_couplers_RVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_1Q6K5QJ
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s01_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s01_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid(0) => s01_couplers_to_xbar_BVALID(1),
      M_AXI_wdata(127 downto 0) => s01_couplers_to_xbar_WDATA(127 downto 0),
      M_AXI_wlast(0) => s01_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(15 downto 0) => s01_couplers_to_xbar_WSTRB(15 downto 0),
      M_AXI_wvalid(0) => s01_couplers_to_xbar_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => axi_interconnect_0_to_s01_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => axi_interconnect_0_to_s01_couplers_AWVALID(0),
      S_AXI_bready(0) => axi_interconnect_0_to_s01_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_0_to_s01_couplers_BVALID(0),
      S_AXI_wdata(127 downto 0) => axi_interconnect_0_to_s01_couplers_WDATA(127 downto 0),
      S_AXI_wlast(0) => axi_interconnect_0_to_s01_couplers_WLAST(0),
      S_AXI_wready(0) => axi_interconnect_0_to_s01_couplers_WREADY(0),
      S_AXI_wstrb(15 downto 0) => axi_interconnect_0_to_s01_couplers_WSTRB(15 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_0_to_s01_couplers_WVALID(0)
    );
s02_couplers: entity work.s02_couplers_imp_Q14SZP
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s02_couplers_to_xbar_ARREADY(2),
      M_AXI_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s02_couplers_to_xbar_ARVALID(0),
      M_AXI_rdata(127 downto 0) => s02_couplers_to_xbar_RDATA(383 downto 256),
      M_AXI_rlast(0) => s02_couplers_to_xbar_RLAST(2),
      M_AXI_rready(0) => s02_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      M_AXI_rvalid(0) => s02_couplers_to_xbar_RVALID(2),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s02_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s02_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s02_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_to_s02_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s02_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => axi_interconnect_0_to_s02_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s02_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => axi_interconnect_0_to_s02_couplers_ARVALID(0),
      S_AXI_rdata(127 downto 0) => axi_interconnect_0_to_s02_couplers_RDATA(127 downto 0),
      S_AXI_rlast(0) => axi_interconnect_0_to_s02_couplers_RLAST(0),
      S_AXI_rready(0) => axi_interconnect_0_to_s02_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_interconnect_0_to_s02_couplers_RVALID(0)
    );
s03_couplers: entity work.s03_couplers_imp_ZLCCW0
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_awaddr(31 downto 0) => s03_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s03_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s03_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s03_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awprot(2 downto 0) => s03_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s03_couplers_to_xbar_AWREADY(3),
      M_AXI_awsize(2 downto 0) => s03_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s03_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s03_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s03_couplers_to_xbar_BRESP(7 downto 6),
      M_AXI_bvalid(0) => s03_couplers_to_xbar_BVALID(3),
      M_AXI_wdata(127 downto 0) => s03_couplers_to_xbar_WDATA(127 downto 0),
      M_AXI_wlast(0) => s03_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s03_couplers_to_xbar_WREADY(3),
      M_AXI_wstrb(15 downto 0) => s03_couplers_to_xbar_WSTRB(15 downto 0),
      M_AXI_wvalid(0) => s03_couplers_to_xbar_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s03_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s03_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s03_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s03_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s03_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => axi_interconnect_0_to_s03_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s03_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => axi_interconnect_0_to_s03_couplers_AWVALID(0),
      S_AXI_bready(0) => axi_interconnect_0_to_s03_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_0_to_s03_couplers_BVALID(0),
      S_AXI_wdata(127 downto 0) => axi_interconnect_0_to_s03_couplers_WDATA(127 downto 0),
      S_AXI_wlast(0) => axi_interconnect_0_to_s03_couplers_WLAST(0),
      S_AXI_wready(0) => axi_interconnect_0_to_s03_couplers_WREADY(0),
      S_AXI_wstrb(15 downto 0) => axi_interconnect_0_to_s03_couplers_WSTRB(15 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_0_to_s03_couplers_WVALID(0)
    );
s04_couplers: entity work.s04_couplers_imp_1Y96WIG
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s04_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s04_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s04_couplers_to_xbar_ARREADY(4),
      M_AXI_arsize(2 downto 0) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s04_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s04_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s04_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s04_couplers_to_xbar_AWREADY(4),
      M_AXI_awsize(2 downto 0) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s04_couplers_to_xbar_AWVALID,
      M_AXI_bready => s04_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s04_couplers_to_xbar_BRESP(9 downto 8),
      M_AXI_bvalid => s04_couplers_to_xbar_BVALID(4),
      M_AXI_rdata(127 downto 0) => s04_couplers_to_xbar_RDATA(639 downto 512),
      M_AXI_rlast => s04_couplers_to_xbar_RLAST(4),
      M_AXI_rready => s04_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s04_couplers_to_xbar_RRESP(9 downto 8),
      M_AXI_rvalid => s04_couplers_to_xbar_RVALID(4),
      M_AXI_wdata(127 downto 0) => s04_couplers_to_xbar_WDATA(127 downto 0),
      M_AXI_wlast => s04_couplers_to_xbar_WLAST,
      M_AXI_wready => s04_couplers_to_xbar_WREADY(4),
      M_AXI_wstrb(15 downto 0) => s04_couplers_to_xbar_WSTRB(15 downto 0),
      M_AXI_wvalid => s04_couplers_to_xbar_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s04_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s04_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s04_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_to_s04_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s04_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_interconnect_0_to_s04_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s04_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_interconnect_0_to_s04_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s04_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s04_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s04_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s04_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s04_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_interconnect_0_to_s04_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s04_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_interconnect_0_to_s04_couplers_AWVALID,
      S_AXI_bready => axi_interconnect_0_to_s04_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_interconnect_0_to_s04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s04_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_interconnect_0_to_s04_couplers_RLAST,
      S_AXI_rready => axi_interconnect_0_to_s04_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_interconnect_0_to_s04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s04_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_interconnect_0_to_s04_couplers_WLAST,
      S_AXI_wready => axi_interconnect_0_to_s04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s04_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_interconnect_0_to_s04_couplers_WVALID
    );
xbar: component top_xbar_2
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net(0),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_xbar_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => NLW_xbar_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_xbar_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_xbar_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => NLW_xbar_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_xbar_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(127 downto 0) => xbar_to_m00_couplers_RDATA(127 downto 0),
      m_axi_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(127 downto 0) => xbar_to_m00_couplers_WDATA(127 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(15 downto 0) => xbar_to_m00_couplers_WSTRB(15 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(159 downto 128) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(127 downto 96) => B"00000000000000000000000000000000",
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(9 downto 8) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(7 downto 6) => B"00",
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => B"00",
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(19 downto 16) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(15 downto 12) => B"0000",
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => B"0000",
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(14 downto 0) => B"000000000000000",
      s_axi_arlen(39 downto 32) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(31 downto 24) => B"00000000",
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => B"00000000",
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(4) => s04_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(3 downto 0) => B"0000",
      s_axi_arprot(14 downto 12) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(11 downto 9) => B"000",
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => B"000",
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(19 downto 16) => s04_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(15 downto 0) => B"0000000000000000",
      s_axi_arready(4) => s04_couplers_to_xbar_ARREADY(4),
      s_axi_arready(3) => NLW_xbar_s_axi_arready_UNCONNECTED(3),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY(2),
      s_axi_arready(1) => NLW_xbar_s_axi_arready_UNCONNECTED(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(14 downto 12) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(11 downto 9) => B"000",
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => B"000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(4) => s04_couplers_to_xbar_ARVALID,
      s_axi_arvalid(3) => '0',
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID(0),
      s_axi_arvalid(1) => '0',
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(159 downto 128) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(127 downto 96) => s03_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(95 downto 64) => B"00000000000000000000000000000000",
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(9 downto 8) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(7 downto 6) => s03_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(5 downto 4) => B"00",
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(19 downto 16) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(15 downto 12) => s03_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(11 downto 8) => B"0000",
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(14 downto 0) => B"000000000000000",
      s_axi_awlen(39 downto 32) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(31 downto 24) => s03_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(23 downto 16) => B"00000000",
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(4) => s04_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(3 downto 0) => B"0000",
      s_axi_awprot(14 downto 12) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(11 downto 9) => s03_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(8 downto 6) => B"000",
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(19 downto 16) => s04_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(15 downto 0) => B"0000000000000000",
      s_axi_awready(4) => s04_couplers_to_xbar_AWREADY(4),
      s_axi_awready(3) => s03_couplers_to_xbar_AWREADY(3),
      s_axi_awready(2) => NLW_xbar_s_axi_awready_UNCONNECTED(2),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => NLW_xbar_s_axi_awready_UNCONNECTED(0),
      s_axi_awsize(14 downto 12) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(11 downto 9) => s03_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(8 downto 6) => B"000",
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid(4) => s04_couplers_to_xbar_AWVALID,
      s_axi_awvalid(3) => s03_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(2) => '0',
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(0) => '0',
      s_axi_bid(14 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(14 downto 0),
      s_axi_bready(4) => s04_couplers_to_xbar_BREADY,
      s_axi_bready(3) => s03_couplers_to_xbar_BREADY(0),
      s_axi_bready(2) => '0',
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY(0),
      s_axi_bready(0) => '0',
      s_axi_bresp(9 downto 8) => s04_couplers_to_xbar_BRESP(9 downto 8),
      s_axi_bresp(7 downto 6) => s03_couplers_to_xbar_BRESP(7 downto 6),
      s_axi_bresp(5 downto 4) => NLW_xbar_s_axi_bresp_UNCONNECTED(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => NLW_xbar_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid(4) => s04_couplers_to_xbar_BVALID(4),
      s_axi_bvalid(3) => s03_couplers_to_xbar_BVALID(3),
      s_axi_bvalid(2) => NLW_xbar_s_axi_bvalid_UNCONNECTED(2),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => NLW_xbar_s_axi_bvalid_UNCONNECTED(0),
      s_axi_rdata(639 downto 512) => s04_couplers_to_xbar_RDATA(639 downto 512),
      s_axi_rdata(511 downto 384) => NLW_xbar_s_axi_rdata_UNCONNECTED(511 downto 384),
      s_axi_rdata(383 downto 256) => s02_couplers_to_xbar_RDATA(383 downto 256),
      s_axi_rdata(255 downto 128) => NLW_xbar_s_axi_rdata_UNCONNECTED(255 downto 128),
      s_axi_rdata(127 downto 0) => s00_couplers_to_xbar_RDATA(127 downto 0),
      s_axi_rid(14 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(14 downto 0),
      s_axi_rlast(4) => s04_couplers_to_xbar_RLAST(4),
      s_axi_rlast(3) => NLW_xbar_s_axi_rlast_UNCONNECTED(3),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST(2),
      s_axi_rlast(1) => NLW_xbar_s_axi_rlast_UNCONNECTED(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(4) => s04_couplers_to_xbar_RREADY,
      s_axi_rready(3) => '0',
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY(0),
      s_axi_rready(1) => '0',
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(9 downto 8) => s04_couplers_to_xbar_RRESP(9 downto 8),
      s_axi_rresp(7 downto 6) => NLW_xbar_s_axi_rresp_UNCONNECTED(7 downto 6),
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => NLW_xbar_s_axi_rresp_UNCONNECTED(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(4) => s04_couplers_to_xbar_RVALID(4),
      s_axi_rvalid(3) => NLW_xbar_s_axi_rvalid_UNCONNECTED(3),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID(2),
      s_axi_rvalid(1) => NLW_xbar_s_axi_rvalid_UNCONNECTED(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(639 downto 512) => s04_couplers_to_xbar_WDATA(127 downto 0),
      s_axi_wdata(511 downto 384) => s03_couplers_to_xbar_WDATA(127 downto 0),
      s_axi_wdata(383 downto 256) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wdata(255 downto 128) => s01_couplers_to_xbar_WDATA(127 downto 0),
      s_axi_wdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wlast(4) => s04_couplers_to_xbar_WLAST,
      s_axi_wlast(3) => s03_couplers_to_xbar_WLAST(0),
      s_axi_wlast(2) => '1',
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST(0),
      s_axi_wlast(0) => '1',
      s_axi_wready(4) => s04_couplers_to_xbar_WREADY(4),
      s_axi_wready(3) => s03_couplers_to_xbar_WREADY(3),
      s_axi_wready(2) => NLW_xbar_s_axi_wready_UNCONNECTED(2),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => NLW_xbar_s_axi_wready_UNCONNECTED(0),
      s_axi_wstrb(79 downto 64) => s04_couplers_to_xbar_WSTRB(15 downto 0),
      s_axi_wstrb(63 downto 48) => s03_couplers_to_xbar_WSTRB(15 downto 0),
      s_axi_wstrb(47 downto 32) => B"1111111111111111",
      s_axi_wstrb(31 downto 16) => s01_couplers_to_xbar_WSTRB(15 downto 0),
      s_axi_wstrb(15 downto 0) => B"1111111111111111",
      s_axi_wvalid(4) => s04_couplers_to_xbar_WVALID,
      s_axi_wvalid(3) => s03_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(2) => '0',
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_axi_interconnect_0_3 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end top_axi_interconnect_0_3;

architecture STRUCTURE of top_axi_interconnect_0_3 is
  component top_xbar_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 191 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component top_xbar_3;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m01_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m02_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m03_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m04_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m05_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1(0) <= M00_ARESETN(0);
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_axi_interconnect_0_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_axi_interconnect_0_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_axi_interconnect_0_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_axi_interconnect_0_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_axi_interconnect_0_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1(0) <= M01_ARESETN(0);
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_axi_interconnect_0_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_axi_interconnect_0_AWVALID;
  M01_AXI_bready <= m01_couplers_to_axi_interconnect_0_BREADY;
  M01_AXI_rready <= m01_couplers_to_axi_interconnect_0_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_axi_interconnect_0_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1(0) <= M02_ARESETN(0);
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_axi_interconnect_0_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_axi_interconnect_0_AWVALID;
  M02_AXI_bready <= m02_couplers_to_axi_interconnect_0_BREADY;
  M02_AXI_rready <= m02_couplers_to_axi_interconnect_0_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_axi_interconnect_0_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1(0) <= M03_ARESETN(0);
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_axi_interconnect_0_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_axi_interconnect_0_AWVALID;
  M03_AXI_bready <= m03_couplers_to_axi_interconnect_0_BREADY;
  M03_AXI_rready <= m03_couplers_to_axi_interconnect_0_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_axi_interconnect_0_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(5 downto 0) <= m04_couplers_to_axi_interconnect_0_ARADDR(5 downto 0);
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_axi_interconnect_0_ARPROT(2 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_axi_interconnect_0_ARVALID;
  M04_AXI_awaddr(5 downto 0) <= m04_couplers_to_axi_interconnect_0_AWADDR(5 downto 0);
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_axi_interconnect_0_AWPROT(2 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_axi_interconnect_0_AWVALID;
  M04_AXI_bready <= m04_couplers_to_axi_interconnect_0_BREADY;
  M04_AXI_rready <= m04_couplers_to_axi_interconnect_0_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_axi_interconnect_0_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1(0) <= M05_ARESETN(0);
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_axi_interconnect_0_ARVALID;
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_axi_interconnect_0_AWVALID;
  M05_AXI_bready <= m05_couplers_to_axi_interconnect_0_BREADY;
  M05_AXI_rready <= m05_couplers_to_axi_interconnect_0_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_axi_interconnect_0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1(0) <= S00_ARESETN(0);
  S00_AXI_arready(0) <= axi_interconnect_0_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= axi_interconnect_0_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= axi_interconnect_0_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rlast(0) <= axi_interconnect_0_to_s00_couplers_RLAST(0);
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= axi_interconnect_0_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= axi_interconnect_0_to_s00_couplers_WREADY(0);
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net(0) <= ARESETN(0);
  axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARREGION(3 downto 0) <= S00_AXI_arregion(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWREGION(3 downto 0) <= S00_AXI_awregion(3 downto 0);
  axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  axi_interconnect_0_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  axi_interconnect_0_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s00_couplers_WLAST(0) <= S00_AXI_wlast(0);
  axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
  m00_couplers_to_axi_interconnect_0_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_axi_interconnect_0_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_axi_interconnect_0_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_axi_interconnect_0_ARREADY <= M01_AXI_arready;
  m01_couplers_to_axi_interconnect_0_AWREADY <= M01_AXI_awready;
  m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_axi_interconnect_0_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_axi_interconnect_0_WREADY <= M01_AXI_wready;
  m02_couplers_to_axi_interconnect_0_ARREADY <= M02_AXI_arready;
  m02_couplers_to_axi_interconnect_0_AWREADY <= M02_AXI_awready;
  m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_axi_interconnect_0_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_axi_interconnect_0_WREADY <= M02_AXI_wready;
  m03_couplers_to_axi_interconnect_0_ARREADY <= M03_AXI_arready;
  m03_couplers_to_axi_interconnect_0_AWREADY <= M03_AXI_awready;
  m03_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_axi_interconnect_0_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_axi_interconnect_0_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_axi_interconnect_0_WREADY <= M03_AXI_wready;
  m04_couplers_to_axi_interconnect_0_ARREADY <= M04_AXI_arready;
  m04_couplers_to_axi_interconnect_0_AWREADY <= M04_AXI_awready;
  m04_couplers_to_axi_interconnect_0_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_axi_interconnect_0_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_axi_interconnect_0_WREADY <= M04_AXI_wready;
  m05_couplers_to_axi_interconnect_0_ARREADY <= M05_AXI_arready;
  m05_couplers_to_axi_interconnect_0_AWREADY <= M05_AXI_awready;
  m05_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_axi_interconnect_0_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_axi_interconnect_0_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_axi_interconnect_0_WREADY <= M05_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_1REU45J
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN(0) => M00_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_axi_interconnect_0_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_axi_interconnect_0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_axi_interconnect_0_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_axi_interconnect_0_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_axi_interconnect_0_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_axi_interconnect_0_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_axi_interconnect_0_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_axi_interconnect_0_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_axi_interconnect_0_WREADY(0),
      M_AXI_wvalid(0) => m00_couplers_to_axi_interconnect_0_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_FUGJYA
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN(0) => M01_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m01_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m01_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m01_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m01_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_10UV9HO
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN(0) => M02_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m02_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m02_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m02_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m02_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m02_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m02_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_ORJ421
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN(0) => M03_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m03_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m03_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m03_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m03_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m03_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m03_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wvalid => m03_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_A1MC5T
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr(5 downto 0) => m04_couplers_to_axi_interconnect_0_ARADDR(5 downto 0),
      M_AXI_arprot(2 downto 0) => m04_couplers_to_axi_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m04_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m04_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(5 downto 0) => m04_couplers_to_axi_interconnect_0_AWADDR(5 downto 0),
      M_AXI_awprot(2 downto 0) => m04_couplers_to_axi_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m04_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m04_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m04_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bvalid => m04_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rvalid => m04_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1X9MW7O
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN(0) => M05_ARESETN_1(0),
      M_AXI_araddr(31 downto 0) => m05_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m05_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arvalid => m05_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m05_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awvalid => m05_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bready => m05_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wvalid => m05_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
s00_couplers: entity work.s00_couplers_imp_LJ6MD9
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN(0) => axi_interconnect_0_ARESETN_net(0),
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN(0) => S00_ARESETN_1(0),
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => axi_interconnect_0_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready(0) => axi_interconnect_0_to_s00_couplers_ARREADY(0),
      S_AXI_arregion(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => axi_interconnect_0_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => axi_interconnect_0_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready(0) => axi_interconnect_0_to_s00_couplers_AWREADY(0),
      S_AXI_awregion(3 downto 0) => axi_interconnect_0_to_s00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => axi_interconnect_0_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => axi_interconnect_0_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_0_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rlast(0) => axi_interconnect_0_to_s00_couplers_RLAST(0),
      S_AXI_rready(0) => axi_interconnect_0_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_interconnect_0_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => axi_interconnect_0_to_s00_couplers_WLAST(0),
      S_AXI_wready(0) => axi_interconnect_0_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_0_to_s00_couplers_WVALID(0)
    );
xbar: component top_xbar_3
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net(0),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(17 downto 15) => NLW_xbar_m_axi_arprot_UNCONNECTED(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(11 downto 0),
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(17 downto 15) => NLW_xbar_m_axi_awprot_UNCONNECTED(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(11 downto 0),
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(23 downto 20) => NLW_xbar_m_axi_wstrb_UNCONNECTED(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => NLW_xbar_m_axi_wstrb_UNCONNECTED(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => NLW_xbar_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_axis_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    M01_AXIS_ACLK : in STD_LOGIC;
    M01_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXIS_tlast : out STD_LOGIC;
    M01_AXIS_tready : in STD_LOGIC;
    M01_AXIS_tvalid : out STD_LOGIC;
    M02_AXIS_ACLK : in STD_LOGIC;
    M02_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXIS_tlast : out STD_LOGIC;
    M02_AXIS_tready : in STD_LOGIC;
    M02_AXIS_tvalid : out STD_LOGIC;
    M03_AXIS_ACLK : in STD_LOGIC;
    M03_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXIS_tlast : out STD_LOGIC;
    M03_AXIS_tready : in STD_LOGIC;
    M03_AXIS_tvalid : out STD_LOGIC;
    M04_AXIS_ACLK : in STD_LOGIC;
    M04_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXIS_tlast : out STD_LOGIC;
    M04_AXIS_tready : in STD_LOGIC;
    M04_AXIS_tvalid : out STD_LOGIC;
    M05_AXIS_ACLK : in STD_LOGIC;
    M05_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXIS_tready : in STD_LOGIC;
    M05_AXIS_tvalid : out STD_LOGIC;
    M06_AXIS_ACLK : in STD_LOGIC;
    M06_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXIS_tlast : out STD_LOGIC;
    M06_AXIS_tready : in STD_LOGIC;
    M06_AXIS_tvalid : out STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_AXIS_ACLK : in STD_LOGIC;
    S01_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC;
    S02_AXIS_ACLK : in STD_LOGIC;
    S02_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXIS_tlast : in STD_LOGIC;
    S02_AXIS_tready : out STD_LOGIC;
    S02_AXIS_tvalid : in STD_LOGIC;
    S03_AXIS_ACLK : in STD_LOGIC;
    S03_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXIS_tlast : in STD_LOGIC;
    S03_AXIS_tready : out STD_LOGIC;
    S03_AXIS_tvalid : in STD_LOGIC;
    S04_AXIS_ACLK : in STD_LOGIC;
    S04_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXIS_tlast : in STD_LOGIC;
    S04_AXIS_tready : out STD_LOGIC;
    S04_AXIS_tvalid : in STD_LOGIC;
    S05_AXIS_ACLK : in STD_LOGIC;
    S05_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXIS_tready : out STD_LOGIC;
    S05_AXIS_tvalid : in STD_LOGIC;
    S06_AXIS_ACLK : in STD_LOGIC;
    S06_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S06_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXIS_tlast : in STD_LOGIC;
    S06_AXIS_tready : out STD_LOGIC;
    S06_AXIS_tvalid : in STD_LOGIC;
    S_AXI_CTRL_ACLK : in STD_LOGIC;
    S_AXI_CTRL_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end top_axis_interconnect_0_0;

architecture STRUCTURE of top_axis_interconnect_0_0 is
  component top_xbar_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 223 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component top_xbar_4;
  signal M00_AXIS_ACLK_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_1 : STD_LOGIC;
  signal M01_AXIS_ACLK_1 : STD_LOGIC;
  signal M01_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M02_AXIS_ACLK_1 : STD_LOGIC;
  signal M02_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M03_AXIS_ACLK_1 : STD_LOGIC;
  signal M03_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M04_AXIS_ACLK_1 : STD_LOGIC;
  signal M04_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M05_AXIS_ACLK_1 : STD_LOGIC;
  signal M05_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal M06_AXIS_ACLK_1 : STD_LOGIC;
  signal M06_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S01_AXIS_ACLK_1 : STD_LOGIC;
  signal S01_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S02_AXIS_ACLK_1 : STD_LOGIC;
  signal S02_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S03_AXIS_ACLK_1 : STD_LOGIC;
  signal S03_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S04_AXIS_ACLK_1 : STD_LOGIC;
  signal S04_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S05_AXIS_ACLK_1 : STD_LOGIC;
  signal S05_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S06_AXIS_ACLK_1 : STD_LOGIC;
  signal S06_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_ACLK_1 : STD_LOGIC;
  signal S_AXI_CTRL_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_interconnect_0_ACLK_net : STD_LOGIC;
  signal axis_interconnect_0_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_interconnect_0_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_to_s00_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s00_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_0_to_s01_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s01_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s02_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_to_s02_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s02_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s02_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s03_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_to_s03_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_0_to_s03_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s03_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s03_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s04_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_to_s04_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_0_to_s04_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s04_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s04_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s05_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_to_s05_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_interconnect_0_to_s05_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s05_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_s06_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_to_s06_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_0_to_s06_couplers_TLAST : STD_LOGIC;
  signal axis_interconnect_0_to_s06_couplers_TREADY : STD_LOGIC;
  signal axis_interconnect_0_to_s06_couplers_TVALID : STD_LOGIC;
  signal axis_interconnect_0_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_to_xbar_ARREADY : STD_LOGIC;
  signal axis_interconnect_0_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_interconnect_0_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_to_xbar_AWREADY : STD_LOGIC;
  signal axis_interconnect_0_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_interconnect_0_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_interconnect_0_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_interconnect_0_to_xbar_BVALID : STD_LOGIC;
  signal axis_interconnect_0_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_interconnect_0_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axis_interconnect_0_to_xbar_RVALID : STD_LOGIC;
  signal axis_interconnect_0_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_to_xbar_WREADY : STD_LOGIC;
  signal axis_interconnect_0_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m00_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal m01_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal m01_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m01_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal m02_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal m02_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m02_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal m03_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal m03_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m03_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal m04_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal m04_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m04_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal m05_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m05_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal m06_couplers_to_axis_interconnect_0_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_axis_interconnect_0_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_axis_interconnect_0_TLAST : STD_LOGIC;
  signal m06_couplers_to_axis_interconnect_0_TREADY : STD_LOGIC;
  signal m06_couplers_to_axis_interconnect_0_TVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s03_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s04_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s05_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s05_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s05_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s05_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s06_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s06_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s06_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s06_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_TVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_TDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_TKEEP : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_TLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_TVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_TDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_TKEEP : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_TLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_TVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_TDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_TKEEP : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_TLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_TVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_TDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_TKEEP : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_TLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_TVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_TDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_TKEEP : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_TLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_TVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_TDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_TKEEP : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_TLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_TVALID : STD_LOGIC_VECTOR ( 6 to 6 );
begin
  M00_AXIS_ACLK_1 <= M00_AXIS_ACLK;
  M00_AXIS_ARESETN_1 <= M00_AXIS_ARESETN;
  M00_AXIS_tdata(31 downto 0) <= m00_couplers_to_axis_interconnect_0_TDATA(31 downto 0);
  M00_AXIS_tlast <= m00_couplers_to_axis_interconnect_0_TLAST;
  M00_AXIS_tvalid <= m00_couplers_to_axis_interconnect_0_TVALID;
  M01_AXIS_ACLK_1 <= M01_AXIS_ACLK;
  M01_AXIS_ARESETN_1(0) <= M01_AXIS_ARESETN(0);
  M01_AXIS_tdata(31 downto 0) <= m01_couplers_to_axis_interconnect_0_TDATA(31 downto 0);
  M01_AXIS_tkeep(3 downto 0) <= m01_couplers_to_axis_interconnect_0_TKEEP(3 downto 0);
  M01_AXIS_tlast <= m01_couplers_to_axis_interconnect_0_TLAST;
  M01_AXIS_tvalid <= m01_couplers_to_axis_interconnect_0_TVALID;
  M02_AXIS_ACLK_1 <= M02_AXIS_ACLK;
  M02_AXIS_ARESETN_1(0) <= M02_AXIS_ARESETN(0);
  M02_AXIS_tdata(31 downto 0) <= m02_couplers_to_axis_interconnect_0_TDATA(31 downto 0);
  M02_AXIS_tlast <= m02_couplers_to_axis_interconnect_0_TLAST;
  M02_AXIS_tvalid <= m02_couplers_to_axis_interconnect_0_TVALID;
  M03_AXIS_ACLK_1 <= M03_AXIS_ACLK;
  M03_AXIS_ARESETN_1(0) <= M03_AXIS_ARESETN(0);
  M03_AXIS_tdata(31 downto 0) <= m03_couplers_to_axis_interconnect_0_TDATA(31 downto 0);
  M03_AXIS_tkeep(3 downto 0) <= m03_couplers_to_axis_interconnect_0_TKEEP(3 downto 0);
  M03_AXIS_tlast <= m03_couplers_to_axis_interconnect_0_TLAST;
  M03_AXIS_tvalid <= m03_couplers_to_axis_interconnect_0_TVALID;
  M04_AXIS_ACLK_1 <= M04_AXIS_ACLK;
  M04_AXIS_ARESETN_1(0) <= M04_AXIS_ARESETN(0);
  M04_AXIS_tdata(31 downto 0) <= m04_couplers_to_axis_interconnect_0_TDATA(31 downto 0);
  M04_AXIS_tkeep(3 downto 0) <= m04_couplers_to_axis_interconnect_0_TKEEP(3 downto 0);
  M04_AXIS_tlast <= m04_couplers_to_axis_interconnect_0_TLAST;
  M04_AXIS_tvalid <= m04_couplers_to_axis_interconnect_0_TVALID;
  M05_AXIS_ACLK_1 <= M05_AXIS_ACLK;
  M05_AXIS_ARESETN_1(0) <= M05_AXIS_ARESETN(0);
  M05_AXIS_tdata(31 downto 0) <= m05_couplers_to_axis_interconnect_0_TDATA(31 downto 0);
  M05_AXIS_tlast(0) <= m05_couplers_to_axis_interconnect_0_TLAST(0);
  M05_AXIS_tvalid <= m05_couplers_to_axis_interconnect_0_TVALID;
  M06_AXIS_ACLK_1 <= M06_AXIS_ACLK;
  M06_AXIS_ARESETN_1(0) <= M06_AXIS_ARESETN(0);
  M06_AXIS_tdata(31 downto 0) <= m06_couplers_to_axis_interconnect_0_TDATA(31 downto 0);
  M06_AXIS_tkeep(3 downto 0) <= m06_couplers_to_axis_interconnect_0_TKEEP(3 downto 0);
  M06_AXIS_tlast <= m06_couplers_to_axis_interconnect_0_TLAST;
  M06_AXIS_tvalid <= m06_couplers_to_axis_interconnect_0_TVALID;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK;
  S00_AXIS_ARESETN_1 <= S00_AXIS_ARESETN;
  S00_AXIS_tready <= axis_interconnect_0_to_s00_couplers_TREADY;
  S01_AXIS_ACLK_1 <= S01_AXIS_ACLK;
  S01_AXIS_ARESETN_1(0) <= S01_AXIS_ARESETN(0);
  S01_AXIS_tready <= axis_interconnect_0_to_s01_couplers_TREADY;
  S02_AXIS_ACLK_1 <= S02_AXIS_ACLK;
  S02_AXIS_ARESETN_1(0) <= S02_AXIS_ARESETN(0);
  S02_AXIS_tready <= axis_interconnect_0_to_s02_couplers_TREADY;
  S03_AXIS_ACLK_1 <= S03_AXIS_ACLK;
  S03_AXIS_ARESETN_1(0) <= S03_AXIS_ARESETN(0);
  S03_AXIS_tready <= axis_interconnect_0_to_s03_couplers_TREADY;
  S04_AXIS_ACLK_1 <= S04_AXIS_ACLK;
  S04_AXIS_ARESETN_1(0) <= S04_AXIS_ARESETN(0);
  S04_AXIS_tready <= axis_interconnect_0_to_s04_couplers_TREADY;
  S05_AXIS_ACLK_1 <= S05_AXIS_ACLK;
  S05_AXIS_ARESETN_1(0) <= S05_AXIS_ARESETN(0);
  S05_AXIS_tready <= axis_interconnect_0_to_s05_couplers_TREADY;
  S06_AXIS_ACLK_1 <= S06_AXIS_ACLK;
  S06_AXIS_ARESETN_1(0) <= S06_AXIS_ARESETN(0);
  S06_AXIS_tready <= axis_interconnect_0_to_s06_couplers_TREADY;
  S_AXI_CTRL_ACLK_1 <= S_AXI_CTRL_ACLK;
  S_AXI_CTRL_ARESETN_1(0) <= S_AXI_CTRL_ARESETN(0);
  S_AXI_CTRL_arready(0) <= axis_interconnect_0_to_xbar_ARREADY;
  S_AXI_CTRL_awready(0) <= axis_interconnect_0_to_xbar_AWREADY;
  S_AXI_CTRL_bresp(1 downto 0) <= axis_interconnect_0_to_xbar_BRESP(1 downto 0);
  S_AXI_CTRL_bvalid(0) <= axis_interconnect_0_to_xbar_BVALID;
  S_AXI_CTRL_rdata(31 downto 0) <= axis_interconnect_0_to_xbar_RDATA(31 downto 0);
  S_AXI_CTRL_rresp(1 downto 0) <= axis_interconnect_0_to_xbar_RRESP(1 downto 0);
  S_AXI_CTRL_rvalid(0) <= axis_interconnect_0_to_xbar_RVALID;
  S_AXI_CTRL_wready(0) <= axis_interconnect_0_to_xbar_WREADY;
  axis_interconnect_0_ACLK_net <= ACLK;
  axis_interconnect_0_ARESETN_net(0) <= ARESETN(0);
  axis_interconnect_0_to_s00_couplers_TDATA(31 downto 0) <= S00_AXIS_tdata(31 downto 0);
  axis_interconnect_0_to_s00_couplers_TLAST <= S00_AXIS_tlast;
  axis_interconnect_0_to_s00_couplers_TVALID <= S00_AXIS_tvalid;
  axis_interconnect_0_to_s01_couplers_TDATA(31 downto 0) <= S01_AXIS_tdata(31 downto 0);
  axis_interconnect_0_to_s01_couplers_TKEEP(3 downto 0) <= S01_AXIS_tkeep(3 downto 0);
  axis_interconnect_0_to_s01_couplers_TLAST <= S01_AXIS_tlast;
  axis_interconnect_0_to_s01_couplers_TVALID <= S01_AXIS_tvalid;
  axis_interconnect_0_to_s02_couplers_TDATA(31 downto 0) <= S02_AXIS_tdata(31 downto 0);
  axis_interconnect_0_to_s02_couplers_TLAST <= S02_AXIS_tlast;
  axis_interconnect_0_to_s02_couplers_TVALID <= S02_AXIS_tvalid;
  axis_interconnect_0_to_s03_couplers_TDATA(31 downto 0) <= S03_AXIS_tdata(31 downto 0);
  axis_interconnect_0_to_s03_couplers_TKEEP(3 downto 0) <= S03_AXIS_tkeep(3 downto 0);
  axis_interconnect_0_to_s03_couplers_TLAST <= S03_AXIS_tlast;
  axis_interconnect_0_to_s03_couplers_TVALID <= S03_AXIS_tvalid;
  axis_interconnect_0_to_s04_couplers_TDATA(31 downto 0) <= S04_AXIS_tdata(31 downto 0);
  axis_interconnect_0_to_s04_couplers_TKEEP(3 downto 0) <= S04_AXIS_tkeep(3 downto 0);
  axis_interconnect_0_to_s04_couplers_TLAST <= S04_AXIS_tlast;
  axis_interconnect_0_to_s04_couplers_TVALID <= S04_AXIS_tvalid;
  axis_interconnect_0_to_s05_couplers_TDATA(31 downto 0) <= S05_AXIS_tdata(31 downto 0);
  axis_interconnect_0_to_s05_couplers_TLAST(0) <= S05_AXIS_tlast(0);
  axis_interconnect_0_to_s05_couplers_TVALID <= S05_AXIS_tvalid;
  axis_interconnect_0_to_s06_couplers_TDATA(31 downto 0) <= S06_AXIS_tdata(31 downto 0);
  axis_interconnect_0_to_s06_couplers_TKEEP(3 downto 0) <= S06_AXIS_tkeep(3 downto 0);
  axis_interconnect_0_to_s06_couplers_TLAST <= S06_AXIS_tlast;
  axis_interconnect_0_to_s06_couplers_TVALID <= S06_AXIS_tvalid;
  axis_interconnect_0_to_xbar_ARADDR(31 downto 0) <= S_AXI_CTRL_araddr(31 downto 0);
  axis_interconnect_0_to_xbar_ARVALID(0) <= S_AXI_CTRL_arvalid(0);
  axis_interconnect_0_to_xbar_AWADDR(31 downto 0) <= S_AXI_CTRL_awaddr(31 downto 0);
  axis_interconnect_0_to_xbar_AWVALID(0) <= S_AXI_CTRL_awvalid(0);
  axis_interconnect_0_to_xbar_BREADY(0) <= S_AXI_CTRL_bready(0);
  axis_interconnect_0_to_xbar_RREADY(0) <= S_AXI_CTRL_rready(0);
  axis_interconnect_0_to_xbar_WDATA(31 downto 0) <= S_AXI_CTRL_wdata(31 downto 0);
  axis_interconnect_0_to_xbar_WVALID(0) <= S_AXI_CTRL_wvalid(0);
  m00_couplers_to_axis_interconnect_0_TREADY <= M00_AXIS_tready;
  m01_couplers_to_axis_interconnect_0_TREADY <= M01_AXIS_tready;
  m02_couplers_to_axis_interconnect_0_TREADY <= M02_AXIS_tready;
  m03_couplers_to_axis_interconnect_0_TREADY <= M03_AXIS_tready;
  m04_couplers_to_axis_interconnect_0_TREADY <= M04_AXIS_tready;
  m05_couplers_to_axis_interconnect_0_TREADY <= M05_AXIS_tready;
  m06_couplers_to_axis_interconnect_0_TREADY <= M06_AXIS_tready;
m00_couplers: entity work.m00_couplers_imp_YQX1N2
     port map (
      M_AXIS_ACLK => M00_AXIS_ACLK_1,
      M_AXIS_ARESETN => M00_AXIS_ARESETN_1,
      M_AXIS_tdata(31 downto 0) => m00_couplers_to_axis_interconnect_0_TDATA(31 downto 0),
      M_AXIS_tlast => m00_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => m00_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => m00_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      S_AXIS_tdata(31 downto 0) => xbar_to_m00_couplers_TDATA(31 downto 0),
      S_AXIS_tkeep(3 downto 0) => xbar_to_m00_couplers_TKEEP(3 downto 0),
      S_AXIS_tlast => xbar_to_m00_couplers_TLAST(0),
      S_AXIS_tready => xbar_to_m00_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m00_couplers_TVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_18KYNT7
     port map (
      M_AXIS_ACLK => M01_AXIS_ACLK_1,
      M_AXIS_ARESETN(0) => M01_AXIS_ARESETN_1(0),
      M_AXIS_tdata(31 downto 0) => m01_couplers_to_axis_interconnect_0_TDATA(31 downto 0),
      M_AXIS_tkeep(3 downto 0) => m01_couplers_to_axis_interconnect_0_TKEEP(3 downto 0),
      M_AXIS_tlast => m01_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => m01_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => m01_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      S_AXIS_tdata(31 downto 0) => xbar_to_m01_couplers_TDATA(63 downto 32),
      S_AXIS_tkeep(3 downto 0) => xbar_to_m01_couplers_TKEEP(7 downto 4),
      S_AXIS_tlast => xbar_to_m01_couplers_TLAST(1),
      S_AXIS_tready => xbar_to_m01_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m01_couplers_TVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_85P2H1
     port map (
      M_AXIS_ACLK => M02_AXIS_ACLK_1,
      M_AXIS_ARESETN(0) => M02_AXIS_ARESETN_1(0),
      M_AXIS_tdata(31 downto 0) => m02_couplers_to_axis_interconnect_0_TDATA(31 downto 0),
      M_AXIS_tlast => m02_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => m02_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => m02_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      S_AXIS_tdata(31 downto 0) => xbar_to_m02_couplers_TDATA(95 downto 64),
      S_AXIS_tkeep(3 downto 0) => xbar_to_m02_couplers_TKEEP(11 downto 8),
      S_AXIS_tlast => xbar_to_m02_couplers_TLAST(2),
      S_AXIS_tready => xbar_to_m02_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m02_couplers_TVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1HJ9N40
     port map (
      M_AXIS_ACLK => M03_AXIS_ACLK_1,
      M_AXIS_ARESETN(0) => M03_AXIS_ARESETN_1(0),
      M_AXIS_tdata(31 downto 0) => m03_couplers_to_axis_interconnect_0_TDATA(31 downto 0),
      M_AXIS_tkeep(3 downto 0) => m03_couplers_to_axis_interconnect_0_TKEEP(3 downto 0),
      M_AXIS_tlast => m03_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => m03_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => m03_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      S_AXIS_tdata(31 downto 0) => xbar_to_m03_couplers_TDATA(127 downto 96),
      S_AXIS_tkeep(3 downto 0) => xbar_to_m03_couplers_TKEEP(15 downto 12),
      S_AXIS_tlast => xbar_to_m03_couplers_TLAST(3),
      S_AXIS_tready => xbar_to_m03_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m03_couplers_TVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_1GKYXI0
     port map (
      M_AXIS_ACLK => M04_AXIS_ACLK_1,
      M_AXIS_ARESETN(0) => M04_AXIS_ARESETN_1(0),
      M_AXIS_tdata(31 downto 0) => m04_couplers_to_axis_interconnect_0_TDATA(31 downto 0),
      M_AXIS_tkeep(3 downto 0) => m04_couplers_to_axis_interconnect_0_TKEEP(3 downto 0),
      M_AXIS_tlast => m04_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => m04_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => m04_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      S_AXIS_tdata(31 downto 0) => xbar_to_m04_couplers_TDATA(159 downto 128),
      S_AXIS_tkeep(3 downto 0) => xbar_to_m04_couplers_TKEEP(19 downto 16),
      S_AXIS_tlast => xbar_to_m04_couplers_TLAST(4),
      S_AXIS_tready => xbar_to_m04_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m04_couplers_TVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_QNP9JX
     port map (
      M_AXIS_ACLK => M05_AXIS_ACLK_1,
      M_AXIS_ARESETN(0) => M05_AXIS_ARESETN_1(0),
      M_AXIS_tdata(31 downto 0) => m05_couplers_to_axis_interconnect_0_TDATA(31 downto 0),
      M_AXIS_tlast(0) => m05_couplers_to_axis_interconnect_0_TLAST(0),
      M_AXIS_tready => m05_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => m05_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      S_AXIS_tdata(31 downto 0) => xbar_to_m05_couplers_TDATA(191 downto 160),
      S_AXIS_tkeep(3 downto 0) => xbar_to_m05_couplers_TKEEP(23 downto 20),
      S_AXIS_tlast => xbar_to_m05_couplers_TLAST(5),
      S_AXIS_tready => xbar_to_m05_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m05_couplers_TVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_1PK6R83
     port map (
      M_AXIS_ACLK => M06_AXIS_ACLK_1,
      M_AXIS_ARESETN(0) => M06_AXIS_ARESETN_1(0),
      M_AXIS_tdata(31 downto 0) => m06_couplers_to_axis_interconnect_0_TDATA(31 downto 0),
      M_AXIS_tkeep(3 downto 0) => m06_couplers_to_axis_interconnect_0_TKEEP(3 downto 0),
      M_AXIS_tlast => m06_couplers_to_axis_interconnect_0_TLAST,
      M_AXIS_tready => m06_couplers_to_axis_interconnect_0_TREADY,
      M_AXIS_tvalid => m06_couplers_to_axis_interconnect_0_TVALID,
      S_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      S_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      S_AXIS_tdata(31 downto 0) => xbar_to_m06_couplers_TDATA(223 downto 192),
      S_AXIS_tkeep(3 downto 0) => xbar_to_m06_couplers_TKEEP(27 downto 24),
      S_AXIS_tlast => xbar_to_m06_couplers_TLAST(6),
      S_AXIS_tready => xbar_to_m06_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m06_couplers_TVALID(6)
    );
s00_couplers: entity work.s00_couplers_imp_1MV96ES
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      M_AXIS_tdata(31 downto 0) => s00_couplers_to_xbar_TDATA(31 downto 0),
      M_AXIS_tkeep(3 downto 0) => s00_couplers_to_xbar_TKEEP(3 downto 0),
      M_AXIS_tlast => s00_couplers_to_xbar_TLAST,
      M_AXIS_tready => s00_couplers_to_xbar_TREADY(0),
      M_AXIS_tvalid => s00_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S00_AXIS_ACLK_1,
      S_AXIS_ARESETN => S00_AXIS_ARESETN_1,
      S_AXIS_tdata(31 downto 0) => axis_interconnect_0_to_s00_couplers_TDATA(31 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s00_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s00_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s00_couplers_TVALID
    );
s01_couplers: entity work.s01_couplers_imp_2P9RU9
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      M_AXIS_tdata(31 downto 0) => s01_couplers_to_xbar_TDATA(31 downto 0),
      M_AXIS_tkeep(3 downto 0) => s01_couplers_to_xbar_TKEEP(3 downto 0),
      M_AXIS_tlast => s01_couplers_to_xbar_TLAST,
      M_AXIS_tready => s01_couplers_to_xbar_TREADY(1),
      M_AXIS_tvalid => s01_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S01_AXIS_ACLK_1,
      S_AXIS_ARESETN(0) => S01_AXIS_ARESETN_1(0),
      S_AXIS_tdata(31 downto 0) => axis_interconnect_0_to_s01_couplers_TDATA(31 downto 0),
      S_AXIS_tkeep(3 downto 0) => axis_interconnect_0_to_s01_couplers_TKEEP(3 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s01_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s01_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s01_couplers_TVALID
    );
s02_couplers: entity work.s02_couplers_imp_1E2LIIN
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      M_AXIS_tdata(31 downto 0) => s02_couplers_to_xbar_TDATA(31 downto 0),
      M_AXIS_tkeep(3 downto 0) => s02_couplers_to_xbar_TKEEP(3 downto 0),
      M_AXIS_tlast => s02_couplers_to_xbar_TLAST,
      M_AXIS_tready => s02_couplers_to_xbar_TREADY(2),
      M_AXIS_tvalid => s02_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S02_AXIS_ACLK_1,
      S_AXIS_ARESETN(0) => S02_AXIS_ARESETN_1(0),
      S_AXIS_tdata(31 downto 0) => axis_interconnect_0_to_s02_couplers_TDATA(31 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s02_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s02_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s02_couplers_TVALID
    );
s03_couplers: entity work.s03_couplers_imp_TDKDQ2
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      M_AXIS_tdata(31 downto 0) => s03_couplers_to_xbar_TDATA(31 downto 0),
      M_AXIS_tkeep(3 downto 0) => s03_couplers_to_xbar_TKEEP(3 downto 0),
      M_AXIS_tlast => s03_couplers_to_xbar_TLAST,
      M_AXIS_tready => s03_couplers_to_xbar_TREADY(3),
      M_AXIS_tvalid => s03_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S03_AXIS_ACLK_1,
      S_AXIS_ARESETN(0) => S03_AXIS_ARESETN_1(0),
      S_AXIS_tdata(31 downto 0) => axis_interconnect_0_to_s03_couplers_TDATA(31 downto 0),
      S_AXIS_tkeep(3 downto 0) => axis_interconnect_0_to_s03_couplers_TKEEP(3 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s03_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s03_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s03_couplers_TVALID
    );
s04_couplers: entity work.s04_couplers_imp_5PIQSI
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      M_AXIS_tdata(31 downto 0) => s04_couplers_to_xbar_TDATA(31 downto 0),
      M_AXIS_tkeep(3 downto 0) => s04_couplers_to_xbar_TKEEP(3 downto 0),
      M_AXIS_tlast => s04_couplers_to_xbar_TLAST,
      M_AXIS_tready => s04_couplers_to_xbar_TREADY(4),
      M_AXIS_tvalid => s04_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S04_AXIS_ACLK_1,
      S_AXIS_ARESETN(0) => S04_AXIS_ARESETN_1(0),
      S_AXIS_tdata(31 downto 0) => axis_interconnect_0_to_s04_couplers_TDATA(31 downto 0),
      S_AXIS_tkeep(3 downto 0) => axis_interconnect_0_to_s04_couplers_TKEEP(3 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s04_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s04_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s04_couplers_TVALID
    );
s05_couplers: entity work.s05_couplers_imp_1JRY9PJ
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      M_AXIS_tdata(31 downto 0) => s05_couplers_to_xbar_TDATA(31 downto 0),
      M_AXIS_tkeep(3 downto 0) => s05_couplers_to_xbar_TKEEP(3 downto 0),
      M_AXIS_tlast => s05_couplers_to_xbar_TLAST,
      M_AXIS_tready => s05_couplers_to_xbar_TREADY(5),
      M_AXIS_tvalid => s05_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S05_AXIS_ACLK_1,
      S_AXIS_ARESETN(0) => S05_AXIS_ARESETN_1(0),
      S_AXIS_tdata(31 downto 0) => axis_interconnect_0_to_s05_couplers_TDATA(31 downto 0),
      S_AXIS_tlast(0) => axis_interconnect_0_to_s05_couplers_TLAST(0),
      S_AXIS_tready => axis_interconnect_0_to_s05_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s05_couplers_TVALID
    );
s06_couplers: entity work.s06_couplers_imp_WESZFT
     port map (
      M_AXIS_ACLK => axis_interconnect_0_ACLK_net,
      M_AXIS_ARESETN(0) => axis_interconnect_0_ARESETN_net(0),
      M_AXIS_tdata(31 downto 0) => s06_couplers_to_xbar_TDATA(31 downto 0),
      M_AXIS_tkeep(3 downto 0) => s06_couplers_to_xbar_TKEEP(3 downto 0),
      M_AXIS_tlast => s06_couplers_to_xbar_TLAST,
      M_AXIS_tready => s06_couplers_to_xbar_TREADY(6),
      M_AXIS_tvalid => s06_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S06_AXIS_ACLK_1,
      S_AXIS_ARESETN(0) => S06_AXIS_ARESETN_1(0),
      S_AXIS_tdata(31 downto 0) => axis_interconnect_0_to_s06_couplers_TDATA(31 downto 0),
      S_AXIS_tkeep(3 downto 0) => axis_interconnect_0_to_s06_couplers_TKEEP(3 downto 0),
      S_AXIS_tlast => axis_interconnect_0_to_s06_couplers_TLAST,
      S_AXIS_tready => axis_interconnect_0_to_s06_couplers_TREADY,
      S_AXIS_tvalid => axis_interconnect_0_to_s06_couplers_TVALID
    );
xbar: component top_xbar_4
     port map (
      aclk => axis_interconnect_0_ACLK_net,
      aresetn => axis_interconnect_0_ARESETN_net(0),
      m_axis_tdata(223 downto 192) => xbar_to_m06_couplers_TDATA(223 downto 192),
      m_axis_tdata(191 downto 160) => xbar_to_m05_couplers_TDATA(191 downto 160),
      m_axis_tdata(159 downto 128) => xbar_to_m04_couplers_TDATA(159 downto 128),
      m_axis_tdata(127 downto 96) => xbar_to_m03_couplers_TDATA(127 downto 96),
      m_axis_tdata(95 downto 64) => xbar_to_m02_couplers_TDATA(95 downto 64),
      m_axis_tdata(63 downto 32) => xbar_to_m01_couplers_TDATA(63 downto 32),
      m_axis_tdata(31 downto 0) => xbar_to_m00_couplers_TDATA(31 downto 0),
      m_axis_tkeep(27 downto 24) => xbar_to_m06_couplers_TKEEP(27 downto 24),
      m_axis_tkeep(23 downto 20) => xbar_to_m05_couplers_TKEEP(23 downto 20),
      m_axis_tkeep(19 downto 16) => xbar_to_m04_couplers_TKEEP(19 downto 16),
      m_axis_tkeep(15 downto 12) => xbar_to_m03_couplers_TKEEP(15 downto 12),
      m_axis_tkeep(11 downto 8) => xbar_to_m02_couplers_TKEEP(11 downto 8),
      m_axis_tkeep(7 downto 4) => xbar_to_m01_couplers_TKEEP(7 downto 4),
      m_axis_tkeep(3 downto 0) => xbar_to_m00_couplers_TKEEP(3 downto 0),
      m_axis_tlast(6) => xbar_to_m06_couplers_TLAST(6),
      m_axis_tlast(5) => xbar_to_m05_couplers_TLAST(5),
      m_axis_tlast(4) => xbar_to_m04_couplers_TLAST(4),
      m_axis_tlast(3) => xbar_to_m03_couplers_TLAST(3),
      m_axis_tlast(2) => xbar_to_m02_couplers_TLAST(2),
      m_axis_tlast(1) => xbar_to_m01_couplers_TLAST(1),
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST(0),
      m_axis_tready(6) => xbar_to_m06_couplers_TREADY,
      m_axis_tready(5) => xbar_to_m05_couplers_TREADY,
      m_axis_tready(4) => xbar_to_m04_couplers_TREADY,
      m_axis_tready(3) => xbar_to_m03_couplers_TREADY,
      m_axis_tready(2) => xbar_to_m02_couplers_TREADY,
      m_axis_tready(1) => xbar_to_m01_couplers_TREADY,
      m_axis_tready(0) => xbar_to_m00_couplers_TREADY,
      m_axis_tvalid(6) => xbar_to_m06_couplers_TVALID(6),
      m_axis_tvalid(5) => xbar_to_m05_couplers_TVALID(5),
      m_axis_tvalid(4) => xbar_to_m04_couplers_TVALID(4),
      m_axis_tvalid(3) => xbar_to_m03_couplers_TVALID(3),
      m_axis_tvalid(2) => xbar_to_m02_couplers_TVALID(2),
      m_axis_tvalid(1) => xbar_to_m01_couplers_TVALID(1),
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID(0),
      s_axi_ctrl_aclk => S_AXI_CTRL_ACLK_1,
      s_axi_ctrl_araddr(6 downto 0) => axis_interconnect_0_to_xbar_ARADDR(6 downto 0),
      s_axi_ctrl_aresetn => S_AXI_CTRL_ARESETN_1(0),
      s_axi_ctrl_arready => axis_interconnect_0_to_xbar_ARREADY,
      s_axi_ctrl_arvalid => axis_interconnect_0_to_xbar_ARVALID(0),
      s_axi_ctrl_awaddr(6 downto 0) => axis_interconnect_0_to_xbar_AWADDR(6 downto 0),
      s_axi_ctrl_awready => axis_interconnect_0_to_xbar_AWREADY,
      s_axi_ctrl_awvalid => axis_interconnect_0_to_xbar_AWVALID(0),
      s_axi_ctrl_bready => axis_interconnect_0_to_xbar_BREADY(0),
      s_axi_ctrl_bresp(1 downto 0) => axis_interconnect_0_to_xbar_BRESP(1 downto 0),
      s_axi_ctrl_bvalid => axis_interconnect_0_to_xbar_BVALID,
      s_axi_ctrl_rdata(31 downto 0) => axis_interconnect_0_to_xbar_RDATA(31 downto 0),
      s_axi_ctrl_rready => axis_interconnect_0_to_xbar_RREADY(0),
      s_axi_ctrl_rresp(1 downto 0) => axis_interconnect_0_to_xbar_RRESP(1 downto 0),
      s_axi_ctrl_rvalid => axis_interconnect_0_to_xbar_RVALID,
      s_axi_ctrl_wdata(31 downto 0) => axis_interconnect_0_to_xbar_WDATA(31 downto 0),
      s_axi_ctrl_wready => axis_interconnect_0_to_xbar_WREADY,
      s_axi_ctrl_wvalid => axis_interconnect_0_to_xbar_WVALID(0),
      s_axis_tdata(223 downto 192) => s06_couplers_to_xbar_TDATA(31 downto 0),
      s_axis_tdata(191 downto 160) => s05_couplers_to_xbar_TDATA(31 downto 0),
      s_axis_tdata(159 downto 128) => s04_couplers_to_xbar_TDATA(31 downto 0),
      s_axis_tdata(127 downto 96) => s03_couplers_to_xbar_TDATA(31 downto 0),
      s_axis_tdata(95 downto 64) => s02_couplers_to_xbar_TDATA(31 downto 0),
      s_axis_tdata(63 downto 32) => s01_couplers_to_xbar_TDATA(31 downto 0),
      s_axis_tdata(31 downto 0) => s00_couplers_to_xbar_TDATA(31 downto 0),
      s_axis_tkeep(27 downto 24) => s06_couplers_to_xbar_TKEEP(3 downto 0),
      s_axis_tkeep(23 downto 20) => s05_couplers_to_xbar_TKEEP(3 downto 0),
      s_axis_tkeep(19 downto 16) => s04_couplers_to_xbar_TKEEP(3 downto 0),
      s_axis_tkeep(15 downto 12) => s03_couplers_to_xbar_TKEEP(3 downto 0),
      s_axis_tkeep(11 downto 8) => s02_couplers_to_xbar_TKEEP(3 downto 0),
      s_axis_tkeep(7 downto 4) => s01_couplers_to_xbar_TKEEP(3 downto 0),
      s_axis_tkeep(3 downto 0) => s00_couplers_to_xbar_TKEEP(3 downto 0),
      s_axis_tlast(6) => s06_couplers_to_xbar_TLAST,
      s_axis_tlast(5) => s05_couplers_to_xbar_TLAST,
      s_axis_tlast(4) => s04_couplers_to_xbar_TLAST,
      s_axis_tlast(3) => s03_couplers_to_xbar_TLAST,
      s_axis_tlast(2) => s02_couplers_to_xbar_TLAST,
      s_axis_tlast(1) => s01_couplers_to_xbar_TLAST,
      s_axis_tlast(0) => s00_couplers_to_xbar_TLAST,
      s_axis_tready(6) => s06_couplers_to_xbar_TREADY(6),
      s_axis_tready(5) => s05_couplers_to_xbar_TREADY(5),
      s_axis_tready(4) => s04_couplers_to_xbar_TREADY(4),
      s_axis_tready(3) => s03_couplers_to_xbar_TREADY(3),
      s_axis_tready(2) => s02_couplers_to_xbar_TREADY(2),
      s_axis_tready(1) => s01_couplers_to_xbar_TREADY(1),
      s_axis_tready(0) => s00_couplers_to_xbar_TREADY(0),
      s_axis_tvalid(6) => s06_couplers_to_xbar_TVALID,
      s_axis_tvalid(5) => s05_couplers_to_xbar_TVALID,
      s_axis_tvalid(4) => s04_couplers_to_xbar_TVALID,
      s_axis_tvalid(3) => s03_couplers_to_xbar_TVALID,
      s_axis_tvalid(2) => s02_couplers_to_xbar_TVALID,
      s_axis_tvalid(1) => s01_couplers_to_xbar_TVALID,
      s_axis_tvalid(0) => s00_couplers_to_xbar_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_dma_imp_6G9VF2 is
  port (
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M_AXIS_MM2S1_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_MM2S1_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_MM2S1_tlast : out STD_LOGIC;
    M_AXIS_MM2S1_tready : in STD_LOGIC;
    M_AXIS_MM2S1_tvalid : out STD_LOGIC;
    M_AXIS_MM2S_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_MM2S_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_MM2S_tlast : out STD_LOGIC;
    M_AXIS_MM2S_tready : in STD_LOGIC;
    M_AXIS_MM2S_tvalid : out STD_LOGIC;
    S_AXIS_S2MM1_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_S2MM1_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_S2MM1_tlast : in STD_LOGIC;
    S_AXIS_S2MM1_tready : out STD_LOGIC;
    S_AXIS_S2MM1_tvalid : in STD_LOGIC;
    S_AXIS_S2MM_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_S2MM_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_S2MM_tlast : in STD_LOGIC;
    S_AXIS_S2MM_tready : out STD_LOGIC;
    S_AXIS_S2MM_tvalid : in STD_LOGIC;
    S_AXI_LITE1_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE1_arready : out STD_LOGIC;
    S_AXI_LITE1_arvalid : in STD_LOGIC;
    S_AXI_LITE1_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE1_awready : out STD_LOGIC;
    S_AXI_LITE1_awvalid : in STD_LOGIC;
    S_AXI_LITE1_bready : in STD_LOGIC;
    S_AXI_LITE1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE1_bvalid : out STD_LOGIC;
    S_AXI_LITE1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE1_rready : in STD_LOGIC;
    S_AXI_LITE1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE1_rvalid : out STD_LOGIC;
    S_AXI_LITE1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE1_wready : out STD_LOGIC;
    S_AXI_LITE1_wvalid : in STD_LOGIC;
    S_AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_arready : out STD_LOGIC;
    S_AXI_LITE_arvalid : in STD_LOGIC;
    S_AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_awready : out STD_LOGIC;
    S_AXI_LITE_awvalid : in STD_LOGIC;
    S_AXI_LITE_bready : in STD_LOGIC;
    S_AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_bvalid : out STD_LOGIC;
    S_AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_rready : in STD_LOGIC;
    S_AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_rvalid : out STD_LOGIC;
    S_AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_wready : out STD_LOGIC;
    S_AXI_LITE_wvalid : in STD_LOGIC;
    axi_resetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_sg_aclk : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC_VECTOR ( 0 to 0 );
    s2mm_introut : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end axi_dma_imp_6G9VF2;

architecture STRUCTURE of axi_dma_imp_6G9VF2 is
  component top_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_sg_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_awvalid : out STD_LOGIC;
    m_axi_sg_awready : in STD_LOGIC;
    m_axi_sg_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_wlast : out STD_LOGIC;
    m_axi_sg_wvalid : out STD_LOGIC;
    m_axi_sg_wready : in STD_LOGIC;
    m_axi_sg_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_bvalid : in STD_LOGIC;
    m_axi_sg_bready : out STD_LOGIC;
    m_axi_sg_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_arvalid : out STD_LOGIC;
    m_axi_sg_arready : in STD_LOGIC;
    m_axi_sg_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_rlast : in STD_LOGIC;
    m_axi_sg_rvalid : in STD_LOGIC;
    m_axi_sg_rready : out STD_LOGIC;
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component top_axi_dma_0_0;
  component top_axi_dma_1_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component top_axi_dma_1_0;
  component top_mm2s_intr_or1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_mm2s_intr_or1_0;
  component top_mm2s_intr_or_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_mm2s_intr_or_0;
  signal Conn4_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn4_ARREADY : STD_LOGIC;
  signal Conn4_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_ARVALID : STD_LOGIC;
  signal Conn4_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn4_AWREADY : STD_LOGIC;
  signal Conn4_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_AWVALID : STD_LOGIC;
  signal Conn4_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_BREADY : STD_LOGIC;
  signal Conn4_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_BVALID : STD_LOGIC;
  signal Conn4_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn4_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_RLAST : STD_LOGIC;
  signal Conn4_RREADY : STD_LOGIC;
  signal Conn4_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_RVALID : STD_LOGIC;
  signal Conn4_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn4_WLAST : STD_LOGIC;
  signal Conn4_WREADY : STD_LOGIC;
  signal Conn4_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Conn4_WVALID : STD_LOGIC;
  signal S01_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXIS_1_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXIS_1_TLAST : STD_LOGIC;
  signal S01_AXIS_1_TREADY : STD_LOGIC;
  signal S01_AXIS_1_TVALID : STD_LOGIC;
  signal S_AXIS_S2MM1_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXIS_S2MM1_1_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXIS_S2MM1_1_TLAST : STD_LOGIC;
  signal S_AXIS_S2MM1_1_TREADY : STD_LOGIC;
  signal S_AXIS_S2MM1_1_TVALID : STD_LOGIC;
  signal S_AXI_LITE1_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE1_1_ARREADY : STD_LOGIC;
  signal S_AXI_LITE1_1_ARVALID : STD_LOGIC;
  signal S_AXI_LITE1_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE1_1_AWREADY : STD_LOGIC;
  signal S_AXI_LITE1_1_AWVALID : STD_LOGIC;
  signal S_AXI_LITE1_1_BREADY : STD_LOGIC;
  signal S_AXI_LITE1_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_LITE1_1_BVALID : STD_LOGIC;
  signal S_AXI_LITE1_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE1_1_RREADY : STD_LOGIC;
  signal S_AXI_LITE1_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_LITE1_1_RVALID : STD_LOGIC;
  signal S_AXI_LITE1_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE1_1_WREADY : STD_LOGIC;
  signal S_AXI_LITE1_1_WVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_RLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_RVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_SG_WVALID : STD_LOGIC;
  signal axi_dma_0_mm2s_introut : STD_LOGIC;
  signal axi_dma_0_s2mm_introut : STD_LOGIC;
  signal axi_dma_1_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_1_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_1_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_dma_1_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_1_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_1_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_1_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_1_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_1_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_1_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_1_M_AXI_S2MM_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_dma_1_mm2s_introut : STD_LOGIC;
  signal axi_dma_1_s2mm_introut : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_mm_M03_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M03_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_mm_M03_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M03_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_WVALID : STD_LOGIC;
  signal axis_interconnect_M01_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_M01_AXIS_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_M01_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_M01_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_M01_AXIS_TVALID : STD_LOGIC;
  signal mm2s_intr_or1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pcie_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_aclk_1 : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_1_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_1_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
begin
  Conn4_ARREADY <= M00_AXI_arready;
  Conn4_AWREADY <= M00_AXI_awready;
  Conn4_BID(2 downto 0) <= M00_AXI_bid(2 downto 0);
  Conn4_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  Conn4_BVALID <= M00_AXI_bvalid;
  Conn4_RDATA(127 downto 0) <= M00_AXI_rdata(127 downto 0);
  Conn4_RID(2 downto 0) <= M00_AXI_rid(2 downto 0);
  Conn4_RLAST <= M00_AXI_rlast;
  Conn4_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  Conn4_RVALID <= M00_AXI_rvalid;
  Conn4_WREADY <= M00_AXI_wready;
  M00_AXI_araddr(31 downto 0) <= Conn4_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= Conn4_ARBURST(1 downto 0);
  M00_AXI_arid(2 downto 0) <= Conn4_ARID(2 downto 0);
  M00_AXI_arlen(7 downto 0) <= Conn4_ARLEN(7 downto 0);
  M00_AXI_arregion(3 downto 0) <= Conn4_ARREGION(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= Conn4_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= Conn4_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= Conn4_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= Conn4_AWBURST(1 downto 0);
  M00_AXI_awid(2 downto 0) <= Conn4_AWID(2 downto 0);
  M00_AXI_awlen(7 downto 0) <= Conn4_AWLEN(7 downto 0);
  M00_AXI_awregion(3 downto 0) <= Conn4_AWREGION(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= Conn4_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= Conn4_AWVALID;
  M00_AXI_bready <= Conn4_BREADY;
  M00_AXI_rready <= Conn4_RREADY;
  M00_AXI_wdata(127 downto 0) <= Conn4_WDATA(127 downto 0);
  M00_AXI_wlast <= Conn4_WLAST;
  M00_AXI_wstrb(15 downto 0) <= Conn4_WSTRB(15 downto 0);
  M00_AXI_wvalid <= Conn4_WVALID;
  M_AXIS_MM2S1_tdata(31 downto 0) <= axi_dma_1_M_AXIS_MM2S_TDATA(31 downto 0);
  M_AXIS_MM2S1_tkeep(3 downto 0) <= axi_dma_1_M_AXIS_MM2S_TKEEP(3 downto 0);
  M_AXIS_MM2S1_tlast <= axi_dma_1_M_AXIS_MM2S_TLAST;
  M_AXIS_MM2S1_tvalid <= axi_dma_1_M_AXIS_MM2S_TVALID;
  M_AXIS_MM2S_tdata(31 downto 0) <= S01_AXIS_1_TDATA(31 downto 0);
  M_AXIS_MM2S_tkeep(3 downto 0) <= S01_AXIS_1_TKEEP(3 downto 0);
  M_AXIS_MM2S_tlast <= S01_AXIS_1_TLAST;
  M_AXIS_MM2S_tvalid <= S01_AXIS_1_TVALID;
  S01_AXIS_1_TREADY <= M_AXIS_MM2S_tready;
  S_AXIS_S2MM1_1_TDATA(31 downto 0) <= S_AXIS_S2MM1_tdata(31 downto 0);
  S_AXIS_S2MM1_1_TKEEP(3 downto 0) <= S_AXIS_S2MM1_tkeep(3 downto 0);
  S_AXIS_S2MM1_1_TLAST <= S_AXIS_S2MM1_tlast;
  S_AXIS_S2MM1_1_TVALID <= S_AXIS_S2MM1_tvalid;
  S_AXIS_S2MM1_tready <= S_AXIS_S2MM1_1_TREADY;
  S_AXIS_S2MM_tready <= axis_interconnect_M01_AXIS_TREADY;
  S_AXI_LITE1_1_ARADDR(31 downto 0) <= S_AXI_LITE1_araddr(31 downto 0);
  S_AXI_LITE1_1_ARVALID <= S_AXI_LITE1_arvalid;
  S_AXI_LITE1_1_AWADDR(31 downto 0) <= S_AXI_LITE1_awaddr(31 downto 0);
  S_AXI_LITE1_1_AWVALID <= S_AXI_LITE1_awvalid;
  S_AXI_LITE1_1_BREADY <= S_AXI_LITE1_bready;
  S_AXI_LITE1_1_RREADY <= S_AXI_LITE1_rready;
  S_AXI_LITE1_1_WDATA(31 downto 0) <= S_AXI_LITE1_wdata(31 downto 0);
  S_AXI_LITE1_1_WVALID <= S_AXI_LITE1_wvalid;
  S_AXI_LITE1_arready <= S_AXI_LITE1_1_ARREADY;
  S_AXI_LITE1_awready <= S_AXI_LITE1_1_AWREADY;
  S_AXI_LITE1_bresp(1 downto 0) <= S_AXI_LITE1_1_BRESP(1 downto 0);
  S_AXI_LITE1_bvalid <= S_AXI_LITE1_1_BVALID;
  S_AXI_LITE1_rdata(31 downto 0) <= S_AXI_LITE1_1_RDATA(31 downto 0);
  S_AXI_LITE1_rresp(1 downto 0) <= S_AXI_LITE1_1_RRESP(1 downto 0);
  S_AXI_LITE1_rvalid <= S_AXI_LITE1_1_RVALID;
  S_AXI_LITE1_wready <= S_AXI_LITE1_1_WREADY;
  S_AXI_LITE_arready <= axi_interconnect_mm_M03_AXI_ARREADY;
  S_AXI_LITE_awready <= axi_interconnect_mm_M03_AXI_AWREADY;
  S_AXI_LITE_bresp(1 downto 0) <= axi_interconnect_mm_M03_AXI_BRESP(1 downto 0);
  S_AXI_LITE_bvalid <= axi_interconnect_mm_M03_AXI_BVALID;
  S_AXI_LITE_rdata(31 downto 0) <= axi_interconnect_mm_M03_AXI_RDATA(31 downto 0);
  S_AXI_LITE_rresp(1 downto 0) <= axi_interconnect_mm_M03_AXI_RRESP(1 downto 0);
  S_AXI_LITE_rvalid <= axi_interconnect_mm_M03_AXI_RVALID;
  S_AXI_LITE_wready <= axi_interconnect_mm_M03_AXI_WREADY;
  axi_dma_1_M_AXIS_MM2S_TREADY <= M_AXIS_MM2S1_tready;
  axi_interconnect_mm_M03_AXI_ARADDR(31 downto 0) <= S_AXI_LITE_araddr(31 downto 0);
  axi_interconnect_mm_M03_AXI_ARVALID <= S_AXI_LITE_arvalid;
  axi_interconnect_mm_M03_AXI_AWADDR(31 downto 0) <= S_AXI_LITE_awaddr(31 downto 0);
  axi_interconnect_mm_M03_AXI_AWVALID <= S_AXI_LITE_awvalid;
  axi_interconnect_mm_M03_AXI_BREADY <= S_AXI_LITE_bready;
  axi_interconnect_mm_M03_AXI_RREADY <= S_AXI_LITE_rready;
  axi_interconnect_mm_M03_AXI_WDATA(31 downto 0) <= S_AXI_LITE_wdata(31 downto 0);
  axi_interconnect_mm_M03_AXI_WVALID <= S_AXI_LITE_wvalid;
  axis_interconnect_M01_AXIS_TDATA(31 downto 0) <= S_AXIS_S2MM_tdata(31 downto 0);
  axis_interconnect_M01_AXIS_TKEEP(3 downto 0) <= S_AXIS_S2MM_tkeep(3 downto 0);
  axis_interconnect_M01_AXIS_TLAST <= S_AXIS_S2MM_tlast;
  axis_interconnect_M01_AXIS_TVALID <= S_AXIS_S2MM_tvalid;
  mm2s_introut(0) <= util_vector_logic_0_Res(0);
  pcie_0_peripheral_aresetn(0) <= axi_resetn(0);
  s2mm_introut(0) <= mm2s_intr_or1_Res(0);
  s_axi_aclk_1 <= m_axi_sg_aclk;
axi_dma_0: component top_axi_dma_0_0
     port map (
      axi_resetn => pcie_0_peripheral_aresetn(0),
      m_axi_mm2s_aclk => s_axi_aclk_1,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_0_M_AXI_MM2S_ARREADY(0),
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(127 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(127 downto 0),
      m_axi_mm2s_rlast => axi_dma_0_M_AXI_MM2S_RLAST(0),
      m_axi_mm2s_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_0_M_AXI_MM2S_RVALID(0),
      m_axi_s2mm_aclk => s_axi_aclk_1,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_AWREADY(0),
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_BVALID(0),
      m_axi_s2mm_wdata(127 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(127 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_WREADY(0),
      m_axi_s2mm_wstrb(15 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(15 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      m_axi_sg_aclk => s_axi_aclk_1,
      m_axi_sg_araddr(31 downto 0) => axi_dma_0_M_AXI_SG_ARADDR(31 downto 0),
      m_axi_sg_arburst(1 downto 0) => axi_dma_0_M_AXI_SG_ARBURST(1 downto 0),
      m_axi_sg_arcache(3 downto 0) => axi_dma_0_M_AXI_SG_ARCACHE(3 downto 0),
      m_axi_sg_arlen(7 downto 0) => axi_dma_0_M_AXI_SG_ARLEN(7 downto 0),
      m_axi_sg_arprot(2 downto 0) => axi_dma_0_M_AXI_SG_ARPROT(2 downto 0),
      m_axi_sg_arready => axi_dma_0_M_AXI_SG_ARREADY,
      m_axi_sg_arsize(2 downto 0) => axi_dma_0_M_AXI_SG_ARSIZE(2 downto 0),
      m_axi_sg_arvalid => axi_dma_0_M_AXI_SG_ARVALID,
      m_axi_sg_awaddr(31 downto 0) => axi_dma_0_M_AXI_SG_AWADDR(31 downto 0),
      m_axi_sg_awburst(1 downto 0) => axi_dma_0_M_AXI_SG_AWBURST(1 downto 0),
      m_axi_sg_awcache(3 downto 0) => axi_dma_0_M_AXI_SG_AWCACHE(3 downto 0),
      m_axi_sg_awlen(7 downto 0) => axi_dma_0_M_AXI_SG_AWLEN(7 downto 0),
      m_axi_sg_awprot(2 downto 0) => axi_dma_0_M_AXI_SG_AWPROT(2 downto 0),
      m_axi_sg_awready => axi_dma_0_M_AXI_SG_AWREADY,
      m_axi_sg_awsize(2 downto 0) => axi_dma_0_M_AXI_SG_AWSIZE(2 downto 0),
      m_axi_sg_awvalid => axi_dma_0_M_AXI_SG_AWVALID,
      m_axi_sg_bready => axi_dma_0_M_AXI_SG_BREADY,
      m_axi_sg_bresp(1 downto 0) => axi_dma_0_M_AXI_SG_BRESP(1 downto 0),
      m_axi_sg_bvalid => axi_dma_0_M_AXI_SG_BVALID,
      m_axi_sg_rdata(31 downto 0) => axi_dma_0_M_AXI_SG_RDATA(31 downto 0),
      m_axi_sg_rlast => axi_dma_0_M_AXI_SG_RLAST,
      m_axi_sg_rready => axi_dma_0_M_AXI_SG_RREADY,
      m_axi_sg_rresp(1 downto 0) => axi_dma_0_M_AXI_SG_RRESP(1 downto 0),
      m_axi_sg_rvalid => axi_dma_0_M_AXI_SG_RVALID,
      m_axi_sg_wdata(31 downto 0) => axi_dma_0_M_AXI_SG_WDATA(31 downto 0),
      m_axi_sg_wlast => axi_dma_0_M_AXI_SG_WLAST,
      m_axi_sg_wready => axi_dma_0_M_AXI_SG_WREADY,
      m_axi_sg_wstrb(3 downto 0) => axi_dma_0_M_AXI_SG_WSTRB(3 downto 0),
      m_axi_sg_wvalid => axi_dma_0_M_AXI_SG_WVALID,
      m_axis_mm2s_tdata(31 downto 0) => S01_AXIS_1_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => S01_AXIS_1_TKEEP(3 downto 0),
      m_axis_mm2s_tlast => S01_AXIS_1_TLAST,
      m_axis_mm2s_tready => S01_AXIS_1_TREADY,
      m_axis_mm2s_tvalid => S01_AXIS_1_TVALID,
      mm2s_introut => axi_dma_0_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_introut => axi_dma_0_s2mm_introut,
      s2mm_prmry_reset_out_n => NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => s_axi_aclk_1,
      s_axi_lite_araddr(9 downto 0) => axi_interconnect_mm_M03_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => axi_interconnect_mm_M03_AXI_ARREADY,
      s_axi_lite_arvalid => axi_interconnect_mm_M03_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => axi_interconnect_mm_M03_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => axi_interconnect_mm_M03_AXI_AWREADY,
      s_axi_lite_awvalid => axi_interconnect_mm_M03_AXI_AWVALID,
      s_axi_lite_bready => axi_interconnect_mm_M03_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => axi_interconnect_mm_M03_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => axi_interconnect_mm_M03_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => axi_interconnect_mm_M03_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => axi_interconnect_mm_M03_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => axi_interconnect_mm_M03_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => axi_interconnect_mm_M03_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => axi_interconnect_mm_M03_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => axi_interconnect_mm_M03_AXI_WREADY,
      s_axi_lite_wvalid => axi_interconnect_mm_M03_AXI_WVALID,
      s_axis_s2mm_tdata(31 downto 0) => axis_interconnect_M01_AXIS_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => axis_interconnect_M01_AXIS_TKEEP(3 downto 0),
      s_axis_s2mm_tlast => axis_interconnect_M01_AXIS_TLAST,
      s_axis_s2mm_tready => axis_interconnect_M01_AXIS_TREADY,
      s_axis_s2mm_tvalid => axis_interconnect_M01_AXIS_TVALID
    );
axi_dma_1: component top_axi_dma_1_0
     port map (
      axi_resetn => pcie_0_peripheral_aresetn(0),
      m_axi_mm2s_aclk => s_axi_aclk_1,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_1_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_1_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_1_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_1_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_1_M_AXI_MM2S_ARREADY(0),
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_1_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(127 downto 0) => axi_dma_1_M_AXI_MM2S_RDATA(127 downto 0),
      m_axi_mm2s_rlast => axi_dma_1_M_AXI_MM2S_RLAST(0),
      m_axi_mm2s_rready => axi_dma_1_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_1_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_1_M_AXI_MM2S_RVALID(0),
      m_axi_s2mm_aclk => s_axi_aclk_1,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_1_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_1_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_1_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_1_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_1_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_1_M_AXI_S2MM_AWREADY(0),
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_1_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_1_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_1_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_1_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_1_M_AXI_S2MM_BVALID(0),
      m_axi_s2mm_wdata(127 downto 0) => axi_dma_1_M_AXI_S2MM_WDATA(127 downto 0),
      m_axi_s2mm_wlast => axi_dma_1_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_1_M_AXI_S2MM_WREADY(0),
      m_axi_s2mm_wstrb(15 downto 0) => axi_dma_1_M_AXI_S2MM_WSTRB(15 downto 0),
      m_axi_s2mm_wvalid => axi_dma_1_M_AXI_S2MM_WVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_1_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => axi_dma_1_M_AXIS_MM2S_TKEEP(3 downto 0),
      m_axis_mm2s_tlast => axi_dma_1_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_dma_1_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_1_M_AXIS_MM2S_TVALID,
      mm2s_introut => axi_dma_1_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_1_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_introut => axi_dma_1_s2mm_introut,
      s2mm_prmry_reset_out_n => NLW_axi_dma_1_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => s_axi_aclk_1,
      s_axi_lite_araddr(9 downto 0) => S_AXI_LITE1_1_ARADDR(9 downto 0),
      s_axi_lite_arready => S_AXI_LITE1_1_ARREADY,
      s_axi_lite_arvalid => S_AXI_LITE1_1_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => S_AXI_LITE1_1_AWADDR(9 downto 0),
      s_axi_lite_awready => S_AXI_LITE1_1_AWREADY,
      s_axi_lite_awvalid => S_AXI_LITE1_1_AWVALID,
      s_axi_lite_bready => S_AXI_LITE1_1_BREADY,
      s_axi_lite_bresp(1 downto 0) => S_AXI_LITE1_1_BRESP(1 downto 0),
      s_axi_lite_bvalid => S_AXI_LITE1_1_BVALID,
      s_axi_lite_rdata(31 downto 0) => S_AXI_LITE1_1_RDATA(31 downto 0),
      s_axi_lite_rready => S_AXI_LITE1_1_RREADY,
      s_axi_lite_rresp(1 downto 0) => S_AXI_LITE1_1_RRESP(1 downto 0),
      s_axi_lite_rvalid => S_AXI_LITE1_1_RVALID,
      s_axi_lite_wdata(31 downto 0) => S_AXI_LITE1_1_WDATA(31 downto 0),
      s_axi_lite_wready => S_AXI_LITE1_1_WREADY,
      s_axi_lite_wvalid => S_AXI_LITE1_1_WVALID,
      s_axis_s2mm_tdata(31 downto 0) => S_AXIS_S2MM1_1_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => S_AXIS_S2MM1_1_TKEEP(3 downto 0),
      s_axis_s2mm_tlast => S_AXIS_S2MM1_1_TLAST,
      s_axis_s2mm_tready => S_AXIS_S2MM1_1_TREADY,
      s_axis_s2mm_tvalid => S_AXIS_S2MM1_1_TVALID
    );
axi_interconnect_0: entity work.top_axi_interconnect_0_2
     port map (
      ACLK => s_axi_aclk_1,
      ARESETN(0) => pcie_0_peripheral_aresetn(0),
      M00_ACLK => s_axi_aclk_1,
      M00_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => Conn4_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => Conn4_ARBURST(1 downto 0),
      M00_AXI_arid(2 downto 0) => Conn4_ARID(2 downto 0),
      M00_AXI_arlen(7 downto 0) => Conn4_ARLEN(7 downto 0),
      M00_AXI_arready => Conn4_ARREADY,
      M00_AXI_arregion(3 downto 0) => Conn4_ARREGION(3 downto 0),
      M00_AXI_arsize(2 downto 0) => Conn4_ARSIZE(2 downto 0),
      M00_AXI_arvalid => Conn4_ARVALID,
      M00_AXI_awaddr(31 downto 0) => Conn4_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => Conn4_AWBURST(1 downto 0),
      M00_AXI_awid(2 downto 0) => Conn4_AWID(2 downto 0),
      M00_AXI_awlen(7 downto 0) => Conn4_AWLEN(7 downto 0),
      M00_AXI_awready => Conn4_AWREADY,
      M00_AXI_awregion(3 downto 0) => Conn4_AWREGION(3 downto 0),
      M00_AXI_awsize(2 downto 0) => Conn4_AWSIZE(2 downto 0),
      M00_AXI_awvalid => Conn4_AWVALID,
      M00_AXI_bid(2 downto 0) => Conn4_BID(2 downto 0),
      M00_AXI_bready => Conn4_BREADY,
      M00_AXI_bresp(1 downto 0) => Conn4_BRESP(1 downto 0),
      M00_AXI_bvalid => Conn4_BVALID,
      M00_AXI_rdata(127 downto 0) => Conn4_RDATA(127 downto 0),
      M00_AXI_rid(2 downto 0) => Conn4_RID(2 downto 0),
      M00_AXI_rlast => Conn4_RLAST,
      M00_AXI_rready => Conn4_RREADY,
      M00_AXI_rresp(1 downto 0) => Conn4_RRESP(1 downto 0),
      M00_AXI_rvalid => Conn4_RVALID,
      M00_AXI_wdata(127 downto 0) => Conn4_WDATA(127 downto 0),
      M00_AXI_wlast => Conn4_WLAST,
      M00_AXI_wready => Conn4_WREADY,
      M00_AXI_wstrb(15 downto 0) => Conn4_WSTRB(15 downto 0),
      M00_AXI_wvalid => Conn4_WVALID,
      S00_ACLK => s_axi_aclk_1,
      S00_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S00_AXI_arready(0) => axi_dma_0_M_AXI_MM2S_ARREADY(0),
      S00_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S00_AXI_arvalid(0) => axi_dma_0_M_AXI_MM2S_ARVALID,
      S00_AXI_rdata(127 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(127 downto 0),
      S00_AXI_rlast(0) => axi_dma_0_M_AXI_MM2S_RLAST(0),
      S00_AXI_rready(0) => axi_dma_0_M_AXI_MM2S_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => axi_dma_0_M_AXI_MM2S_RVALID(0),
      S01_ACLK => s_axi_aclk_1,
      S01_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      S01_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S01_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S01_AXI_awready(0) => axi_dma_0_M_AXI_S2MM_AWREADY(0),
      S01_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S01_AXI_awvalid(0) => axi_dma_0_M_AXI_S2MM_AWVALID,
      S01_AXI_bready(0) => axi_dma_0_M_AXI_S2MM_BREADY,
      S01_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => axi_dma_0_M_AXI_S2MM_BVALID(0),
      S01_AXI_wdata(127 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(127 downto 0),
      S01_AXI_wlast(0) => axi_dma_0_M_AXI_S2MM_WLAST,
      S01_AXI_wready(0) => axi_dma_0_M_AXI_S2MM_WREADY(0),
      S01_AXI_wstrb(15 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(15 downto 0),
      S01_AXI_wvalid(0) => axi_dma_0_M_AXI_S2MM_WVALID,
      S02_ACLK => s_axi_aclk_1,
      S02_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      S02_AXI_araddr(31 downto 0) => axi_dma_1_M_AXI_MM2S_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => axi_dma_1_M_AXI_MM2S_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => axi_dma_1_M_AXI_MM2S_ARCACHE(3 downto 0),
      S02_AXI_arlen(7 downto 0) => axi_dma_1_M_AXI_MM2S_ARLEN(7 downto 0),
      S02_AXI_arprot(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARPROT(2 downto 0),
      S02_AXI_arready(0) => axi_dma_1_M_AXI_MM2S_ARREADY(0),
      S02_AXI_arsize(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARSIZE(2 downto 0),
      S02_AXI_arvalid(0) => axi_dma_1_M_AXI_MM2S_ARVALID,
      S02_AXI_rdata(127 downto 0) => axi_dma_1_M_AXI_MM2S_RDATA(127 downto 0),
      S02_AXI_rlast(0) => axi_dma_1_M_AXI_MM2S_RLAST(0),
      S02_AXI_rready(0) => axi_dma_1_M_AXI_MM2S_RREADY,
      S02_AXI_rresp(1 downto 0) => axi_dma_1_M_AXI_MM2S_RRESP(1 downto 0),
      S02_AXI_rvalid(0) => axi_dma_1_M_AXI_MM2S_RVALID(0),
      S03_ACLK => s_axi_aclk_1,
      S03_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      S03_AXI_awaddr(31 downto 0) => axi_dma_1_M_AXI_S2MM_AWADDR(31 downto 0),
      S03_AXI_awburst(1 downto 0) => axi_dma_1_M_AXI_S2MM_AWBURST(1 downto 0),
      S03_AXI_awcache(3 downto 0) => axi_dma_1_M_AXI_S2MM_AWCACHE(3 downto 0),
      S03_AXI_awlen(7 downto 0) => axi_dma_1_M_AXI_S2MM_AWLEN(7 downto 0),
      S03_AXI_awprot(2 downto 0) => axi_dma_1_M_AXI_S2MM_AWPROT(2 downto 0),
      S03_AXI_awready(0) => axi_dma_1_M_AXI_S2MM_AWREADY(0),
      S03_AXI_awsize(2 downto 0) => axi_dma_1_M_AXI_S2MM_AWSIZE(2 downto 0),
      S03_AXI_awvalid(0) => axi_dma_1_M_AXI_S2MM_AWVALID,
      S03_AXI_bready(0) => axi_dma_1_M_AXI_S2MM_BREADY,
      S03_AXI_bresp(1 downto 0) => axi_dma_1_M_AXI_S2MM_BRESP(1 downto 0),
      S03_AXI_bvalid(0) => axi_dma_1_M_AXI_S2MM_BVALID(0),
      S03_AXI_wdata(127 downto 0) => axi_dma_1_M_AXI_S2MM_WDATA(127 downto 0),
      S03_AXI_wlast(0) => axi_dma_1_M_AXI_S2MM_WLAST,
      S03_AXI_wready(0) => axi_dma_1_M_AXI_S2MM_WREADY(0),
      S03_AXI_wstrb(15 downto 0) => axi_dma_1_M_AXI_S2MM_WSTRB(15 downto 0),
      S03_AXI_wvalid(0) => axi_dma_1_M_AXI_S2MM_WVALID,
      S04_ACLK => s_axi_aclk_1,
      S04_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      S04_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_SG_ARADDR(31 downto 0),
      S04_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_SG_ARBURST(1 downto 0),
      S04_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_SG_ARCACHE(3 downto 0),
      S04_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_SG_ARLEN(7 downto 0),
      S04_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_SG_ARPROT(2 downto 0),
      S04_AXI_arready => axi_dma_0_M_AXI_SG_ARREADY,
      S04_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_SG_ARSIZE(2 downto 0),
      S04_AXI_arvalid => axi_dma_0_M_AXI_SG_ARVALID,
      S04_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_SG_AWADDR(31 downto 0),
      S04_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_SG_AWBURST(1 downto 0),
      S04_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_SG_AWCACHE(3 downto 0),
      S04_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_SG_AWLEN(7 downto 0),
      S04_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_SG_AWPROT(2 downto 0),
      S04_AXI_awready => axi_dma_0_M_AXI_SG_AWREADY,
      S04_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_SG_AWSIZE(2 downto 0),
      S04_AXI_awvalid => axi_dma_0_M_AXI_SG_AWVALID,
      S04_AXI_bready => axi_dma_0_M_AXI_SG_BREADY,
      S04_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_SG_BRESP(1 downto 0),
      S04_AXI_bvalid => axi_dma_0_M_AXI_SG_BVALID,
      S04_AXI_rdata(31 downto 0) => axi_dma_0_M_AXI_SG_RDATA(31 downto 0),
      S04_AXI_rlast => axi_dma_0_M_AXI_SG_RLAST,
      S04_AXI_rready => axi_dma_0_M_AXI_SG_RREADY,
      S04_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_SG_RRESP(1 downto 0),
      S04_AXI_rvalid => axi_dma_0_M_AXI_SG_RVALID,
      S04_AXI_wdata(31 downto 0) => axi_dma_0_M_AXI_SG_WDATA(31 downto 0),
      S04_AXI_wlast => axi_dma_0_M_AXI_SG_WLAST,
      S04_AXI_wready => axi_dma_0_M_AXI_SG_WREADY,
      S04_AXI_wstrb(3 downto 0) => axi_dma_0_M_AXI_SG_WSTRB(3 downto 0),
      S04_AXI_wvalid => axi_dma_0_M_AXI_SG_WVALID
    );
mm2s_intr_or: component top_mm2s_intr_or_0
     port map (
      Op1(0) => axi_dma_0_mm2s_introut,
      Op2(0) => axi_dma_1_mm2s_introut,
      Res(0) => util_vector_logic_0_Res(0)
    );
mm2s_intr_or1: component top_mm2s_intr_or1_0
     port map (
      Op1(0) => axi_dma_0_s2mm_introut,
      Op2(0) => axi_dma_1_s2mm_introut,
      Res(0) => mm2s_intr_or1_Res(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_interconnect_mm_0_imp_1D2K655 is
  port (
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end axi_interconnect_mm_0_imp_1D2K655;

architecture STRUCTURE of axi_interconnect_mm_0_imp_1D2K655 is
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Conn2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARVALID : STD_LOGIC;
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Conn2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWVALID : STD_LOGIC;
  signal Conn2_BREADY : STD_LOGIC;
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RREADY : STD_LOGIC;
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC;
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC;
  signal Conn3_ARVALID : STD_LOGIC;
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC;
  signal Conn3_AWVALID : STD_LOGIC;
  signal Conn3_BREADY : STD_LOGIC;
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC;
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RREADY : STD_LOGIC;
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC;
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WREADY : STD_LOGIC;
  signal Conn3_WVALID : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_ARREADY : STD_LOGIC;
  signal S_AXI_CTRL_1_ARVALID : STD_LOGIC;
  signal S_AXI_CTRL_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_AWREADY : STD_LOGIC;
  signal S_AXI_CTRL_1_AWVALID : STD_LOGIC;
  signal S_AXI_CTRL_1_BREADY : STD_LOGIC;
  signal S_AXI_CTRL_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_CTRL_1_BVALID : STD_LOGIC;
  signal S_AXI_CTRL_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_RREADY : STD_LOGIC;
  signal S_AXI_CTRL_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_CTRL_1_RVALID : STD_LOGIC;
  signal S_AXI_CTRL_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_WREADY : STD_LOGIC;
  signal S_AXI_CTRL_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_CTRL_1_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal pcie_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_aclk_1 : STD_LOGIC;
begin
  Conn1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Conn1_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  Conn1_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  Conn1_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  Conn1_ARLOCK(0) <= S00_AXI_arlock(0);
  Conn1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  Conn1_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  Conn1_ARREGION(3 downto 0) <= S00_AXI_arregion(3 downto 0);
  Conn1_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  Conn1_ARVALID(0) <= S00_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Conn1_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  Conn1_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  Conn1_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  Conn1_AWLOCK(0) <= S00_AXI_awlock(0);
  Conn1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  Conn1_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  Conn1_AWREGION(3 downto 0) <= S00_AXI_awregion(3 downto 0);
  Conn1_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  Conn1_AWVALID(0) <= S00_AXI_awvalid(0);
  Conn1_BREADY(0) <= S00_AXI_bready(0);
  Conn1_RREADY(0) <= S00_AXI_rready(0);
  Conn1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Conn1_WLAST(0) <= S00_AXI_wlast(0);
  Conn1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S00_AXI_wvalid(0);
  Conn2_ARREADY <= M04_AXI_arready;
  Conn2_AWREADY <= M04_AXI_awready;
  Conn2_BVALID <= M04_AXI_bvalid;
  Conn2_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  Conn2_RVALID <= M04_AXI_rvalid;
  Conn2_WREADY <= M04_AXI_wready;
  Conn3_ARREADY <= M05_AXI_arready;
  Conn3_AWREADY <= M05_AXI_awready;
  Conn3_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  Conn3_BVALID <= M05_AXI_bvalid;
  Conn3_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  Conn3_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  Conn3_RVALID <= M05_AXI_rvalid;
  Conn3_WREADY <= M05_AXI_wready;
  M00_AXI_araddr(31 downto 0) <= axi_interconnect_0_M00_AXI_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= axi_interconnect_0_M00_AXI_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= axi_interconnect_0_M00_AXI_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= axi_interconnect_0_M00_AXI_AWVALID(0);
  M00_AXI_bready(0) <= axi_interconnect_0_M00_AXI_BREADY(0);
  M00_AXI_rready(0) <= axi_interconnect_0_M00_AXI_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= axi_interconnect_0_M00_AXI_WDATA(31 downto 0);
  M00_AXI_wvalid(0) <= axi_interconnect_0_M00_AXI_WVALID(0);
  M01_AXI_araddr(31 downto 0) <= axi_interconnect_0_M01_AXI_ARADDR(31 downto 0);
  M01_AXI_arvalid <= axi_interconnect_0_M01_AXI_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= axi_interconnect_0_M01_AXI_AWADDR(31 downto 0);
  M01_AXI_awvalid <= axi_interconnect_0_M01_AXI_AWVALID;
  M01_AXI_bready <= axi_interconnect_0_M01_AXI_BREADY;
  M01_AXI_rready <= axi_interconnect_0_M01_AXI_RREADY;
  M01_AXI_wdata(31 downto 0) <= axi_interconnect_0_M01_AXI_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= axi_interconnect_0_M01_AXI_WSTRB(3 downto 0);
  M01_AXI_wvalid <= axi_interconnect_0_M01_AXI_WVALID;
  M02_AXI_araddr(31 downto 0) <= S_AXI_CTRL_1_ARADDR(31 downto 0);
  M02_AXI_arvalid <= S_AXI_CTRL_1_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= S_AXI_CTRL_1_AWADDR(31 downto 0);
  M02_AXI_awvalid <= S_AXI_CTRL_1_AWVALID;
  M02_AXI_bready <= S_AXI_CTRL_1_BREADY;
  M02_AXI_rready <= S_AXI_CTRL_1_RREADY;
  M02_AXI_wdata(31 downto 0) <= S_AXI_CTRL_1_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= S_AXI_CTRL_1_WSTRB(3 downto 0);
  M02_AXI_wvalid <= S_AXI_CTRL_1_WVALID;
  M03_AXI_araddr(31 downto 0) <= axi_interconnect_0_M03_AXI_ARADDR(31 downto 0);
  M03_AXI_arvalid <= axi_interconnect_0_M03_AXI_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= axi_interconnect_0_M03_AXI_AWADDR(31 downto 0);
  M03_AXI_awvalid <= axi_interconnect_0_M03_AXI_AWVALID;
  M03_AXI_bready <= axi_interconnect_0_M03_AXI_BREADY;
  M03_AXI_rready <= axi_interconnect_0_M03_AXI_RREADY;
  M03_AXI_wdata(31 downto 0) <= axi_interconnect_0_M03_AXI_WDATA(31 downto 0);
  M03_AXI_wvalid <= axi_interconnect_0_M03_AXI_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1(0) <= M04_ARESETN(0);
  M04_AXI_araddr(5 downto 0) <= Conn2_ARADDR(5 downto 0);
  M04_AXI_arprot(2 downto 0) <= Conn2_ARPROT(2 downto 0);
  M04_AXI_arvalid <= Conn2_ARVALID;
  M04_AXI_awaddr(5 downto 0) <= Conn2_AWADDR(5 downto 0);
  M04_AXI_awprot(2 downto 0) <= Conn2_AWPROT(2 downto 0);
  M04_AXI_awvalid <= Conn2_AWVALID;
  M04_AXI_bready <= Conn2_BREADY;
  M04_AXI_rready <= Conn2_RREADY;
  M04_AXI_wdata(31 downto 0) <= Conn2_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= Conn2_WSTRB(3 downto 0);
  M04_AXI_wvalid <= Conn2_WVALID;
  M05_AXI_araddr(31 downto 0) <= Conn3_ARADDR(31 downto 0);
  M05_AXI_arvalid <= Conn3_ARVALID;
  M05_AXI_awaddr(31 downto 0) <= Conn3_AWADDR(31 downto 0);
  M05_AXI_awvalid <= Conn3_AWVALID;
  M05_AXI_bready <= Conn3_BREADY;
  M05_AXI_rready <= Conn3_RREADY;
  M05_AXI_wdata(31 downto 0) <= Conn3_WDATA(31 downto 0);
  M05_AXI_wvalid <= Conn3_WVALID;
  S00_AXI_arready(0) <= Conn1_ARREADY(0);
  S00_AXI_awready(0) <= Conn1_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= Conn1_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S00_AXI_rlast(0) <= Conn1_RLAST(0);
  S00_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= Conn1_RVALID(0);
  S00_AXI_wready(0) <= Conn1_WREADY(0);
  S_AXI_CTRL_1_ARREADY <= M02_AXI_arready;
  S_AXI_CTRL_1_AWREADY <= M02_AXI_awready;
  S_AXI_CTRL_1_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  S_AXI_CTRL_1_BVALID <= M02_AXI_bvalid;
  S_AXI_CTRL_1_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  S_AXI_CTRL_1_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  S_AXI_CTRL_1_RVALID <= M02_AXI_rvalid;
  S_AXI_CTRL_1_WREADY <= M02_AXI_wready;
  axi_interconnect_0_M00_AXI_ARREADY(0) <= M00_AXI_arready(0);
  axi_interconnect_0_M00_AXI_AWREADY(0) <= M00_AXI_awready(0);
  axi_interconnect_0_M00_AXI_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  axi_interconnect_0_M00_AXI_BVALID(0) <= M00_AXI_bvalid(0);
  axi_interconnect_0_M00_AXI_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  axi_interconnect_0_M00_AXI_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  axi_interconnect_0_M00_AXI_RVALID(0) <= M00_AXI_rvalid(0);
  axi_interconnect_0_M00_AXI_WREADY(0) <= M00_AXI_wready(0);
  axi_interconnect_0_M01_AXI_ARREADY <= M01_AXI_arready;
  axi_interconnect_0_M01_AXI_AWREADY <= M01_AXI_awready;
  axi_interconnect_0_M01_AXI_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  axi_interconnect_0_M01_AXI_BVALID <= M01_AXI_bvalid;
  axi_interconnect_0_M01_AXI_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  axi_interconnect_0_M01_AXI_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  axi_interconnect_0_M01_AXI_RVALID <= M01_AXI_rvalid;
  axi_interconnect_0_M01_AXI_WREADY <= M01_AXI_wready;
  axi_interconnect_0_M03_AXI_ARREADY <= M03_AXI_arready;
  axi_interconnect_0_M03_AXI_AWREADY <= M03_AXI_awready;
  axi_interconnect_0_M03_AXI_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  axi_interconnect_0_M03_AXI_BVALID <= M03_AXI_bvalid;
  axi_interconnect_0_M03_AXI_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  axi_interconnect_0_M03_AXI_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  axi_interconnect_0_M03_AXI_RVALID <= M03_AXI_rvalid;
  axi_interconnect_0_M03_AXI_WREADY <= M03_AXI_wready;
  pcie_0_peripheral_aresetn(0) <= S00_ARESETN(0);
  s_axi_aclk_1 <= S00_ACLK;
axi_interconnect_0: entity work.top_axi_interconnect_0_3
     port map (
      ACLK => s_axi_aclk_1,
      ARESETN(0) => pcie_0_peripheral_aresetn(0),
      M00_ACLK => s_axi_aclk_1,
      M00_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => axi_interconnect_0_M00_AXI_ARREADY(0),
      M00_AXI_arvalid(0) => axi_interconnect_0_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => axi_interconnect_0_M00_AXI_AWREADY(0),
      M00_AXI_awvalid(0) => axi_interconnect_0_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => axi_interconnect_0_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => axi_interconnect_0_M00_AXI_BVALID(0),
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => axi_interconnect_0_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => axi_interconnect_0_M00_AXI_RVALID(0),
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => axi_interconnect_0_M00_AXI_WREADY(0),
      M00_AXI_wvalid(0) => axi_interconnect_0_M00_AXI_WVALID(0),
      M01_ACLK => s_axi_aclk_1,
      M01_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => axi_interconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => axi_interconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => axi_interconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_interconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_interconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_interconnect_0_M01_AXI_WVALID,
      M02_ACLK => s_axi_aclk_1,
      M02_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => S_AXI_CTRL_1_ARADDR(31 downto 0),
      M02_AXI_arready => S_AXI_CTRL_1_ARREADY,
      M02_AXI_arvalid => S_AXI_CTRL_1_ARVALID,
      M02_AXI_awaddr(31 downto 0) => S_AXI_CTRL_1_AWADDR(31 downto 0),
      M02_AXI_awready => S_AXI_CTRL_1_AWREADY,
      M02_AXI_awvalid => S_AXI_CTRL_1_AWVALID,
      M02_AXI_bready => S_AXI_CTRL_1_BREADY,
      M02_AXI_bresp(1 downto 0) => S_AXI_CTRL_1_BRESP(1 downto 0),
      M02_AXI_bvalid => S_AXI_CTRL_1_BVALID,
      M02_AXI_rdata(31 downto 0) => S_AXI_CTRL_1_RDATA(31 downto 0),
      M02_AXI_rready => S_AXI_CTRL_1_RREADY,
      M02_AXI_rresp(1 downto 0) => S_AXI_CTRL_1_RRESP(1 downto 0),
      M02_AXI_rvalid => S_AXI_CTRL_1_RVALID,
      M02_AXI_wdata(31 downto 0) => S_AXI_CTRL_1_WDATA(31 downto 0),
      M02_AXI_wready => S_AXI_CTRL_1_WREADY,
      M02_AXI_wstrb(3 downto 0) => S_AXI_CTRL_1_WSTRB(3 downto 0),
      M02_AXI_wvalid => S_AXI_CTRL_1_WVALID,
      M03_ACLK => s_axi_aclk_1,
      M03_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => axi_interconnect_0_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready => axi_interconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_interconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => axi_interconnect_0_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready => axi_interconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_interconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => axi_interconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_interconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_interconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_interconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_interconnect_0_M03_AXI_WREADY,
      M03_AXI_wvalid => axi_interconnect_0_M03_AXI_WVALID,
      M04_ACLK => M04_ACLK_1,
      M04_ARESETN => M04_ARESETN_1(0),
      M04_AXI_araddr(5 downto 0) => Conn2_ARADDR(5 downto 0),
      M04_AXI_arprot(2 downto 0) => Conn2_ARPROT(2 downto 0),
      M04_AXI_arready => Conn2_ARREADY,
      M04_AXI_arvalid => Conn2_ARVALID,
      M04_AXI_awaddr(5 downto 0) => Conn2_AWADDR(5 downto 0),
      M04_AXI_awprot(2 downto 0) => Conn2_AWPROT(2 downto 0),
      M04_AXI_awready => Conn2_AWREADY,
      M04_AXI_awvalid => Conn2_AWVALID,
      M04_AXI_bready => Conn2_BREADY,
      M04_AXI_bvalid => Conn2_BVALID,
      M04_AXI_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      M04_AXI_rready => Conn2_RREADY,
      M04_AXI_rvalid => Conn2_RVALID,
      M04_AXI_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      M04_AXI_wready => Conn2_WREADY,
      M04_AXI_wstrb(3 downto 0) => Conn2_WSTRB(3 downto 0),
      M04_AXI_wvalid => Conn2_WVALID,
      M05_ACLK => s_axi_aclk_1,
      M05_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => Conn3_ARADDR(31 downto 0),
      M05_AXI_arready => Conn3_ARREADY,
      M05_AXI_arvalid => Conn3_ARVALID,
      M05_AXI_awaddr(31 downto 0) => Conn3_AWADDR(31 downto 0),
      M05_AXI_awready => Conn3_AWREADY,
      M05_AXI_awvalid => Conn3_AWVALID,
      M05_AXI_bready => Conn3_BREADY,
      M05_AXI_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      M05_AXI_bvalid => Conn3_BVALID,
      M05_AXI_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      M05_AXI_rready => Conn3_RREADY,
      M05_AXI_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      M05_AXI_rvalid => Conn3_RVALID,
      M05_AXI_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      M05_AXI_wready => Conn3_WREADY,
      M05_AXI_wvalid => Conn3_WVALID,
      S00_ACLK => s_axi_aclk_1,
      S00_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => Conn1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => Conn1_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => Conn1_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => Conn1_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => Conn1_ARQOS(3 downto 0),
      S00_AXI_arready(0) => Conn1_ARREADY(0),
      S00_AXI_arregion(3 downto 0) => Conn1_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => Conn1_ARSIZE(2 downto 0),
      S00_AXI_arvalid(0) => Conn1_ARVALID(0),
      S00_AXI_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => Conn1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => Conn1_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => Conn1_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => Conn1_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => Conn1_AWQOS(3 downto 0),
      S00_AXI_awready(0) => Conn1_AWREADY(0),
      S00_AXI_awregion(3 downto 0) => Conn1_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => Conn1_AWSIZE(2 downto 0),
      S00_AXI_awvalid(0) => Conn1_AWVALID(0),
      S00_AXI_bready(0) => Conn1_BREADY(0),
      S00_AXI_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => Conn1_BVALID(0),
      S00_AXI_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      S00_AXI_rlast(0) => Conn1_RLAST(0),
      S00_AXI_rready(0) => Conn1_RREADY(0),
      S00_AXI_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => Conn1_RVALID(0),
      S00_AXI_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      S00_AXI_wlast(0) => Conn1_WLAST(0),
      S00_AXI_wready(0) => Conn1_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => Conn1_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_interconnect_0_imp_16OY8LK is
  port (
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    M01_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXIS_tlast : out STD_LOGIC;
    M01_AXIS_tready : in STD_LOGIC;
    M01_AXIS_tvalid : out STD_LOGIC;
    M02_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXIS_tlast : out STD_LOGIC;
    M02_AXIS_tready : in STD_LOGIC;
    M02_AXIS_tvalid : out STD_LOGIC;
    M03_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXIS_tlast : out STD_LOGIC;
    M03_AXIS_tready : in STD_LOGIC;
    M03_AXIS_tvalid : out STD_LOGIC;
    M04_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXIS_tlast : out STD_LOGIC;
    M04_AXIS_tready : in STD_LOGIC;
    M04_AXIS_tvalid : out STD_LOGIC;
    M05_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXIS_tready : in STD_LOGIC;
    M05_AXIS_tvalid : out STD_LOGIC;
    M06_AXIS_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXIS_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXIS_tlast : out STD_LOGIC;
    M06_AXIS_tready : in STD_LOGIC;
    M06_AXIS_tvalid : out STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ACLK1 : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC;
    S00_AXIS_tready : out STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC;
    S01_AXIS_tready : out STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC;
    S02_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXIS_tlast : in STD_LOGIC;
    S02_AXIS_tready : out STD_LOGIC;
    S02_AXIS_tvalid : in STD_LOGIC;
    S03_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXIS_tlast : in STD_LOGIC;
    S03_AXIS_tready : out STD_LOGIC;
    S03_AXIS_tvalid : in STD_LOGIC;
    S04_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXIS_tlast : in STD_LOGIC;
    S04_AXIS_tready : out STD_LOGIC;
    S04_AXIS_tvalid : in STD_LOGIC;
    S05_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S05_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXIS_tready : out STD_LOGIC;
    S05_AXIS_tvalid : in STD_LOGIC;
    S06_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S06_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXIS_tlast : in STD_LOGIC;
    S06_AXIS_tready : out STD_LOGIC;
    S06_AXIS_tvalid : in STD_LOGIC;
    S_AXI_CTRL_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTRL_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end axis_interconnect_0_imp_16OY8LK;

architecture STRUCTURE of axis_interconnect_0_imp_16OY8LK is
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Conn2_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_TLAST : STD_LOGIC;
  signal Conn2_TREADY : STD_LOGIC;
  signal Conn2_TVALID : STD_LOGIC;
  signal Conn3_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_TLAST : STD_LOGIC;
  signal Conn3_TREADY : STD_LOGIC;
  signal Conn3_TVALID : STD_LOGIC;
  signal Conn4_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_TLAST : STD_LOGIC;
  signal Conn4_TREADY : STD_LOGIC;
  signal Conn4_TVALID : STD_LOGIC;
  signal Conn5_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn5_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn5_TREADY : STD_LOGIC;
  signal Conn5_TVALID : STD_LOGIC;
  signal Conn6_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn6_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn6_TREADY : STD_LOGIC;
  signal Conn6_TVALID : STD_LOGIC;
  signal Conn7_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn7_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn7_TLAST : STD_LOGIC;
  signal Conn7_TREADY : STD_LOGIC;
  signal Conn7_TVALID : STD_LOGIC;
  signal Conn8_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn8_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn8_TLAST : STD_LOGIC;
  signal Conn8_TREADY : STD_LOGIC;
  signal Conn8_TVALID : STD_LOGIC;
  signal S00_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXIS_1_TLAST : STD_LOGIC;
  signal S00_AXIS_1_TREADY : STD_LOGIC;
  signal S00_AXIS_1_TVALID : STD_LOGIC;
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S00_AXIS_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S01_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXIS_1_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXIS_1_TLAST : STD_LOGIC;
  signal S01_AXIS_1_TREADY : STD_LOGIC;
  signal S01_AXIS_1_TVALID : STD_LOGIC;
  signal S02_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S02_AXIS_1_TLAST : STD_LOGIC;
  signal S02_AXIS_1_TREADY : STD_LOGIC;
  signal S02_AXIS_1_TVALID : STD_LOGIC;
  signal S_AXI_CTRL_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_CTRL_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_CTRL_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_interconnect_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_M00_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M00_AXIS_TVALID : STD_LOGIC;
  signal axis_interconnect_0_M01_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_M01_AXIS_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_0_M01_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M01_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M01_AXIS_TVALID : STD_LOGIC;
  signal axis_interconnect_0_M02_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_M02_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M02_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M02_AXIS_TVALID : STD_LOGIC;
  signal s_axi_aclk_2 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Conn1_TREADY <= M03_AXIS_tready;
  Conn2_TDATA(31 downto 0) <= S03_AXIS_tdata(31 downto 0);
  Conn2_TKEEP(3 downto 0) <= S03_AXIS_tkeep(3 downto 0);
  Conn2_TLAST <= S03_AXIS_tlast;
  Conn2_TVALID <= S03_AXIS_tvalid;
  Conn3_TREADY <= M04_AXIS_tready;
  Conn4_TDATA(31 downto 0) <= S04_AXIS_tdata(31 downto 0);
  Conn4_TKEEP(3 downto 0) <= S04_AXIS_tkeep(3 downto 0);
  Conn4_TLAST <= S04_AXIS_tlast;
  Conn4_TVALID <= S04_AXIS_tvalid;
  Conn5_TDATA(31 downto 0) <= S05_AXIS_tdata(31 downto 0);
  Conn5_TLAST(0) <= S05_AXIS_tlast(0);
  Conn5_TVALID <= S05_AXIS_tvalid;
  Conn6_TREADY <= M05_AXIS_tready;
  Conn7_TDATA(31 downto 0) <= S06_AXIS_tdata(31 downto 0);
  Conn7_TKEEP(3 downto 0) <= S06_AXIS_tkeep(3 downto 0);
  Conn7_TLAST <= S06_AXIS_tlast;
  Conn7_TVALID <= S06_AXIS_tvalid;
  Conn8_TREADY <= M06_AXIS_tready;
  M00_AXIS_tdata(31 downto 0) <= axis_interconnect_0_M00_AXIS_TDATA(31 downto 0);
  M00_AXIS_tlast <= axis_interconnect_0_M00_AXIS_TLAST;
  M00_AXIS_tvalid <= axis_interconnect_0_M00_AXIS_TVALID;
  M01_AXIS_tdata(31 downto 0) <= axis_interconnect_0_M01_AXIS_TDATA(31 downto 0);
  M01_AXIS_tkeep(3 downto 0) <= axis_interconnect_0_M01_AXIS_TKEEP(3 downto 0);
  M01_AXIS_tlast <= axis_interconnect_0_M01_AXIS_TLAST;
  M01_AXIS_tvalid <= axis_interconnect_0_M01_AXIS_TVALID;
  M02_AXIS_tdata(31 downto 0) <= axis_interconnect_0_M02_AXIS_TDATA(31 downto 0);
  M02_AXIS_tlast <= axis_interconnect_0_M02_AXIS_TLAST;
  M02_AXIS_tvalid <= axis_interconnect_0_M02_AXIS_TVALID;
  M03_AXIS_tdata(31 downto 0) <= Conn1_TDATA(31 downto 0);
  M03_AXIS_tkeep(3 downto 0) <= Conn1_TKEEP(3 downto 0);
  M03_AXIS_tlast <= Conn1_TLAST;
  M03_AXIS_tvalid <= Conn1_TVALID;
  M04_AXIS_tdata(31 downto 0) <= Conn3_TDATA(31 downto 0);
  M04_AXIS_tkeep(3 downto 0) <= Conn3_TKEEP(3 downto 0);
  M04_AXIS_tlast <= Conn3_TLAST;
  M04_AXIS_tvalid <= Conn3_TVALID;
  M05_AXIS_tdata(31 downto 0) <= Conn6_TDATA(31 downto 0);
  M05_AXIS_tlast(0) <= Conn6_TLAST(0);
  M05_AXIS_tvalid <= Conn6_TVALID;
  M06_AXIS_tdata(31 downto 0) <= Conn8_TDATA(31 downto 0);
  M06_AXIS_tkeep(3 downto 0) <= Conn8_TKEEP(3 downto 0);
  M06_AXIS_tlast <= Conn8_TLAST;
  M06_AXIS_tvalid <= Conn8_TVALID;
  S00_AXIS_1_TDATA(31 downto 0) <= S00_AXIS_tdata(31 downto 0);
  S00_AXIS_1_TLAST <= S00_AXIS_tlast;
  S00_AXIS_1_TVALID <= S00_AXIS_tvalid;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK1;
  S00_AXIS_ARESETN_1(0) <= S00_AXIS_ARESETN(0);
  S00_AXIS_tready <= S00_AXIS_1_TREADY;
  S01_AXIS_1_TDATA(31 downto 0) <= S01_AXIS_tdata(31 downto 0);
  S01_AXIS_1_TKEEP(3 downto 0) <= S01_AXIS_tkeep(3 downto 0);
  S01_AXIS_1_TLAST <= S01_AXIS_tlast;
  S01_AXIS_1_TVALID <= S01_AXIS_tvalid;
  S01_AXIS_tready <= S01_AXIS_1_TREADY;
  S02_AXIS_1_TDATA(31 downto 0) <= S02_AXIS_tdata(31 downto 0);
  S02_AXIS_1_TLAST <= S02_AXIS_tlast;
  S02_AXIS_1_TVALID <= S02_AXIS_tvalid;
  S02_AXIS_tready <= S02_AXIS_1_TREADY;
  S03_AXIS_tready <= Conn2_TREADY;
  S04_AXIS_tready <= Conn4_TREADY;
  S05_AXIS_tready <= Conn5_TREADY;
  S06_AXIS_tready <= Conn7_TREADY;
  S_AXI_CTRL_1_ARADDR(31 downto 0) <= S_AXI_CTRL_araddr(31 downto 0);
  S_AXI_CTRL_1_ARVALID(0) <= S_AXI_CTRL_arvalid(0);
  S_AXI_CTRL_1_AWADDR(31 downto 0) <= S_AXI_CTRL_awaddr(31 downto 0);
  S_AXI_CTRL_1_AWVALID(0) <= S_AXI_CTRL_awvalid(0);
  S_AXI_CTRL_1_BREADY(0) <= S_AXI_CTRL_bready(0);
  S_AXI_CTRL_1_RREADY(0) <= S_AXI_CTRL_rready(0);
  S_AXI_CTRL_1_WDATA(31 downto 0) <= S_AXI_CTRL_wdata(31 downto 0);
  S_AXI_CTRL_1_WVALID(0) <= S_AXI_CTRL_wvalid(0);
  S_AXI_CTRL_arready(0) <= S_AXI_CTRL_1_ARREADY(0);
  S_AXI_CTRL_awready(0) <= S_AXI_CTRL_1_AWREADY(0);
  S_AXI_CTRL_bresp(1 downto 0) <= S_AXI_CTRL_1_BRESP(1 downto 0);
  S_AXI_CTRL_bvalid(0) <= S_AXI_CTRL_1_BVALID(0);
  S_AXI_CTRL_rdata(31 downto 0) <= S_AXI_CTRL_1_RDATA(31 downto 0);
  S_AXI_CTRL_rresp(1 downto 0) <= S_AXI_CTRL_1_RRESP(1 downto 0);
  S_AXI_CTRL_rvalid(0) <= S_AXI_CTRL_1_RVALID(0);
  S_AXI_CTRL_wready(0) <= S_AXI_CTRL_1_WREADY(0);
  axis_interconnect_0_M00_AXIS_TREADY <= M00_AXIS_tready;
  axis_interconnect_0_M01_AXIS_TREADY <= M01_AXIS_tready;
  axis_interconnect_0_M02_AXIS_TREADY <= M02_AXIS_tready;
  s_axi_aclk_2 <= S00_AXIS_ACLK;
  s_axi_aresetn_1(0) <= S_AXI_CTRL_ARESETN(0);
axis_interconnect_0: entity work.top_axis_interconnect_0_0
     port map (
      ACLK => s_axi_aclk_2,
      ARESETN(0) => s_axi_aresetn_1(0),
      M00_AXIS_ACLK => S00_AXIS_ACLK_1,
      M00_AXIS_ARESETN => S00_AXIS_ARESETN_1(0),
      M00_AXIS_tdata(31 downto 0) => axis_interconnect_0_M00_AXIS_TDATA(31 downto 0),
      M00_AXIS_tlast => axis_interconnect_0_M00_AXIS_TLAST,
      M00_AXIS_tready => axis_interconnect_0_M00_AXIS_TREADY,
      M00_AXIS_tvalid => axis_interconnect_0_M00_AXIS_TVALID,
      M01_AXIS_ACLK => s_axi_aclk_2,
      M01_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      M01_AXIS_tdata(31 downto 0) => axis_interconnect_0_M01_AXIS_TDATA(31 downto 0),
      M01_AXIS_tkeep(3 downto 0) => axis_interconnect_0_M01_AXIS_TKEEP(3 downto 0),
      M01_AXIS_tlast => axis_interconnect_0_M01_AXIS_TLAST,
      M01_AXIS_tready => axis_interconnect_0_M01_AXIS_TREADY,
      M01_AXIS_tvalid => axis_interconnect_0_M01_AXIS_TVALID,
      M02_AXIS_ACLK => s_axi_aclk_2,
      M02_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      M02_AXIS_tdata(31 downto 0) => axis_interconnect_0_M02_AXIS_TDATA(31 downto 0),
      M02_AXIS_tlast => axis_interconnect_0_M02_AXIS_TLAST,
      M02_AXIS_tready => axis_interconnect_0_M02_AXIS_TREADY,
      M02_AXIS_tvalid => axis_interconnect_0_M02_AXIS_TVALID,
      M03_AXIS_ACLK => s_axi_aclk_2,
      M03_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      M03_AXIS_tdata(31 downto 0) => Conn1_TDATA(31 downto 0),
      M03_AXIS_tkeep(3 downto 0) => Conn1_TKEEP(3 downto 0),
      M03_AXIS_tlast => Conn1_TLAST,
      M03_AXIS_tready => Conn1_TREADY,
      M03_AXIS_tvalid => Conn1_TVALID,
      M04_AXIS_ACLK => s_axi_aclk_2,
      M04_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      M04_AXIS_tdata(31 downto 0) => Conn3_TDATA(31 downto 0),
      M04_AXIS_tkeep(3 downto 0) => Conn3_TKEEP(3 downto 0),
      M04_AXIS_tlast => Conn3_TLAST,
      M04_AXIS_tready => Conn3_TREADY,
      M04_AXIS_tvalid => Conn3_TVALID,
      M05_AXIS_ACLK => s_axi_aclk_2,
      M05_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      M05_AXIS_tdata(31 downto 0) => Conn6_TDATA(31 downto 0),
      M05_AXIS_tlast(0) => Conn6_TLAST(0),
      M05_AXIS_tready => Conn6_TREADY,
      M05_AXIS_tvalid => Conn6_TVALID,
      M06_AXIS_ACLK => s_axi_aclk_2,
      M06_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      M06_AXIS_tdata(31 downto 0) => Conn8_TDATA(31 downto 0),
      M06_AXIS_tkeep(3 downto 0) => Conn8_TKEEP(3 downto 0),
      M06_AXIS_tlast => Conn8_TLAST,
      M06_AXIS_tready => Conn8_TREADY,
      M06_AXIS_tvalid => Conn8_TVALID,
      S00_AXIS_ACLK => S00_AXIS_ACLK_1,
      S00_AXIS_ARESETN => S00_AXIS_ARESETN_1(0),
      S00_AXIS_tdata(31 downto 0) => S00_AXIS_1_TDATA(31 downto 0),
      S00_AXIS_tlast => S00_AXIS_1_TLAST,
      S00_AXIS_tready => S00_AXIS_1_TREADY,
      S00_AXIS_tvalid => S00_AXIS_1_TVALID,
      S01_AXIS_ACLK => s_axi_aclk_2,
      S01_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      S01_AXIS_tdata(31 downto 0) => S01_AXIS_1_TDATA(31 downto 0),
      S01_AXIS_tkeep(3 downto 0) => S01_AXIS_1_TKEEP(3 downto 0),
      S01_AXIS_tlast => S01_AXIS_1_TLAST,
      S01_AXIS_tready => S01_AXIS_1_TREADY,
      S01_AXIS_tvalid => S01_AXIS_1_TVALID,
      S02_AXIS_ACLK => s_axi_aclk_2,
      S02_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      S02_AXIS_tdata(31 downto 0) => S02_AXIS_1_TDATA(31 downto 0),
      S02_AXIS_tlast => S02_AXIS_1_TLAST,
      S02_AXIS_tready => S02_AXIS_1_TREADY,
      S02_AXIS_tvalid => S02_AXIS_1_TVALID,
      S03_AXIS_ACLK => s_axi_aclk_2,
      S03_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      S03_AXIS_tdata(31 downto 0) => Conn2_TDATA(31 downto 0),
      S03_AXIS_tkeep(3 downto 0) => Conn2_TKEEP(3 downto 0),
      S03_AXIS_tlast => Conn2_TLAST,
      S03_AXIS_tready => Conn2_TREADY,
      S03_AXIS_tvalid => Conn2_TVALID,
      S04_AXIS_ACLK => s_axi_aclk_2,
      S04_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      S04_AXIS_tdata(31 downto 0) => Conn4_TDATA(31 downto 0),
      S04_AXIS_tkeep(3 downto 0) => Conn4_TKEEP(3 downto 0),
      S04_AXIS_tlast => Conn4_TLAST,
      S04_AXIS_tready => Conn4_TREADY,
      S04_AXIS_tvalid => Conn4_TVALID,
      S05_AXIS_ACLK => s_axi_aclk_2,
      S05_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      S05_AXIS_tdata(31 downto 0) => Conn5_TDATA(31 downto 0),
      S05_AXIS_tlast(0) => Conn5_TLAST(0),
      S05_AXIS_tready => Conn5_TREADY,
      S05_AXIS_tvalid => Conn5_TVALID,
      S06_AXIS_ACLK => s_axi_aclk_2,
      S06_AXIS_ARESETN(0) => s_axi_aresetn_1(0),
      S06_AXIS_tdata(31 downto 0) => Conn7_TDATA(31 downto 0),
      S06_AXIS_tkeep(3 downto 0) => Conn7_TKEEP(3 downto 0),
      S06_AXIS_tlast => Conn7_TLAST,
      S06_AXIS_tready => Conn7_TREADY,
      S06_AXIS_tvalid => Conn7_TVALID,
      S_AXI_CTRL_ACLK => s_axi_aclk_2,
      S_AXI_CTRL_ARESETN(0) => s_axi_aresetn_1(0),
      S_AXI_CTRL_araddr(31 downto 0) => S_AXI_CTRL_1_ARADDR(31 downto 0),
      S_AXI_CTRL_arready(0) => S_AXI_CTRL_1_ARREADY(0),
      S_AXI_CTRL_arvalid(0) => S_AXI_CTRL_1_ARVALID(0),
      S_AXI_CTRL_awaddr(31 downto 0) => S_AXI_CTRL_1_AWADDR(31 downto 0),
      S_AXI_CTRL_awready(0) => S_AXI_CTRL_1_AWREADY(0),
      S_AXI_CTRL_awvalid(0) => S_AXI_CTRL_1_AWVALID(0),
      S_AXI_CTRL_bready(0) => S_AXI_CTRL_1_BREADY(0),
      S_AXI_CTRL_bresp(1 downto 0) => S_AXI_CTRL_1_BRESP(1 downto 0),
      S_AXI_CTRL_bvalid(0) => S_AXI_CTRL_1_BVALID(0),
      S_AXI_CTRL_rdata(31 downto 0) => S_AXI_CTRL_1_RDATA(31 downto 0),
      S_AXI_CTRL_rready(0) => S_AXI_CTRL_1_RREADY(0),
      S_AXI_CTRL_rresp(1 downto 0) => S_AXI_CTRL_1_RRESP(1 downto 0),
      S_AXI_CTRL_rvalid(0) => S_AXI_CTRL_1_RVALID(0),
      S_AXI_CTRL_wdata(31 downto 0) => S_AXI_CTRL_1_WDATA(31 downto 0),
      S_AXI_CTRL_wready(0) => S_AXI_CTRL_1_WREADY(0),
      S_AXI_CTRL_wvalid(0) => S_AXI_CTRL_1_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mm_interconnect_0_imp_1ELWD51 is
  port (
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC;
    M01_AXI_arburst : out STD_LOGIC;
    M01_AXI_arcache : out STD_LOGIC;
    M01_AXI_arlen : out STD_LOGIC;
    M01_AXI_arlock : out STD_LOGIC;
    M01_AXI_arprot : out STD_LOGIC;
    M01_AXI_arqos : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arregion : out STD_LOGIC;
    M01_AXI_arsize : out STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC;
    M01_AXI_awburst : out STD_LOGIC;
    M01_AXI_awcache : out STD_LOGIC;
    M01_AXI_awlen : out STD_LOGIC;
    M01_AXI_awlock : out STD_LOGIC;
    M01_AXI_awprot : out STD_LOGIC;
    M01_AXI_awqos : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awregion : out STD_LOGIC;
    M01_AXI_awsize : out STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC;
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC;
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC;
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC;
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end mm_interconnect_0_imp_1ELWD51;

architecture STRUCTURE of mm_interconnect_0_imp_1ELWD51 is
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_ARLOCK : STD_LOGIC;
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  signal S00_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_AWLOCK : STD_LOGIC;
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal S00_AXI_1_RLAST : STD_LOGIC;
  signal S00_AXI_1_RREADY : STD_LOGIC;
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARADDR : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARBURST : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARCACHE : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARLEN : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARLOCK : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARPROT : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARQOS : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARREGION : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARSIZE : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWADDR : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWBURST : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWCACHE : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWLEN : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWLOCK : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWPROT : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWQOS : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWREGION : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWSIZE : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BRESP : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RDATA : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RRESP : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WDATA : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WSTRB : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M03_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M03_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M03_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M03_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M03_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M03_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M04_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M04_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M04_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M04_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M04_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M04_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_pcie_0_axi_aclk_out1 : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= axi_interconnect_0_M00_AXI_ARADDR(31 downto 0);
  M00_AXI_arvalid <= axi_interconnect_0_M00_AXI_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= axi_interconnect_0_M00_AXI_AWADDR(31 downto 0);
  M00_AXI_awvalid <= axi_interconnect_0_M00_AXI_AWVALID;
  M00_AXI_bready <= axi_interconnect_0_M00_AXI_BREADY;
  M00_AXI_rready <= axi_interconnect_0_M00_AXI_RREADY;
  M00_AXI_wdata(31 downto 0) <= axi_interconnect_0_M00_AXI_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= axi_interconnect_0_M00_AXI_WSTRB(3 downto 0);
  M00_AXI_wvalid <= axi_interconnect_0_M00_AXI_WVALID;
  M01_AXI_araddr <= axi_interconnect_0_M01_AXI_ARADDR;
  M01_AXI_arburst <= axi_interconnect_0_M01_AXI_ARBURST;
  M01_AXI_arcache <= axi_interconnect_0_M01_AXI_ARCACHE;
  M01_AXI_arlen <= axi_interconnect_0_M01_AXI_ARLEN;
  M01_AXI_arlock <= axi_interconnect_0_M01_AXI_ARLOCK;
  M01_AXI_arprot <= axi_interconnect_0_M01_AXI_ARPROT;
  M01_AXI_arqos <= axi_interconnect_0_M01_AXI_ARQOS;
  M01_AXI_arregion <= axi_interconnect_0_M01_AXI_ARREGION;
  M01_AXI_arsize <= axi_interconnect_0_M01_AXI_ARSIZE;
  M01_AXI_arvalid <= axi_interconnect_0_M01_AXI_ARVALID;
  M01_AXI_awaddr <= axi_interconnect_0_M01_AXI_AWADDR;
  M01_AXI_awburst <= axi_interconnect_0_M01_AXI_AWBURST;
  M01_AXI_awcache <= axi_interconnect_0_M01_AXI_AWCACHE;
  M01_AXI_awlen <= axi_interconnect_0_M01_AXI_AWLEN;
  M01_AXI_awlock <= axi_interconnect_0_M01_AXI_AWLOCK;
  M01_AXI_awprot <= axi_interconnect_0_M01_AXI_AWPROT;
  M01_AXI_awqos <= axi_interconnect_0_M01_AXI_AWQOS;
  M01_AXI_awregion <= axi_interconnect_0_M01_AXI_AWREGION;
  M01_AXI_awsize <= axi_interconnect_0_M01_AXI_AWSIZE;
  M01_AXI_awvalid <= axi_interconnect_0_M01_AXI_AWVALID;
  M01_AXI_bready <= axi_interconnect_0_M01_AXI_BREADY;
  M01_AXI_rready <= axi_interconnect_0_M01_AXI_RREADY;
  M01_AXI_wdata <= axi_interconnect_0_M01_AXI_WDATA;
  M01_AXI_wlast <= axi_interconnect_0_M01_AXI_WLAST;
  M01_AXI_wstrb <= axi_interconnect_0_M01_AXI_WSTRB;
  M01_AXI_wvalid <= axi_interconnect_0_M01_AXI_WVALID;
  M02_AXI_araddr(31 downto 0) <= axi_interconnect_0_M02_AXI_ARADDR(31 downto 0);
  M02_AXI_arburst(1 downto 0) <= axi_interconnect_0_M02_AXI_ARBURST(1 downto 0);
  M02_AXI_arcache(3 downto 0) <= axi_interconnect_0_M02_AXI_ARCACHE(3 downto 0);
  M02_AXI_arlen(7 downto 0) <= axi_interconnect_0_M02_AXI_ARLEN(7 downto 0);
  M02_AXI_arlock(0) <= axi_interconnect_0_M02_AXI_ARLOCK(0);
  M02_AXI_arprot(2 downto 0) <= axi_interconnect_0_M02_AXI_ARPROT(2 downto 0);
  M02_AXI_arqos(3 downto 0) <= axi_interconnect_0_M02_AXI_ARQOS(3 downto 0);
  M02_AXI_arregion(3 downto 0) <= axi_interconnect_0_M02_AXI_ARREGION(3 downto 0);
  M02_AXI_arsize(2 downto 0) <= axi_interconnect_0_M02_AXI_ARSIZE(2 downto 0);
  M02_AXI_arvalid(0) <= axi_interconnect_0_M02_AXI_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= axi_interconnect_0_M02_AXI_AWADDR(31 downto 0);
  M02_AXI_awburst(1 downto 0) <= axi_interconnect_0_M02_AXI_AWBURST(1 downto 0);
  M02_AXI_awcache(3 downto 0) <= axi_interconnect_0_M02_AXI_AWCACHE(3 downto 0);
  M02_AXI_awlen(7 downto 0) <= axi_interconnect_0_M02_AXI_AWLEN(7 downto 0);
  M02_AXI_awlock(0) <= axi_interconnect_0_M02_AXI_AWLOCK(0);
  M02_AXI_awprot(2 downto 0) <= axi_interconnect_0_M02_AXI_AWPROT(2 downto 0);
  M02_AXI_awqos(3 downto 0) <= axi_interconnect_0_M02_AXI_AWQOS(3 downto 0);
  M02_AXI_awregion(3 downto 0) <= axi_interconnect_0_M02_AXI_AWREGION(3 downto 0);
  M02_AXI_awsize(2 downto 0) <= axi_interconnect_0_M02_AXI_AWSIZE(2 downto 0);
  M02_AXI_awvalid(0) <= axi_interconnect_0_M02_AXI_AWVALID(0);
  M02_AXI_bready(0) <= axi_interconnect_0_M02_AXI_BREADY(0);
  M02_AXI_rready(0) <= axi_interconnect_0_M02_AXI_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= axi_interconnect_0_M02_AXI_WDATA(31 downto 0);
  M02_AXI_wlast(0) <= axi_interconnect_0_M02_AXI_WLAST(0);
  M02_AXI_wstrb(3 downto 0) <= axi_interconnect_0_M02_AXI_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= axi_interconnect_0_M02_AXI_WVALID(0);
  M03_AXI_araddr(31 downto 0) <= axi_interconnect_0_M03_AXI_ARADDR(31 downto 0);
  M03_AXI_arprot(2 downto 0) <= axi_interconnect_0_M03_AXI_ARPROT(2 downto 0);
  M03_AXI_arvalid(0) <= axi_interconnect_0_M03_AXI_ARVALID(0);
  M03_AXI_awaddr(31 downto 0) <= axi_interconnect_0_M03_AXI_AWADDR(31 downto 0);
  M03_AXI_awprot(2 downto 0) <= axi_interconnect_0_M03_AXI_AWPROT(2 downto 0);
  M03_AXI_awvalid(0) <= axi_interconnect_0_M03_AXI_AWVALID(0);
  M03_AXI_bready(0) <= axi_interconnect_0_M03_AXI_BREADY(0);
  M03_AXI_rready(0) <= axi_interconnect_0_M03_AXI_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= axi_interconnect_0_M03_AXI_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= axi_interconnect_0_M03_AXI_WSTRB(3 downto 0);
  M03_AXI_wvalid(0) <= axi_interconnect_0_M03_AXI_WVALID(0);
  M04_AXI_araddr(31 downto 0) <= axi_interconnect_0_M04_AXI_ARADDR(31 downto 0);
  M04_AXI_arburst(1 downto 0) <= axi_interconnect_0_M04_AXI_ARBURST(1 downto 0);
  M04_AXI_arcache(3 downto 0) <= axi_interconnect_0_M04_AXI_ARCACHE(3 downto 0);
  M04_AXI_arlen(7 downto 0) <= axi_interconnect_0_M04_AXI_ARLEN(7 downto 0);
  M04_AXI_arlock(0) <= axi_interconnect_0_M04_AXI_ARLOCK(0);
  M04_AXI_arprot(2 downto 0) <= axi_interconnect_0_M04_AXI_ARPROT(2 downto 0);
  M04_AXI_arsize(2 downto 0) <= axi_interconnect_0_M04_AXI_ARSIZE(2 downto 0);
  M04_AXI_arvalid(0) <= axi_interconnect_0_M04_AXI_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= axi_interconnect_0_M04_AXI_AWADDR(31 downto 0);
  M04_AXI_awburst(1 downto 0) <= axi_interconnect_0_M04_AXI_AWBURST(1 downto 0);
  M04_AXI_awcache(3 downto 0) <= axi_interconnect_0_M04_AXI_AWCACHE(3 downto 0);
  M04_AXI_awlen(7 downto 0) <= axi_interconnect_0_M04_AXI_AWLEN(7 downto 0);
  M04_AXI_awlock(0) <= axi_interconnect_0_M04_AXI_AWLOCK(0);
  M04_AXI_awprot(2 downto 0) <= axi_interconnect_0_M04_AXI_AWPROT(2 downto 0);
  M04_AXI_awsize(2 downto 0) <= axi_interconnect_0_M04_AXI_AWSIZE(2 downto 0);
  M04_AXI_awvalid(0) <= axi_interconnect_0_M04_AXI_AWVALID(0);
  M04_AXI_bready(0) <= axi_interconnect_0_M04_AXI_BREADY(0);
  M04_AXI_rready(0) <= axi_interconnect_0_M04_AXI_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= axi_interconnect_0_M04_AXI_WDATA(31 downto 0);
  M04_AXI_wlast(0) <= axi_interconnect_0_M04_AXI_WLAST(0);
  M04_AXI_wstrb(3 downto 0) <= axi_interconnect_0_M04_AXI_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= axi_interconnect_0_M04_AXI_WVALID(0);
  S00_ARESETN_1(0) <= M01_ARESETN(0);
  S00_AXI_1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  S00_AXI_1_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  S00_AXI_1_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  S00_AXI_1_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  S00_AXI_1_ARLOCK <= S00_AXI_arlock;
  S00_AXI_1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  S00_AXI_1_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  S00_AXI_1_ARVALID <= S00_AXI_arvalid;
  S00_AXI_1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  S00_AXI_1_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  S00_AXI_1_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  S00_AXI_1_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  S00_AXI_1_AWLOCK <= S00_AXI_awlock;
  S00_AXI_1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  S00_AXI_1_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  S00_AXI_1_AWVALID <= S00_AXI_awvalid;
  S00_AXI_1_BREADY <= S00_AXI_bready;
  S00_AXI_1_RREADY <= S00_AXI_rready;
  S00_AXI_1_WDATA(127 downto 0) <= S00_AXI_wdata(127 downto 0);
  S00_AXI_1_WLAST <= S00_AXI_wlast;
  S00_AXI_1_WSTRB(15 downto 0) <= S00_AXI_wstrb(15 downto 0);
  S00_AXI_1_WVALID <= S00_AXI_wvalid;
  S00_AXI_arready <= S00_AXI_1_ARREADY;
  S00_AXI_awready <= S00_AXI_1_AWREADY;
  S00_AXI_bresp(1 downto 0) <= S00_AXI_1_BRESP(1 downto 0);
  S00_AXI_bvalid <= S00_AXI_1_BVALID;
  S00_AXI_rdata(127 downto 0) <= S00_AXI_1_RDATA(127 downto 0);
  S00_AXI_rlast <= S00_AXI_1_RLAST;
  S00_AXI_rresp(1 downto 0) <= S00_AXI_1_RRESP(1 downto 0);
  S00_AXI_rvalid <= S00_AXI_1_RVALID;
  S00_AXI_wready <= S00_AXI_1_WREADY;
  axi_interconnect_0_M00_AXI_ARREADY <= M00_AXI_arready;
  axi_interconnect_0_M00_AXI_AWREADY <= M00_AXI_awready;
  axi_interconnect_0_M00_AXI_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  axi_interconnect_0_M00_AXI_BVALID <= M00_AXI_bvalid;
  axi_interconnect_0_M00_AXI_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  axi_interconnect_0_M00_AXI_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  axi_interconnect_0_M00_AXI_RVALID <= M00_AXI_rvalid;
  axi_interconnect_0_M00_AXI_WREADY <= M00_AXI_wready;
  axi_interconnect_0_M01_AXI_ARREADY <= M01_AXI_arready;
  axi_interconnect_0_M01_AXI_AWREADY <= M01_AXI_awready;
  axi_interconnect_0_M01_AXI_BRESP <= M01_AXI_bresp;
  axi_interconnect_0_M01_AXI_BVALID <= M01_AXI_bvalid;
  axi_interconnect_0_M01_AXI_RDATA <= M01_AXI_rdata;
  axi_interconnect_0_M01_AXI_RLAST <= M01_AXI_rlast;
  axi_interconnect_0_M01_AXI_RRESP <= M01_AXI_rresp;
  axi_interconnect_0_M01_AXI_RVALID <= M01_AXI_rvalid;
  axi_interconnect_0_M01_AXI_WREADY <= M01_AXI_wready;
  axi_interconnect_0_M02_AXI_ARREADY(0) <= M02_AXI_arready(0);
  axi_interconnect_0_M02_AXI_AWREADY(0) <= M02_AXI_awready(0);
  axi_interconnect_0_M02_AXI_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  axi_interconnect_0_M02_AXI_BVALID(0) <= M02_AXI_bvalid(0);
  axi_interconnect_0_M02_AXI_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  axi_interconnect_0_M02_AXI_RLAST(0) <= M02_AXI_rlast(0);
  axi_interconnect_0_M02_AXI_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  axi_interconnect_0_M02_AXI_RVALID(0) <= M02_AXI_rvalid(0);
  axi_interconnect_0_M02_AXI_WREADY(0) <= M02_AXI_wready(0);
  axi_interconnect_0_M03_AXI_ARREADY(0) <= M03_AXI_arready(0);
  axi_interconnect_0_M03_AXI_AWREADY(0) <= M03_AXI_awready(0);
  axi_interconnect_0_M03_AXI_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  axi_interconnect_0_M03_AXI_BVALID(0) <= M03_AXI_bvalid(0);
  axi_interconnect_0_M03_AXI_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  axi_interconnect_0_M03_AXI_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  axi_interconnect_0_M03_AXI_RVALID(0) <= M03_AXI_rvalid(0);
  axi_interconnect_0_M03_AXI_WREADY(0) <= M03_AXI_wready(0);
  axi_interconnect_0_M04_AXI_ARREADY(0) <= M04_AXI_arready(0);
  axi_interconnect_0_M04_AXI_AWREADY(0) <= M04_AXI_awready(0);
  axi_interconnect_0_M04_AXI_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  axi_interconnect_0_M04_AXI_BVALID(0) <= M04_AXI_bvalid(0);
  axi_interconnect_0_M04_AXI_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  axi_interconnect_0_M04_AXI_RLAST(0) <= M04_AXI_rlast(0);
  axi_interconnect_0_M04_AXI_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  axi_interconnect_0_M04_AXI_RVALID(0) <= M04_AXI_rvalid(0);
  axi_interconnect_0_M04_AXI_WREADY(0) <= M04_AXI_wready(0);
  axi_pcie_0_axi_aclk_out1 <= S00_ACLK;
axi_interconnect_0: entity work.top_axi_interconnect_0_1
     port map (
      ACLK => axi_pcie_0_axi_aclk_out1,
      ARESETN(0) => S00_ARESETN_1(0),
      M00_ACLK => axi_pcie_0_axi_aclk_out1,
      M00_ARESETN(0) => S00_ARESETN_1(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => axi_pcie_0_axi_aclk_out1,
      M01_ARESETN(0) => S00_ARESETN_1(0),
      M01_AXI_araddr => axi_interconnect_0_M01_AXI_ARADDR,
      M01_AXI_arburst => axi_interconnect_0_M01_AXI_ARBURST,
      M01_AXI_arcache => axi_interconnect_0_M01_AXI_ARCACHE,
      M01_AXI_arlen => axi_interconnect_0_M01_AXI_ARLEN,
      M01_AXI_arlock => axi_interconnect_0_M01_AXI_ARLOCK,
      M01_AXI_arprot => axi_interconnect_0_M01_AXI_ARPROT,
      M01_AXI_arqos => axi_interconnect_0_M01_AXI_ARQOS,
      M01_AXI_arready => axi_interconnect_0_M01_AXI_ARREADY,
      M01_AXI_arregion => axi_interconnect_0_M01_AXI_ARREGION,
      M01_AXI_arsize => axi_interconnect_0_M01_AXI_ARSIZE,
      M01_AXI_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr => axi_interconnect_0_M01_AXI_AWADDR,
      M01_AXI_awburst => axi_interconnect_0_M01_AXI_AWBURST,
      M01_AXI_awcache => axi_interconnect_0_M01_AXI_AWCACHE,
      M01_AXI_awlen => axi_interconnect_0_M01_AXI_AWLEN,
      M01_AXI_awlock => axi_interconnect_0_M01_AXI_AWLOCK,
      M01_AXI_awprot => axi_interconnect_0_M01_AXI_AWPROT,
      M01_AXI_awqos => axi_interconnect_0_M01_AXI_AWQOS,
      M01_AXI_awready => axi_interconnect_0_M01_AXI_AWREADY,
      M01_AXI_awregion => axi_interconnect_0_M01_AXI_AWREGION,
      M01_AXI_awsize => axi_interconnect_0_M01_AXI_AWSIZE,
      M01_AXI_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => axi_interconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp => axi_interconnect_0_M01_AXI_BRESP,
      M01_AXI_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata => axi_interconnect_0_M01_AXI_RDATA,
      M01_AXI_rlast => axi_interconnect_0_M01_AXI_RLAST,
      M01_AXI_rready => axi_interconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp => axi_interconnect_0_M01_AXI_RRESP,
      M01_AXI_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata => axi_interconnect_0_M01_AXI_WDATA,
      M01_AXI_wlast => axi_interconnect_0_M01_AXI_WLAST,
      M01_AXI_wready => axi_interconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb => axi_interconnect_0_M01_AXI_WSTRB,
      M01_AXI_wvalid => axi_interconnect_0_M01_AXI_WVALID,
      M02_ACLK => axi_pcie_0_axi_aclk_out1,
      M02_ARESETN(0) => S00_ARESETN_1(0),
      M02_AXI_araddr(31 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arburst(1 downto 0) => axi_interconnect_0_M02_AXI_ARBURST(1 downto 0),
      M02_AXI_arcache(3 downto 0) => axi_interconnect_0_M02_AXI_ARCACHE(3 downto 0),
      M02_AXI_arlen(7 downto 0) => axi_interconnect_0_M02_AXI_ARLEN(7 downto 0),
      M02_AXI_arlock(0) => axi_interconnect_0_M02_AXI_ARLOCK(0),
      M02_AXI_arprot(2 downto 0) => axi_interconnect_0_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arqos(3 downto 0) => axi_interconnect_0_M02_AXI_ARQOS(3 downto 0),
      M02_AXI_arready(0) => axi_interconnect_0_M02_AXI_ARREADY(0),
      M02_AXI_arregion(3 downto 0) => axi_interconnect_0_M02_AXI_ARREGION(3 downto 0),
      M02_AXI_arsize(2 downto 0) => axi_interconnect_0_M02_AXI_ARSIZE(2 downto 0),
      M02_AXI_arvalid(0) => axi_interconnect_0_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awburst(1 downto 0) => axi_interconnect_0_M02_AXI_AWBURST(1 downto 0),
      M02_AXI_awcache(3 downto 0) => axi_interconnect_0_M02_AXI_AWCACHE(3 downto 0),
      M02_AXI_awlen(7 downto 0) => axi_interconnect_0_M02_AXI_AWLEN(7 downto 0),
      M02_AXI_awlock(0) => axi_interconnect_0_M02_AXI_AWLOCK(0),
      M02_AXI_awprot(2 downto 0) => axi_interconnect_0_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awqos(3 downto 0) => axi_interconnect_0_M02_AXI_AWQOS(3 downto 0),
      M02_AXI_awready(0) => axi_interconnect_0_M02_AXI_AWREADY(0),
      M02_AXI_awregion(3 downto 0) => axi_interconnect_0_M02_AXI_AWREGION(3 downto 0),
      M02_AXI_awsize(2 downto 0) => axi_interconnect_0_M02_AXI_AWSIZE(2 downto 0),
      M02_AXI_awvalid(0) => axi_interconnect_0_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => axi_interconnect_0_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => axi_interconnect_0_M02_AXI_BVALID(0),
      M02_AXI_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rlast(0) => axi_interconnect_0_M02_AXI_RLAST(0),
      M02_AXI_rready(0) => axi_interconnect_0_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => axi_interconnect_0_M02_AXI_RVALID(0),
      M02_AXI_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wlast(0) => axi_interconnect_0_M02_AXI_WLAST(0),
      M02_AXI_wready(0) => axi_interconnect_0_M02_AXI_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => axi_interconnect_0_M02_AXI_WVALID(0),
      M03_ACLK => axi_pcie_0_axi_aclk_out1,
      M03_ARESETN(0) => S00_ARESETN_1(0),
      M03_AXI_araddr(31 downto 0) => axi_interconnect_0_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => axi_interconnect_0_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready(0) => axi_interconnect_0_M03_AXI_ARREADY(0),
      M03_AXI_arvalid(0) => axi_interconnect_0_M03_AXI_ARVALID(0),
      M03_AXI_awaddr(31 downto 0) => axi_interconnect_0_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => axi_interconnect_0_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready(0) => axi_interconnect_0_M03_AXI_AWREADY(0),
      M03_AXI_awvalid(0) => axi_interconnect_0_M03_AXI_AWVALID(0),
      M03_AXI_bready(0) => axi_interconnect_0_M03_AXI_BREADY(0),
      M03_AXI_bresp(1 downto 0) => axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => axi_interconnect_0_M03_AXI_BVALID(0),
      M03_AXI_rdata(31 downto 0) => axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready(0) => axi_interconnect_0_M03_AXI_RREADY(0),
      M03_AXI_rresp(1 downto 0) => axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => axi_interconnect_0_M03_AXI_RVALID(0),
      M03_AXI_wdata(31 downto 0) => axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready(0) => axi_interconnect_0_M03_AXI_WREADY(0),
      M03_AXI_wstrb(3 downto 0) => axi_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid(0) => axi_interconnect_0_M03_AXI_WVALID(0),
      M04_ACLK => axi_pcie_0_axi_aclk_out1,
      M04_ARESETN(0) => S00_ARESETN_1(0),
      M04_AXI_araddr(31 downto 0) => axi_interconnect_0_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arburst(1 downto 0) => axi_interconnect_0_M04_AXI_ARBURST(1 downto 0),
      M04_AXI_arcache(3 downto 0) => axi_interconnect_0_M04_AXI_ARCACHE(3 downto 0),
      M04_AXI_arlen(7 downto 0) => axi_interconnect_0_M04_AXI_ARLEN(7 downto 0),
      M04_AXI_arlock(0) => axi_interconnect_0_M04_AXI_ARLOCK(0),
      M04_AXI_arprot(2 downto 0) => axi_interconnect_0_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready(0) => axi_interconnect_0_M04_AXI_ARREADY(0),
      M04_AXI_arsize(2 downto 0) => axi_interconnect_0_M04_AXI_ARSIZE(2 downto 0),
      M04_AXI_arvalid(0) => axi_interconnect_0_M04_AXI_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => axi_interconnect_0_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awburst(1 downto 0) => axi_interconnect_0_M04_AXI_AWBURST(1 downto 0),
      M04_AXI_awcache(3 downto 0) => axi_interconnect_0_M04_AXI_AWCACHE(3 downto 0),
      M04_AXI_awlen(7 downto 0) => axi_interconnect_0_M04_AXI_AWLEN(7 downto 0),
      M04_AXI_awlock(0) => axi_interconnect_0_M04_AXI_AWLOCK(0),
      M04_AXI_awprot(2 downto 0) => axi_interconnect_0_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready(0) => axi_interconnect_0_M04_AXI_AWREADY(0),
      M04_AXI_awsize(2 downto 0) => axi_interconnect_0_M04_AXI_AWSIZE(2 downto 0),
      M04_AXI_awvalid(0) => axi_interconnect_0_M04_AXI_AWVALID(0),
      M04_AXI_bready(0) => axi_interconnect_0_M04_AXI_BREADY(0),
      M04_AXI_bresp(1 downto 0) => axi_interconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => axi_interconnect_0_M04_AXI_BVALID(0),
      M04_AXI_rdata(31 downto 0) => axi_interconnect_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rlast(0) => axi_interconnect_0_M04_AXI_RLAST(0),
      M04_AXI_rready(0) => axi_interconnect_0_M04_AXI_RREADY(0),
      M04_AXI_rresp(1 downto 0) => axi_interconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => axi_interconnect_0_M04_AXI_RVALID(0),
      M04_AXI_wdata(31 downto 0) => axi_interconnect_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wlast(0) => axi_interconnect_0_M04_AXI_WLAST(0),
      M04_AXI_wready(0) => axi_interconnect_0_M04_AXI_WREADY(0),
      M04_AXI_wstrb(3 downto 0) => axi_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => axi_interconnect_0_M04_AXI_WVALID(0),
      S00_ACLK => axi_pcie_0_axi_aclk_out1,
      S00_ARESETN(0) => S00_ARESETN_1(0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_1_ARLEN(7 downto 0),
      S00_AXI_arlock => S00_AXI_1_ARLOCK,
      S00_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      S00_AXI_arready => S00_AXI_1_ARREADY,
      S00_AXI_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      S00_AXI_arvalid => S00_AXI_1_ARVALID,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_1_AWLEN(7 downto 0),
      S00_AXI_awlock => S00_AXI_1_AWLOCK,
      S00_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      S00_AXI_awready => S00_AXI_1_AWREADY,
      S00_AXI_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      S00_AXI_awvalid => S00_AXI_1_AWVALID,
      S00_AXI_bready => S00_AXI_1_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_1_BVALID,
      S00_AXI_rdata(127 downto 0) => S00_AXI_1_RDATA(127 downto 0),
      S00_AXI_rlast => S00_AXI_1_RLAST,
      S00_AXI_rready => S00_AXI_1_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_1_RVALID,
      S00_AXI_wdata(127 downto 0) => S00_AXI_1_WDATA(127 downto 0),
      S00_AXI_wlast => S00_AXI_1_WLAST,
      S00_AXI_wready => S00_AXI_1_WREADY,
      S00_AXI_wstrb(15 downto 0) => S00_AXI_1_WSTRB(15 downto 0),
      S00_AXI_wvalid => S00_AXI_1_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pcie_0_imp_8LIP7E is
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
    S_AXI_CTL_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CTL_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTL_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTL_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CTL_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTL_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTL_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTL_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTL_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTL_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_CTL_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CTL_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    msi_irq : in STD_LOGIC_VECTOR ( 7 downto 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    perstn : in STD_LOGIC
  );
end pcie_0_imp_8LIP7E;

architecture STRUCTURE of pcie_0_imp_8LIP7E is
  component top_axi_reset_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_axi_reset_0_0;
  component top_axi_pcie_0_0 is
  port (
    axi_aresetn : in STD_LOGIC;
    axi_aclk_out : out STD_LOGIC;
    axi_ctl_aclk_out : out STD_LOGIC;
    mmcm_lock : out STD_LOGIC;
    interrupt_out : out STD_LOGIC;
    INTX_MSI_Request : in STD_LOGIC;
    INTX_MSI_Grant : out STD_LOGIC;
    MSI_enable : out STD_LOGIC;
    MSI_Vector_Num : in STD_LOGIC_VECTOR ( 4 downto 0 );
    MSI_Vector_Width : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awlock : out STD_LOGIC;
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arlock : out STD_LOGIC;
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    pci_exp_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_exp_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_exp_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_exp_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    REFCLK : in STD_LOGIC;
    s_axi_ctl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_awvalid : in STD_LOGIC;
    s_axi_ctl_awready : out STD_LOGIC;
    s_axi_ctl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctl_wvalid : in STD_LOGIC;
    s_axi_ctl_wready : out STD_LOGIC;
    s_axi_ctl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctl_bvalid : out STD_LOGIC;
    s_axi_ctl_bready : in STD_LOGIC;
    s_axi_ctl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_arvalid : in STD_LOGIC;
    s_axi_ctl_arready : out STD_LOGIC;
    s_axi_ctl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctl_rvalid : out STD_LOGIC;
    s_axi_ctl_rready : in STD_LOGIC
  );
  end component top_axi_pcie_0_0;
  component top_rst_axi_pcie_0_125M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_rst_axi_pcie_0_125M_0;
  component top_util_ds_buf_0_1 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_util_ds_buf_0_1;
  component top_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_util_vector_logic_0_0;
  component top_axi_pcie_intc_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    INTX_MSI_Request : out STD_LOGIC;
    INTX_MSI_Grant : in STD_LOGIC;
    MSI_Vector_Num : out STD_LOGIC_VECTOR ( 4 downto 0 );
    MSI_Enable : in STD_LOGIC;
    MSI_Vector_Width : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component top_axi_pcie_intc_0_0;
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_1_ARREADY : STD_LOGIC;
  signal S_AXI_1_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_ARVALID : STD_LOGIC;
  signal S_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_1_AWREADY : STD_LOGIC;
  signal S_AXI_1_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_AWVALID : STD_LOGIC;
  signal S_AXI_1_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_BREADY : STD_LOGIC;
  signal S_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_BVALID : STD_LOGIC;
  signal S_AXI_1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal S_AXI_1_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_RLAST : STD_LOGIC;
  signal S_AXI_1_RREADY : STD_LOGIC;
  signal S_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_RVALID : STD_LOGIC;
  signal S_AXI_1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal S_AXI_1_WLAST : STD_LOGIC;
  signal S_AXI_1_WREADY : STD_LOGIC;
  signal S_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_AXI_1_WVALID : STD_LOGIC;
  signal S_AXI_CTL_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTL_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_CTL_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTL_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTL_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTL_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_CTL_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTL_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTL_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTL_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_CTL_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTL_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTL_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTL_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_CTL_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTL_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTL_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTL_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_CTL_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aux_reset_in_1 : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_pcie_0_INTX_MSI_Grant : STD_LOGIC;
  signal axi_pcie_0_MSI_Vector_Width : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pcie_0_MSI_enable : STD_LOGIC;
  signal axi_pcie_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_pcie_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pcie_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pcie_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_pcie_0_M_AXI_ARLOCK : STD_LOGIC;
  signal axi_pcie_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pcie_0_M_AXI_ARREADY : STD_LOGIC;
  signal axi_pcie_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pcie_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_pcie_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_pcie_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pcie_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pcie_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_pcie_0_M_AXI_AWLOCK : STD_LOGIC;
  signal axi_pcie_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pcie_0_M_AXI_AWREADY : STD_LOGIC;
  signal axi_pcie_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pcie_0_M_AXI_AWVALID : STD_LOGIC;
  signal axi_pcie_0_M_AXI_BREADY : STD_LOGIC;
  signal axi_pcie_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pcie_0_M_AXI_BVALID : STD_LOGIC;
  signal axi_pcie_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_pcie_0_M_AXI_RLAST : STD_LOGIC;
  signal axi_pcie_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_pcie_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pcie_0_M_AXI_RVALID : STD_LOGIC;
  signal axi_pcie_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_pcie_0_M_AXI_WLAST : STD_LOGIC;
  signal axi_pcie_0_M_AXI_WREADY : STD_LOGIC;
  signal axi_pcie_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_pcie_0_M_AXI_WVALID : STD_LOGIC;
  signal axi_pcie_0_axi_aclk_out1 : STD_LOGIC;
  signal axi_pcie_0_axi_ctl_aclk_out : STD_LOGIC;
  signal axi_pcie_0_mmcm_lock : STD_LOGIC;
  signal axi_pcie_0_pcie_7x_mgt_rxn : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pcie_0_pcie_7x_mgt_rxp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pcie_0_pcie_7x_mgt_txn : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pcie_0_pcie_7x_mgt_txp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pcie_intc_0_INTX_MSI_Request : STD_LOGIC;
  signal axi_pcie_intc_0_MSI_Vector_Num : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_reset_0_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal msi_irq_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pcie_ref_1_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pcie_ref_1_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_axi_pcie_0_125M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_0_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_pcie_0_interrupt_out_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_axi_pcie_0_125M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_axi_pcie_0_125M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_axi_pcie_0_125M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_util_ds_buf_0_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= axi_pcie_0_M_AXI_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= axi_pcie_0_M_AXI_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= axi_pcie_0_M_AXI_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= axi_pcie_0_M_AXI_ARLEN(7 downto 0);
  M_AXI_arlock <= axi_pcie_0_M_AXI_ARLOCK;
  M_AXI_arprot(2 downto 0) <= axi_pcie_0_M_AXI_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= axi_pcie_0_M_AXI_ARSIZE(2 downto 0);
  M_AXI_arvalid <= axi_pcie_0_M_AXI_ARVALID;
  M_AXI_awaddr(31 downto 0) <= axi_pcie_0_M_AXI_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= axi_pcie_0_M_AXI_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= axi_pcie_0_M_AXI_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= axi_pcie_0_M_AXI_AWLEN(7 downto 0);
  M_AXI_awlock <= axi_pcie_0_M_AXI_AWLOCK;
  M_AXI_awprot(2 downto 0) <= axi_pcie_0_M_AXI_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= axi_pcie_0_M_AXI_AWSIZE(2 downto 0);
  M_AXI_awvalid <= axi_pcie_0_M_AXI_AWVALID;
  M_AXI_bready <= axi_pcie_0_M_AXI_BREADY;
  M_AXI_rready <= axi_pcie_0_M_AXI_RREADY;
  M_AXI_wdata(127 downto 0) <= axi_pcie_0_M_AXI_WDATA(127 downto 0);
  M_AXI_wlast <= axi_pcie_0_M_AXI_WLAST;
  M_AXI_wstrb(15 downto 0) <= axi_pcie_0_M_AXI_WSTRB(15 downto 0);
  M_AXI_wvalid <= axi_pcie_0_M_AXI_WVALID;
  PCIE_MGT_txn(3 downto 0) <= axi_pcie_0_pcie_7x_mgt_txn(3 downto 0);
  PCIE_MGT_txp(3 downto 0) <= axi_pcie_0_pcie_7x_mgt_txp(3 downto 0);
  S_AXI_1_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  S_AXI_1_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  S_AXI_1_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  S_AXI_1_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  S_AXI_1_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  S_AXI_1_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  S_AXI_1_ARVALID <= S_AXI_arvalid;
  S_AXI_1_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  S_AXI_1_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  S_AXI_1_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  S_AXI_1_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  S_AXI_1_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  S_AXI_1_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  S_AXI_1_AWVALID <= S_AXI_awvalid;
  S_AXI_1_BREADY <= S_AXI_bready;
  S_AXI_1_RREADY <= S_AXI_rready;
  S_AXI_1_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  S_AXI_1_WLAST <= S_AXI_wlast;
  S_AXI_1_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  S_AXI_1_WVALID <= S_AXI_wvalid;
  S_AXI_CTL_1_ARADDR(31 downto 0) <= S_AXI_CTL_araddr(31 downto 0);
  S_AXI_CTL_1_ARPROT(2 downto 0) <= S_AXI_CTL_arprot(2 downto 0);
  S_AXI_CTL_1_ARVALID(0) <= S_AXI_CTL_arvalid(0);
  S_AXI_CTL_1_AWADDR(31 downto 0) <= S_AXI_CTL_awaddr(31 downto 0);
  S_AXI_CTL_1_AWPROT(2 downto 0) <= S_AXI_CTL_awprot(2 downto 0);
  S_AXI_CTL_1_AWVALID(0) <= S_AXI_CTL_awvalid(0);
  S_AXI_CTL_1_BREADY(0) <= S_AXI_CTL_bready(0);
  S_AXI_CTL_1_RREADY(0) <= S_AXI_CTL_rready(0);
  S_AXI_CTL_1_WDATA(31 downto 0) <= S_AXI_CTL_wdata(31 downto 0);
  S_AXI_CTL_1_WSTRB(3 downto 0) <= S_AXI_CTL_wstrb(3 downto 0);
  S_AXI_CTL_1_WVALID(0) <= S_AXI_CTL_wvalid(0);
  S_AXI_CTL_arready(0) <= S_AXI_CTL_1_ARREADY(0);
  S_AXI_CTL_awready(0) <= S_AXI_CTL_1_AWREADY(0);
  S_AXI_CTL_bresp(1 downto 0) <= S_AXI_CTL_1_BRESP(1 downto 0);
  S_AXI_CTL_bvalid(0) <= S_AXI_CTL_1_BVALID(0);
  S_AXI_CTL_rdata(31 downto 0) <= S_AXI_CTL_1_RDATA(31 downto 0);
  S_AXI_CTL_rresp(1 downto 0) <= S_AXI_CTL_1_RRESP(1 downto 0);
  S_AXI_CTL_rvalid(0) <= S_AXI_CTL_1_RVALID(0);
  S_AXI_CTL_wready(0) <= S_AXI_CTL_1_WREADY(0);
  S_AXI_arready <= S_AXI_1_ARREADY;
  S_AXI_awready <= S_AXI_1_AWREADY;
  S_AXI_bid(2 downto 0) <= S_AXI_1_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= S_AXI_1_BRESP(1 downto 0);
  S_AXI_bvalid <= S_AXI_1_BVALID;
  S_AXI_rdata(127 downto 0) <= S_AXI_1_RDATA(127 downto 0);
  S_AXI_rid(2 downto 0) <= S_AXI_1_RID(2 downto 0);
  S_AXI_rlast <= S_AXI_1_RLAST;
  S_AXI_rresp(1 downto 0) <= S_AXI_1_RRESP(1 downto 0);
  S_AXI_rvalid <= S_AXI_1_RVALID;
  S_AXI_wready <= S_AXI_1_WREADY;
  aux_reset_in_1 <= perstn;
  axi_aclk_out <= axi_pcie_0_axi_aclk_out1;
  axi_pcie_0_M_AXI_ARREADY <= M_AXI_arready;
  axi_pcie_0_M_AXI_AWREADY <= M_AXI_awready;
  axi_pcie_0_M_AXI_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  axi_pcie_0_M_AXI_BVALID <= M_AXI_bvalid;
  axi_pcie_0_M_AXI_RDATA(127 downto 0) <= M_AXI_rdata(127 downto 0);
  axi_pcie_0_M_AXI_RLAST <= M_AXI_rlast;
  axi_pcie_0_M_AXI_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  axi_pcie_0_M_AXI_RVALID <= M_AXI_rvalid;
  axi_pcie_0_M_AXI_WREADY <= M_AXI_wready;
  axi_pcie_0_pcie_7x_mgt_rxn(3 downto 0) <= PCIE_MGT_rxn(3 downto 0);
  axi_pcie_0_pcie_7x_mgt_rxp(3 downto 0) <= PCIE_MGT_rxp(3 downto 0);
  interconnect_aresetn(0) <= S00_ARESETN_1(0);
  msi_irq_1(7 downto 0) <= msi_irq(7 downto 0);
  pcie_ref_1_CLK_N(0) <= PCIE_REFCLK_clk_n(0);
  pcie_ref_1_CLK_P(0) <= PCIE_REFCLK_clk_p(0);
  peripheral_aresetn(0) <= rst_axi_pcie_0_125M_peripheral_aresetn(0);
axi_interconnect_0: entity work.top_axi_interconnect_0_0
     port map (
      ACLK => axi_pcie_0_axi_aclk_out1,
      ARESETN(0) => rst_axi_pcie_0_125M_peripheral_aresetn(0),
      M00_ACLK => axi_pcie_0_axi_ctl_aclk_out,
      M00_ARESETN => '0',
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => axi_pcie_0_axi_aclk_out1,
      M01_ARESETN(0) => rst_axi_pcie_0_125M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => axi_interconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => axi_interconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => axi_interconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_interconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_interconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_interconnect_0_M01_AXI_WVALID,
      M02_ACLK => axi_pcie_0_axi_aclk_out1,
      M02_ARESETN(0) => rst_axi_pcie_0_125M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready(0) => axi_interconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid(0) => axi_interconnect_0_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready(0) => axi_interconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid(0) => axi_interconnect_0_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => axi_interconnect_0_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => axi_interconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => axi_interconnect_0_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => axi_interconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => axi_interconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => axi_interconnect_0_M02_AXI_WVALID(0),
      S00_ACLK => axi_pcie_0_axi_aclk_out1,
      S00_ARESETN(0) => rst_axi_pcie_0_125M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => S_AXI_CTL_1_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => S_AXI_CTL_1_ARPROT(2 downto 0),
      S00_AXI_arready(0) => S_AXI_CTL_1_ARREADY(0),
      S00_AXI_arvalid(0) => S_AXI_CTL_1_ARVALID(0),
      S00_AXI_awaddr(31 downto 0) => S_AXI_CTL_1_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => S_AXI_CTL_1_AWPROT(2 downto 0),
      S00_AXI_awready(0) => S_AXI_CTL_1_AWREADY(0),
      S00_AXI_awvalid(0) => S_AXI_CTL_1_AWVALID(0),
      S00_AXI_bready(0) => S_AXI_CTL_1_BREADY(0),
      S00_AXI_bresp(1 downto 0) => S_AXI_CTL_1_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => S_AXI_CTL_1_BVALID(0),
      S00_AXI_rdata(31 downto 0) => S_AXI_CTL_1_RDATA(31 downto 0),
      S00_AXI_rready(0) => S_AXI_CTL_1_RREADY(0),
      S00_AXI_rresp(1 downto 0) => S_AXI_CTL_1_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => S_AXI_CTL_1_RVALID(0),
      S00_AXI_wdata(31 downto 0) => S_AXI_CTL_1_WDATA(31 downto 0),
      S00_AXI_wready(0) => S_AXI_CTL_1_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => S_AXI_CTL_1_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => S_AXI_CTL_1_WVALID(0)
    );
axi_pcie_0: component top_axi_pcie_0_0
     port map (
      INTX_MSI_Grant => axi_pcie_0_INTX_MSI_Grant,
      INTX_MSI_Request => axi_pcie_intc_0_INTX_MSI_Request,
      MSI_Vector_Num(4 downto 0) => axi_pcie_intc_0_MSI_Vector_Num(4 downto 0),
      MSI_Vector_Width(2 downto 0) => axi_pcie_0_MSI_Vector_Width(2 downto 0),
      MSI_enable => axi_pcie_0_MSI_enable,
      REFCLK => util_ds_buf_0_IBUF_OUT(0),
      axi_aclk_out => axi_pcie_0_axi_aclk_out1,
      axi_aresetn => S00_ARESETN_1(0),
      axi_ctl_aclk_out => axi_pcie_0_axi_ctl_aclk_out,
      interrupt_out => NLW_axi_pcie_0_interrupt_out_UNCONNECTED,
      m_axi_araddr(31 downto 0) => axi_pcie_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_pcie_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_pcie_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_pcie_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock => axi_pcie_0_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => axi_pcie_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_pcie_0_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => axi_pcie_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_pcie_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_pcie_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_pcie_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_pcie_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_pcie_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock => axi_pcie_0_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => axi_pcie_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_pcie_0_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => axi_pcie_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_pcie_0_M_AXI_AWVALID,
      m_axi_bready => axi_pcie_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_pcie_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_pcie_0_M_AXI_BVALID,
      m_axi_rdata(127 downto 0) => axi_pcie_0_M_AXI_RDATA(127 downto 0),
      m_axi_rlast => axi_pcie_0_M_AXI_RLAST,
      m_axi_rready => axi_pcie_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_pcie_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_pcie_0_M_AXI_RVALID,
      m_axi_wdata(127 downto 0) => axi_pcie_0_M_AXI_WDATA(127 downto 0),
      m_axi_wlast => axi_pcie_0_M_AXI_WLAST,
      m_axi_wready => axi_pcie_0_M_AXI_WREADY,
      m_axi_wstrb(15 downto 0) => axi_pcie_0_M_AXI_WSTRB(15 downto 0),
      m_axi_wvalid => axi_pcie_0_M_AXI_WVALID,
      mmcm_lock => axi_pcie_0_mmcm_lock,
      pci_exp_rxn(3 downto 0) => axi_pcie_0_pcie_7x_mgt_rxn(3 downto 0),
      pci_exp_rxp(3 downto 0) => axi_pcie_0_pcie_7x_mgt_rxp(3 downto 0),
      pci_exp_txn(3 downto 0) => axi_pcie_0_pcie_7x_mgt_txn(3 downto 0),
      pci_exp_txp(3 downto 0) => axi_pcie_0_pcie_7x_mgt_txp(3 downto 0),
      s_axi_araddr(31 downto 0) => S_AXI_1_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => S_AXI_1_ARBURST(1 downto 0),
      s_axi_arid(2 downto 0) => S_AXI_1_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => S_AXI_1_ARLEN(7 downto 0),
      s_axi_arready => S_AXI_1_ARREADY,
      s_axi_arregion(3 downto 0) => S_AXI_1_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => S_AXI_1_ARSIZE(2 downto 0),
      s_axi_arvalid => S_AXI_1_ARVALID,
      s_axi_awaddr(31 downto 0) => S_AXI_1_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => S_AXI_1_AWBURST(1 downto 0),
      s_axi_awid(2 downto 0) => S_AXI_1_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => S_AXI_1_AWLEN(7 downto 0),
      s_axi_awready => S_AXI_1_AWREADY,
      s_axi_awregion(3 downto 0) => S_AXI_1_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => S_AXI_1_AWSIZE(2 downto 0),
      s_axi_awvalid => S_AXI_1_AWVALID,
      s_axi_bid(2 downto 0) => S_AXI_1_BID(2 downto 0),
      s_axi_bready => S_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S_AXI_1_BVALID,
      s_axi_ctl_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      s_axi_ctl_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_ctl_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s_axi_ctl_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      s_axi_ctl_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_ctl_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s_axi_ctl_bready => axi_interconnect_0_M00_AXI_BREADY,
      s_axi_ctl_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_ctl_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_ctl_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_ctl_rready => axi_interconnect_0_M00_AXI_RREADY,
      s_axi_ctl_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_ctl_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_ctl_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_ctl_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_ctl_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_ctl_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      s_axi_rdata(127 downto 0) => S_AXI_1_RDATA(127 downto 0),
      s_axi_rid(2 downto 0) => S_AXI_1_RID(2 downto 0),
      s_axi_rlast => S_AXI_1_RLAST,
      s_axi_rready => S_AXI_1_RREADY,
      s_axi_rresp(1 downto 0) => S_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S_AXI_1_RVALID,
      s_axi_wdata(127 downto 0) => S_AXI_1_WDATA(127 downto 0),
      s_axi_wlast => S_AXI_1_WLAST,
      s_axi_wready => S_AXI_1_WREADY,
      s_axi_wstrb(15 downto 0) => S_AXI_1_WSTRB(15 downto 0),
      s_axi_wvalid => S_AXI_1_WVALID
    );
axi_pcie_intc_0: component top_axi_pcie_intc_0_0
     port map (
      INTX_MSI_Grant => axi_pcie_0_INTX_MSI_Grant,
      INTX_MSI_Request => axi_pcie_intc_0_INTX_MSI_Request,
      MSI_Enable => axi_pcie_0_MSI_enable,
      MSI_Vector_Num(4 downto 0) => axi_pcie_intc_0_MSI_Vector_Num(4 downto 0),
      MSI_Vector_Width(2 downto 0) => axi_pcie_0_MSI_Vector_Width(2 downto 0),
      intr(7 downto 0) => msi_irq_1(7 downto 0),
      s_axi_aclk => axi_pcie_0_axi_aclk_out1,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_axi_pcie_0_125M_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M01_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M01_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M01_AXI_WVALID
    );
axi_reset_0: component top_axi_reset_0_0
     port map (
      gpio_io_o(0) => axi_reset_0_gpio_io_o(0),
      s_axi_aclk => axi_pcie_0_axi_aclk_out1,
      s_axi_araddr(8 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_axi_pcie_0_125M_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_0_M02_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M02_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_interconnect_0_M02_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M02_AXI_AWVALID(0),
      s_axi_bready => axi_interconnect_0_M02_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M02_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M02_AXI_WVALID(0)
    );
rst_axi_pcie_0_125M: component top_rst_axi_pcie_0_125M_0
     port map (
      aux_reset_in => aux_reset_in_1,
      bus_struct_reset(0) => NLW_rst_axi_pcie_0_125M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => axi_pcie_0_mmcm_lock,
      ext_reset_in => util_vector_logic_0_Res(0),
      interconnect_aresetn(0) => S00_ARESETN_1(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_axi_pcie_0_125M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_axi_pcie_0_125M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_axi_pcie_0_125M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => axi_pcie_0_axi_aclk_out1
    );
util_ds_buf_0: component top_util_ds_buf_0_1
     port map (
      IBUF_DS_N(0) => pcie_ref_1_CLK_N(0),
      IBUF_DS_ODIV2(0) => NLW_util_ds_buf_0_IBUF_DS_ODIV2_UNCONNECTED(0),
      IBUF_DS_P(0) => pcie_ref_1_CLK_P(0),
      IBUF_OUT(0) => util_ds_buf_0_IBUF_OUT(0)
    );
util_vector_logic_0: component top_util_vector_logic_0_0
     port map (
      Op1(0) => axi_reset_0_gpio_io_o(0),
      Res(0) => util_vector_logic_0_Res(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hier_0_imp_I4NTNW is
  port (
    M_AXI_DMA_PCIE_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DMA_PCIE_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DMA_PCIE_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DMA_PCIE_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DMA_PCIE_arready : in STD_LOGIC;
    M_AXI_DMA_PCIE_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DMA_PCIE_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DMA_PCIE_arvalid : out STD_LOGIC;
    M_AXI_DMA_PCIE_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DMA_PCIE_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DMA_PCIE_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DMA_PCIE_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_DMA_PCIE_awready : in STD_LOGIC;
    M_AXI_DMA_PCIE_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DMA_PCIE_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DMA_PCIE_awvalid : out STD_LOGIC;
    M_AXI_DMA_PCIE_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DMA_PCIE_bready : out STD_LOGIC;
    M_AXI_DMA_PCIE_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DMA_PCIE_bvalid : in STD_LOGIC;
    M_AXI_DMA_PCIE_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_DMA_PCIE_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DMA_PCIE_rlast : in STD_LOGIC;
    M_AXI_DMA_PCIE_rready : out STD_LOGIC;
    M_AXI_DMA_PCIE_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DMA_PCIE_rvalid : in STD_LOGIC;
    M_AXI_DMA_PCIE_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_DMA_PCIE_wlast : out STD_LOGIC;
    M_AXI_DMA_PCIE_wready : in STD_LOGIC;
    M_AXI_DMA_PCIE_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_DMA_PCIE_wvalid : out STD_LOGIC;
    SYS_CLK : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_FULL_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_FULL_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_FULL_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_FULL_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_FULL_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_FULL_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_FULL_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_FULL_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_FULL_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_FULL_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_FULL_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_FULL_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_FULL_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_FULL_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_FULL_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_FULL_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_FULL_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_FULL_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_LITE_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_LITE_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_LITE_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_LITE_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_LITE_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_LITE_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_LITE_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_LITE_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_LITE_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_LITE_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_LITE_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_LITE_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_LITE_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_LITE_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    clkbuf_clk_n : in STD_LOGIC;
    clkbuf_clk_p : in STD_LOGIC;
    irq_dma_mm2s : out STD_LOGIC_VECTOR ( 0 to 0 );
    irq_dma_s2mm : out STD_LOGIC_VECTOR ( 0 to 0 );
    irq_fifo : out STD_LOGIC;
    irq_hls_dft : out STD_LOGIC;
    irq_rtds_case : out STD_LOGIC;
    irq_rtds_overflow : out STD_LOGIC;
    irq_rtds_ts : out STD_LOGIC;
    sfp_rx_los : in STD_LOGIC;
    sfp_rxn : in STD_LOGIC;
    sfp_rxp : in STD_LOGIC;
    sfp_tx_disable : out STD_LOGIC;
    sfp_txn : out STD_LOGIC;
    sfp_txp : out STD_LOGIC
  );
end hier_0_imp_I4NTNW;

architecture STRUCTURE of hier_0_imp_I4NTNW is
  component top_axi_fifo_mm_s_0_0 is
  port (
    interrupt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi4_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    axi_str_txd_tvalid : out STD_LOGIC;
    axi_str_txd_tready : in STD_LOGIC;
    axi_str_txd_tlast : out STD_LOGIC;
    axi_str_txd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    axi_str_rxd_tvalid : in STD_LOGIC;
    axi_str_rxd_tready : out STD_LOGIC;
    axi_str_rxd_tlast : in STD_LOGIC;
    axi_str_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_axi_fifo_mm_s_0_0;
  component top_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_axis_data_fifo_0_0;
  component top_axis_data_fifo_1_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_axis_data_fifo_1_0;
  component top_hls_dft_0_1 is
  port (
    s_axi_ctrl_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_AWVALID : in STD_LOGIC;
    s_axi_ctrl_AWREADY : out STD_LOGIC;
    s_axi_ctrl_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_WVALID : in STD_LOGIC;
    s_axi_ctrl_WREADY : out STD_LOGIC;
    s_axi_ctrl_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_BVALID : out STD_LOGIC;
    s_axi_ctrl_BREADY : in STD_LOGIC;
    s_axi_ctrl_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_ctrl_ARVALID : in STD_LOGIC;
    s_axi_ctrl_ARREADY : out STD_LOGIC;
    s_axi_ctrl_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_RVALID : out STD_LOGIC;
    s_axi_ctrl_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    input_r_TVALID : in STD_LOGIC;
    input_r_TREADY : out STD_LOGIC;
    input_r_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    input_r_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    output_r_TVALID : out STD_LOGIC;
    output_r_TREADY : in STD_LOGIC;
    output_r_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    output_r_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_hls_dft_0_1;
  component top_rtds_axis_0_0 is
  port (
    clk100m : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    axi_resetn : out STD_LOGIC;
    CLKBUF_Q0_N : in STD_LOGIC;
    CLKBUF_Q0_P : in STD_LOGIC;
    SFP_RX_N : in STD_LOGIC;
    SFP_RX_P : in STD_LOGIC;
    SFP_TX_N : out STD_LOGIC;
    SFP_TX_P : out STD_LOGIC;
    SFP_LOS : in STD_LOGIC;
    SFP_TX_DISABLE : out STD_LOGIC;
    SYS_CLK : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    irq_ts : out STD_LOGIC;
    irq_overflow : out STD_LOGIC;
    irq_case : out STD_LOGIC;
    s_axi_ctl_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ctl_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctl_awvalid : in STD_LOGIC;
    s_axi_ctl_awready : out STD_LOGIC;
    s_axi_ctl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctl_wvalid : in STD_LOGIC;
    s_axi_ctl_wready : out STD_LOGIC;
    s_axi_ctl_bvalid : out STD_LOGIC;
    s_axi_ctl_bready : in STD_LOGIC;
    s_axi_ctl_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ctl_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctl_arvalid : in STD_LOGIC;
    s_axi_ctl_arready : out STD_LOGIC;
    s_axi_ctl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_rvalid : out STD_LOGIC;
    s_axi_ctl_rready : in STD_LOGIC
  );
  end component top_rtds_axis_0_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_RXN : STD_LOGIC;
  signal Conn2_RXP : STD_LOGIC;
  signal Conn2_RX_LOS : STD_LOGIC;
  signal Conn2_TXN : STD_LOGIC;
  signal Conn2_TXP : STD_LOGIC;
  signal Conn2_TX_DISABLE : STD_LOGIC;
  signal Conn3_CLK_N : STD_LOGIC;
  signal Conn3_CLK_P : STD_LOGIC;
  signal Conn4_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn4_ARREADY : STD_LOGIC;
  signal Conn4_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_ARVALID : STD_LOGIC;
  signal Conn4_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn4_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn4_AWREADY : STD_LOGIC;
  signal Conn4_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_AWVALID : STD_LOGIC;
  signal Conn4_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_BREADY : STD_LOGIC;
  signal Conn4_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_BVALID : STD_LOGIC;
  signal Conn4_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn4_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_RLAST : STD_LOGIC;
  signal Conn4_RREADY : STD_LOGIC;
  signal Conn4_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_RVALID : STD_LOGIC;
  signal Conn4_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal Conn4_WLAST : STD_LOGIC;
  signal Conn4_WREADY : STD_LOGIC;
  signal Conn4_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Conn4_WVALID : STD_LOGIC;
  signal S01_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG_IN_BD : string;
  attribute DEBUG_IN_BD of S01_AXIS_1_TDATA : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of S01_AXIS_1_TDATA : signal is std.standard.true;
  signal S01_AXIS_1_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEBUG_IN_BD of S01_AXIS_1_TKEEP : signal is "true";
  attribute MARK_DEBUG of S01_AXIS_1_TKEEP : signal is std.standard.true;
  signal S01_AXIS_1_TLAST : STD_LOGIC;
  attribute DEBUG_IN_BD of S01_AXIS_1_TLAST : signal is "true";
  attribute MARK_DEBUG of S01_AXIS_1_TLAST : signal is std.standard.true;
  signal S01_AXIS_1_TREADY : STD_LOGIC;
  attribute DEBUG_IN_BD of S01_AXIS_1_TREADY : signal is "true";
  attribute MARK_DEBUG of S01_AXIS_1_TREADY : signal is std.standard.true;
  signal S01_AXIS_1_TVALID : STD_LOGIC;
  attribute DEBUG_IN_BD of S01_AXIS_1_TVALID : signal is "true";
  attribute MARK_DEBUG of S01_AXIS_1_TVALID : signal is std.standard.true;
  signal S02_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG_IN_BD of S02_AXIS_1_TDATA : signal is "true";
  attribute MARK_DEBUG of S02_AXIS_1_TDATA : signal is std.standard.true;
  signal S02_AXIS_1_TLAST : STD_LOGIC;
  attribute DEBUG_IN_BD of S02_AXIS_1_TLAST : signal is "true";
  attribute MARK_DEBUG of S02_AXIS_1_TLAST : signal is std.standard.true;
  signal S02_AXIS_1_TREADY : STD_LOGIC;
  attribute DEBUG_IN_BD of S02_AXIS_1_TREADY : signal is "true";
  attribute MARK_DEBUG of S02_AXIS_1_TREADY : signal is std.standard.true;
  signal S02_AXIS_1_TVALID : STD_LOGIC;
  attribute DEBUG_IN_BD of S02_AXIS_1_TVALID : signal is "true";
  attribute MARK_DEBUG of S02_AXIS_1_TVALID : signal is std.standard.true;
  signal SYS_CLK_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXIS_S2MM1_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXIS_S2MM1_1_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXIS_S2MM1_1_TLAST : STD_LOGIC;
  signal S_AXIS_S2MM1_1_TREADY : STD_LOGIC;
  signal S_AXIS_S2MM1_1_TVALID : STD_LOGIC;
  signal S_AXI_CTRL_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_CTRL_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_CTRL_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_CTRL_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_CTRL_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_FULL_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_FULL_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_FULL_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_FULL_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_FULL_1_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_FULL_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_FULL_1_ARREADY : STD_LOGIC;
  signal S_AXI_FULL_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_FULL_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_FULL_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_FULL_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_FULL_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_FULL_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_FULL_1_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_FULL_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_FULL_1_AWREADY : STD_LOGIC;
  signal S_AXI_FULL_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_FULL_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_FULL_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_FULL_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_FULL_1_BVALID : STD_LOGIC;
  signal S_AXI_FULL_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_FULL_1_RLAST : STD_LOGIC;
  signal S_AXI_FULL_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_FULL_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_FULL_1_RVALID : STD_LOGIC;
  signal S_AXI_FULL_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_FULL_1_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_FULL_1_WREADY : STD_LOGIC;
  signal S_AXI_FULL_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_FULL_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_LITE1_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE1_1_ARREADY : STD_LOGIC;
  signal S_AXI_LITE1_1_ARVALID : STD_LOGIC;
  signal S_AXI_LITE1_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE1_1_AWREADY : STD_LOGIC;
  signal S_AXI_LITE1_1_AWVALID : STD_LOGIC;
  signal S_AXI_LITE1_1_BREADY : STD_LOGIC;
  signal S_AXI_LITE1_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_LITE1_1_BVALID : STD_LOGIC;
  signal S_AXI_LITE1_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE1_1_RREADY : STD_LOGIC;
  signal S_AXI_LITE1_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_LITE1_1_RVALID : STD_LOGIC;
  signal S_AXI_LITE1_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_LITE1_1_WREADY : STD_LOGIC;
  signal S_AXI_LITE1_1_WVALID : STD_LOGIC;
  signal axi_dma_0_mm2s_introut : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_0_s2mm_introut : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_M_AXIS_MM2S1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_M_AXIS_MM2S1_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_M_AXIS_MM2S1_TLAST : STD_LOGIC;
  signal axi_dma_M_AXIS_MM2S1_TREADY : STD_LOGIC;
  signal axi_dma_M_AXIS_MM2S1_TVALID : STD_LOGIC;
  signal axi_interconnect_mm_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_mm_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_mm_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_mm_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_mm_0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_mm_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_mm_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_mm_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_mm_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_mm_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_mm_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_mm_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_mm_0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_mm_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_mm_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_mm_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_mm_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_mm_M02_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_mm_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_mm_M02_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_mm_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M02_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_mm_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_mm_M02_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_mm_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M02_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_mm_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_mm_M02_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_mm_M03_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M03_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_mm_M03_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M03_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_mm_M03_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_mm_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_mm_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_mm_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_mm_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_mm_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_mm_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_mm_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_mm_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_mm_M04_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_mm_M04_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_mm_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M04_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_mm_M04_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_mm_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_mm_M04_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_mm_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_mm_M04_AXI_WVALID : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TVALID : STD_LOGIC;
  signal axis_interconnect_0_M04_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_M04_AXIS_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_0_M04_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_0_M04_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M04_AXIS_TVALID : STD_LOGIC;
  signal axis_interconnect_0_M05_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_0_M05_AXIS_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_interconnect_0_M05_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_0_M05_AXIS_TVALID : STD_LOGIC;
  signal axis_interconnect_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG_IN_BD of axis_interconnect_M00_AXIS_TDATA : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M00_AXIS_TDATA : signal is std.standard.true;
  signal axis_interconnect_M00_AXIS_TLAST : STD_LOGIC;
  attribute DEBUG_IN_BD of axis_interconnect_M00_AXIS_TLAST : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M00_AXIS_TLAST : signal is std.standard.true;
  signal axis_interconnect_M00_AXIS_TREADY : STD_LOGIC;
  attribute DEBUG_IN_BD of axis_interconnect_M00_AXIS_TREADY : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M00_AXIS_TREADY : signal is std.standard.true;
  signal axis_interconnect_M00_AXIS_TVALID : STD_LOGIC;
  attribute DEBUG_IN_BD of axis_interconnect_M00_AXIS_TVALID : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M00_AXIS_TVALID : signal is std.standard.true;
  signal axis_interconnect_M01_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG_IN_BD of axis_interconnect_M01_AXIS_TDATA : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M01_AXIS_TDATA : signal is std.standard.true;
  signal axis_interconnect_M01_AXIS_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEBUG_IN_BD of axis_interconnect_M01_AXIS_TKEEP : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M01_AXIS_TKEEP : signal is std.standard.true;
  signal axis_interconnect_M01_AXIS_TLAST : STD_LOGIC;
  attribute DEBUG_IN_BD of axis_interconnect_M01_AXIS_TLAST : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M01_AXIS_TLAST : signal is std.standard.true;
  signal axis_interconnect_M01_AXIS_TREADY : STD_LOGIC;
  attribute DEBUG_IN_BD of axis_interconnect_M01_AXIS_TREADY : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M01_AXIS_TREADY : signal is std.standard.true;
  signal axis_interconnect_M01_AXIS_TVALID : STD_LOGIC;
  attribute DEBUG_IN_BD of axis_interconnect_M01_AXIS_TVALID : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M01_AXIS_TVALID : signal is std.standard.true;
  signal axis_interconnect_M02_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG_IN_BD of axis_interconnect_M02_AXIS_TDATA : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M02_AXIS_TDATA : signal is std.standard.true;
  signal axis_interconnect_M02_AXIS_TLAST : STD_LOGIC;
  attribute DEBUG_IN_BD of axis_interconnect_M02_AXIS_TLAST : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M02_AXIS_TLAST : signal is std.standard.true;
  signal axis_interconnect_M02_AXIS_TREADY : STD_LOGIC;
  attribute DEBUG_IN_BD of axis_interconnect_M02_AXIS_TREADY : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M02_AXIS_TREADY : signal is std.standard.true;
  signal axis_interconnect_M02_AXIS_TVALID : STD_LOGIC;
  attribute DEBUG_IN_BD of axis_interconnect_M02_AXIS_TVALID : signal is "true";
  attribute MARK_DEBUG of axis_interconnect_M02_AXIS_TVALID : signal is std.standard.true;
  signal axis_interconnect_M03_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_interconnect_M03_AXIS_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_interconnect_M03_AXIS_TLAST : STD_LOGIC;
  signal axis_interconnect_M03_AXIS_TREADY : STD_LOGIC;
  signal axis_interconnect_M03_AXIS_TVALID : STD_LOGIC;
  signal hls_dft_0_interrupt : STD_LOGIC;
  signal hls_dft_0_output_r_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hls_dft_0_output_r_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_dft_0_output_r_TREADY : STD_LOGIC;
  signal hls_dft_0_output_r_TVALID : STD_LOGIC;
  signal pcie_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rtds_axis_0_axi_resetn : STD_LOGIC;
  signal rtds_axis_0_clk100m : STD_LOGIC;
  signal rtds_axis_0_irq_case : STD_LOGIC;
  signal rtds_axis_0_irq_overflow : STD_LOGIC;
  signal rtds_axis_0_irq_ts : STD_LOGIC;
  signal rtds_axis_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG_IN_BD of rtds_axis_0_m_axis_TDATA : signal is "true";
  attribute MARK_DEBUG of rtds_axis_0_m_axis_TDATA : signal is std.standard.true;
  signal rtds_axis_0_m_axis_TLAST : STD_LOGIC;
  attribute DEBUG_IN_BD of rtds_axis_0_m_axis_TLAST : signal is "true";
  attribute MARK_DEBUG of rtds_axis_0_m_axis_TLAST : signal is std.standard.true;
  signal rtds_axis_0_m_axis_TREADY : STD_LOGIC;
  attribute DEBUG_IN_BD of rtds_axis_0_m_axis_TREADY : signal is "true";
  attribute MARK_DEBUG of rtds_axis_0_m_axis_TREADY : signal is std.standard.true;
  signal rtds_axis_0_m_axis_TVALID : STD_LOGIC;
  attribute DEBUG_IN_BD of rtds_axis_0_m_axis_TVALID : signal is "true";
  attribute MARK_DEBUG of rtds_axis_0_m_axis_TVALID : signal is std.standard.true;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal xsg_pio_interrupt : STD_LOGIC;
  signal NLW_axi_fifo_mm_s_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_fifo_mm_s_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_fifo_mm_s_0_s_axi4_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_fifo_mm_s_0_s_axi4_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_1_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_1_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_1_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Conn1_ARADDR(31 downto 0) <= S_AXI_LITE_araddr(31 downto 0);
  Conn1_ARBURST(1 downto 0) <= S_AXI_LITE_arburst(1 downto 0);
  Conn1_ARCACHE(3 downto 0) <= S_AXI_LITE_arcache(3 downto 0);
  Conn1_ARLEN(7 downto 0) <= S_AXI_LITE_arlen(7 downto 0);
  Conn1_ARLOCK(0) <= S_AXI_LITE_arlock(0);
  Conn1_ARPROT(2 downto 0) <= S_AXI_LITE_arprot(2 downto 0);
  Conn1_ARQOS(3 downto 0) <= S_AXI_LITE_arqos(3 downto 0);
  Conn1_ARREGION(3 downto 0) <= S_AXI_LITE_arregion(3 downto 0);
  Conn1_ARSIZE(2 downto 0) <= S_AXI_LITE_arsize(2 downto 0);
  Conn1_ARVALID(0) <= S_AXI_LITE_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S_AXI_LITE_awaddr(31 downto 0);
  Conn1_AWBURST(1 downto 0) <= S_AXI_LITE_awburst(1 downto 0);
  Conn1_AWCACHE(3 downto 0) <= S_AXI_LITE_awcache(3 downto 0);
  Conn1_AWLEN(7 downto 0) <= S_AXI_LITE_awlen(7 downto 0);
  Conn1_AWLOCK(0) <= S_AXI_LITE_awlock(0);
  Conn1_AWPROT(2 downto 0) <= S_AXI_LITE_awprot(2 downto 0);
  Conn1_AWQOS(3 downto 0) <= S_AXI_LITE_awqos(3 downto 0);
  Conn1_AWREGION(3 downto 0) <= S_AXI_LITE_awregion(3 downto 0);
  Conn1_AWSIZE(2 downto 0) <= S_AXI_LITE_awsize(2 downto 0);
  Conn1_AWVALID(0) <= S_AXI_LITE_awvalid(0);
  Conn1_BREADY(0) <= S_AXI_LITE_bready(0);
  Conn1_RREADY(0) <= S_AXI_LITE_rready(0);
  Conn1_WDATA(31 downto 0) <= S_AXI_LITE_wdata(31 downto 0);
  Conn1_WLAST(0) <= S_AXI_LITE_wlast(0);
  Conn1_WSTRB(3 downto 0) <= S_AXI_LITE_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S_AXI_LITE_wvalid(0);
  Conn2_RXN <= sfp_rxn;
  Conn2_RXP <= sfp_rxp;
  Conn2_RX_LOS <= sfp_rx_los;
  Conn3_CLK_N <= clkbuf_clk_n;
  Conn3_CLK_P <= clkbuf_clk_p;
  Conn4_ARREADY <= M_AXI_DMA_PCIE_arready;
  Conn4_AWREADY <= M_AXI_DMA_PCIE_awready;
  Conn4_BID(2 downto 0) <= M_AXI_DMA_PCIE_bid(2 downto 0);
  Conn4_BRESP(1 downto 0) <= M_AXI_DMA_PCIE_bresp(1 downto 0);
  Conn4_BVALID <= M_AXI_DMA_PCIE_bvalid;
  Conn4_RDATA(127 downto 0) <= M_AXI_DMA_PCIE_rdata(127 downto 0);
  Conn4_RID(2 downto 0) <= M_AXI_DMA_PCIE_rid(2 downto 0);
  Conn4_RLAST <= M_AXI_DMA_PCIE_rlast;
  Conn4_RRESP(1 downto 0) <= M_AXI_DMA_PCIE_rresp(1 downto 0);
  Conn4_RVALID <= M_AXI_DMA_PCIE_rvalid;
  Conn4_WREADY <= M_AXI_DMA_PCIE_wready;
  M_AXI_DMA_PCIE_araddr(31 downto 0) <= Conn4_ARADDR(31 downto 0);
  M_AXI_DMA_PCIE_arburst(1 downto 0) <= Conn4_ARBURST(1 downto 0);
  M_AXI_DMA_PCIE_arid(2 downto 0) <= Conn4_ARID(2 downto 0);
  M_AXI_DMA_PCIE_arlen(7 downto 0) <= Conn4_ARLEN(7 downto 0);
  M_AXI_DMA_PCIE_arregion(3 downto 0) <= Conn4_ARREGION(3 downto 0);
  M_AXI_DMA_PCIE_arsize(2 downto 0) <= Conn4_ARSIZE(2 downto 0);
  M_AXI_DMA_PCIE_arvalid <= Conn4_ARVALID;
  M_AXI_DMA_PCIE_awaddr(31 downto 0) <= Conn4_AWADDR(31 downto 0);
  M_AXI_DMA_PCIE_awburst(1 downto 0) <= Conn4_AWBURST(1 downto 0);
  M_AXI_DMA_PCIE_awid(2 downto 0) <= Conn4_AWID(2 downto 0);
  M_AXI_DMA_PCIE_awlen(7 downto 0) <= Conn4_AWLEN(7 downto 0);
  M_AXI_DMA_PCIE_awregion(3 downto 0) <= Conn4_AWREGION(3 downto 0);
  M_AXI_DMA_PCIE_awsize(2 downto 0) <= Conn4_AWSIZE(2 downto 0);
  M_AXI_DMA_PCIE_awvalid <= Conn4_AWVALID;
  M_AXI_DMA_PCIE_bready <= Conn4_BREADY;
  M_AXI_DMA_PCIE_rready <= Conn4_RREADY;
  M_AXI_DMA_PCIE_wdata(127 downto 0) <= Conn4_WDATA(127 downto 0);
  M_AXI_DMA_PCIE_wlast <= Conn4_WLAST;
  M_AXI_DMA_PCIE_wstrb(15 downto 0) <= Conn4_WSTRB(15 downto 0);
  M_AXI_DMA_PCIE_wvalid <= Conn4_WVALID;
  SYS_CLK_1(0) <= SYS_CLK(0);
  S_AXI_FULL_1_ARADDR(31 downto 0) <= S_AXI_FULL_araddr(31 downto 0);
  S_AXI_FULL_1_ARBURST(1 downto 0) <= S_AXI_FULL_arburst(1 downto 0);
  S_AXI_FULL_1_ARCACHE(3 downto 0) <= S_AXI_FULL_arcache(3 downto 0);
  S_AXI_FULL_1_ARLEN(7 downto 0) <= S_AXI_FULL_arlen(7 downto 0);
  S_AXI_FULL_1_ARLOCK(0) <= S_AXI_FULL_arlock(0);
  S_AXI_FULL_1_ARPROT(2 downto 0) <= S_AXI_FULL_arprot(2 downto 0);
  S_AXI_FULL_1_ARSIZE(2 downto 0) <= S_AXI_FULL_arsize(2 downto 0);
  S_AXI_FULL_1_ARVALID(0) <= S_AXI_FULL_arvalid(0);
  S_AXI_FULL_1_AWADDR(31 downto 0) <= S_AXI_FULL_awaddr(31 downto 0);
  S_AXI_FULL_1_AWBURST(1 downto 0) <= S_AXI_FULL_awburst(1 downto 0);
  S_AXI_FULL_1_AWCACHE(3 downto 0) <= S_AXI_FULL_awcache(3 downto 0);
  S_AXI_FULL_1_AWLEN(7 downto 0) <= S_AXI_FULL_awlen(7 downto 0);
  S_AXI_FULL_1_AWLOCK(0) <= S_AXI_FULL_awlock(0);
  S_AXI_FULL_1_AWPROT(2 downto 0) <= S_AXI_FULL_awprot(2 downto 0);
  S_AXI_FULL_1_AWSIZE(2 downto 0) <= S_AXI_FULL_awsize(2 downto 0);
  S_AXI_FULL_1_AWVALID(0) <= S_AXI_FULL_awvalid(0);
  S_AXI_FULL_1_BREADY(0) <= S_AXI_FULL_bready(0);
  S_AXI_FULL_1_RREADY(0) <= S_AXI_FULL_rready(0);
  S_AXI_FULL_1_WDATA(31 downto 0) <= S_AXI_FULL_wdata(31 downto 0);
  S_AXI_FULL_1_WLAST(0) <= S_AXI_FULL_wlast(0);
  S_AXI_FULL_1_WSTRB(3 downto 0) <= S_AXI_FULL_wstrb(3 downto 0);
  S_AXI_FULL_1_WVALID(0) <= S_AXI_FULL_wvalid(0);
  S_AXI_FULL_arready(0) <= S_AXI_FULL_1_ARREADY;
  S_AXI_FULL_awready(0) <= S_AXI_FULL_1_AWREADY;
  S_AXI_FULL_bresp(1 downto 0) <= S_AXI_FULL_1_BRESP(1 downto 0);
  S_AXI_FULL_bvalid(0) <= S_AXI_FULL_1_BVALID;
  S_AXI_FULL_rdata(31 downto 0) <= S_AXI_FULL_1_RDATA(31 downto 0);
  S_AXI_FULL_rlast(0) <= S_AXI_FULL_1_RLAST;
  S_AXI_FULL_rresp(1 downto 0) <= S_AXI_FULL_1_RRESP(1 downto 0);
  S_AXI_FULL_rvalid(0) <= S_AXI_FULL_1_RVALID;
  S_AXI_FULL_wready(0) <= S_AXI_FULL_1_WREADY;
  S_AXI_LITE_arready(0) <= Conn1_ARREADY(0);
  S_AXI_LITE_awready(0) <= Conn1_AWREADY(0);
  S_AXI_LITE_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S_AXI_LITE_bvalid(0) <= Conn1_BVALID(0);
  S_AXI_LITE_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S_AXI_LITE_rlast(0) <= Conn1_RLAST(0);
  S_AXI_LITE_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S_AXI_LITE_rvalid(0) <= Conn1_RVALID(0);
  S_AXI_LITE_wready(0) <= Conn1_WREADY(0);
  irq_dma_mm2s(0) <= axi_dma_0_mm2s_introut(0);
  irq_dma_s2mm(0) <= axi_dma_0_s2mm_introut(0);
  irq_fifo <= xsg_pio_interrupt;
  irq_hls_dft <= hls_dft_0_interrupt;
  irq_rtds_case <= rtds_axis_0_irq_case;
  irq_rtds_overflow <= rtds_axis_0_irq_overflow;
  irq_rtds_ts <= rtds_axis_0_irq_ts;
  pcie_0_peripheral_aresetn(0) <= aresetn(0);
  s_axi_aclk_1 <= clk;
  sfp_tx_disable <= Conn2_TX_DISABLE;
  sfp_txn <= Conn2_TXN;
  sfp_txp <= Conn2_TXP;
axi_dma: entity work.axi_dma_imp_6G9VF2
     port map (
      M00_AXI_araddr(31 downto 0) => Conn4_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => Conn4_ARBURST(1 downto 0),
      M00_AXI_arid(2 downto 0) => Conn4_ARID(2 downto 0),
      M00_AXI_arlen(7 downto 0) => Conn4_ARLEN(7 downto 0),
      M00_AXI_arready => Conn4_ARREADY,
      M00_AXI_arregion(3 downto 0) => Conn4_ARREGION(3 downto 0),
      M00_AXI_arsize(2 downto 0) => Conn4_ARSIZE(2 downto 0),
      M00_AXI_arvalid => Conn4_ARVALID,
      M00_AXI_awaddr(31 downto 0) => Conn4_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => Conn4_AWBURST(1 downto 0),
      M00_AXI_awid(2 downto 0) => Conn4_AWID(2 downto 0),
      M00_AXI_awlen(7 downto 0) => Conn4_AWLEN(7 downto 0),
      M00_AXI_awready => Conn4_AWREADY,
      M00_AXI_awregion(3 downto 0) => Conn4_AWREGION(3 downto 0),
      M00_AXI_awsize(2 downto 0) => Conn4_AWSIZE(2 downto 0),
      M00_AXI_awvalid => Conn4_AWVALID,
      M00_AXI_bid(2 downto 0) => Conn4_BID(2 downto 0),
      M00_AXI_bready => Conn4_BREADY,
      M00_AXI_bresp(1 downto 0) => Conn4_BRESP(1 downto 0),
      M00_AXI_bvalid => Conn4_BVALID,
      M00_AXI_rdata(127 downto 0) => Conn4_RDATA(127 downto 0),
      M00_AXI_rid(2 downto 0) => Conn4_RID(2 downto 0),
      M00_AXI_rlast => Conn4_RLAST,
      M00_AXI_rready => Conn4_RREADY,
      M00_AXI_rresp(1 downto 0) => Conn4_RRESP(1 downto 0),
      M00_AXI_rvalid => Conn4_RVALID,
      M00_AXI_wdata(127 downto 0) => Conn4_WDATA(127 downto 0),
      M00_AXI_wlast => Conn4_WLAST,
      M00_AXI_wready => Conn4_WREADY,
      M00_AXI_wstrb(15 downto 0) => Conn4_WSTRB(15 downto 0),
      M00_AXI_wvalid => Conn4_WVALID,
      M_AXIS_MM2S1_tdata(31 downto 0) => axi_dma_M_AXIS_MM2S1_TDATA(31 downto 0),
      M_AXIS_MM2S1_tkeep(3 downto 0) => axi_dma_M_AXIS_MM2S1_TKEEP(3 downto 0),
      M_AXIS_MM2S1_tlast => axi_dma_M_AXIS_MM2S1_TLAST,
      M_AXIS_MM2S1_tready => axi_dma_M_AXIS_MM2S1_TREADY,
      M_AXIS_MM2S1_tvalid => axi_dma_M_AXIS_MM2S1_TVALID,
      M_AXIS_MM2S_tdata(31 downto 0) => S01_AXIS_1_TDATA(31 downto 0),
      M_AXIS_MM2S_tkeep(3 downto 0) => S01_AXIS_1_TKEEP(3 downto 0),
      M_AXIS_MM2S_tlast => S01_AXIS_1_TLAST,
      M_AXIS_MM2S_tready => S01_AXIS_1_TREADY,
      M_AXIS_MM2S_tvalid => S01_AXIS_1_TVALID,
      S_AXIS_S2MM1_tdata(31 downto 0) => S_AXIS_S2MM1_1_TDATA(31 downto 0),
      S_AXIS_S2MM1_tkeep(3 downto 0) => S_AXIS_S2MM1_1_TKEEP(3 downto 0),
      S_AXIS_S2MM1_tlast => S_AXIS_S2MM1_1_TLAST,
      S_AXIS_S2MM1_tready => S_AXIS_S2MM1_1_TREADY,
      S_AXIS_S2MM1_tvalid => S_AXIS_S2MM1_1_TVALID,
      S_AXIS_S2MM_tdata(31 downto 0) => axis_interconnect_M01_AXIS_TDATA(31 downto 0),
      S_AXIS_S2MM_tkeep(3 downto 0) => axis_interconnect_M01_AXIS_TKEEP(3 downto 0),
      S_AXIS_S2MM_tlast => axis_interconnect_M01_AXIS_TLAST,
      S_AXIS_S2MM_tready => axis_interconnect_M01_AXIS_TREADY,
      S_AXIS_S2MM_tvalid => axis_interconnect_M01_AXIS_TVALID,
      S_AXI_LITE1_araddr(31 downto 0) => S_AXI_LITE1_1_ARADDR(31 downto 0),
      S_AXI_LITE1_arready => S_AXI_LITE1_1_ARREADY,
      S_AXI_LITE1_arvalid => S_AXI_LITE1_1_ARVALID,
      S_AXI_LITE1_awaddr(31 downto 0) => S_AXI_LITE1_1_AWADDR(31 downto 0),
      S_AXI_LITE1_awready => S_AXI_LITE1_1_AWREADY,
      S_AXI_LITE1_awvalid => S_AXI_LITE1_1_AWVALID,
      S_AXI_LITE1_bready => S_AXI_LITE1_1_BREADY,
      S_AXI_LITE1_bresp(1 downto 0) => S_AXI_LITE1_1_BRESP(1 downto 0),
      S_AXI_LITE1_bvalid => S_AXI_LITE1_1_BVALID,
      S_AXI_LITE1_rdata(31 downto 0) => S_AXI_LITE1_1_RDATA(31 downto 0),
      S_AXI_LITE1_rready => S_AXI_LITE1_1_RREADY,
      S_AXI_LITE1_rresp(1 downto 0) => S_AXI_LITE1_1_RRESP(1 downto 0),
      S_AXI_LITE1_rvalid => S_AXI_LITE1_1_RVALID,
      S_AXI_LITE1_wdata(31 downto 0) => S_AXI_LITE1_1_WDATA(31 downto 0),
      S_AXI_LITE1_wready => S_AXI_LITE1_1_WREADY,
      S_AXI_LITE1_wvalid => S_AXI_LITE1_1_WVALID,
      S_AXI_LITE_araddr(31 downto 0) => axi_interconnect_mm_M03_AXI_ARADDR(31 downto 0),
      S_AXI_LITE_arready => axi_interconnect_mm_M03_AXI_ARREADY,
      S_AXI_LITE_arvalid => axi_interconnect_mm_M03_AXI_ARVALID,
      S_AXI_LITE_awaddr(31 downto 0) => axi_interconnect_mm_M03_AXI_AWADDR(31 downto 0),
      S_AXI_LITE_awready => axi_interconnect_mm_M03_AXI_AWREADY,
      S_AXI_LITE_awvalid => axi_interconnect_mm_M03_AXI_AWVALID,
      S_AXI_LITE_bready => axi_interconnect_mm_M03_AXI_BREADY,
      S_AXI_LITE_bresp(1 downto 0) => axi_interconnect_mm_M03_AXI_BRESP(1 downto 0),
      S_AXI_LITE_bvalid => axi_interconnect_mm_M03_AXI_BVALID,
      S_AXI_LITE_rdata(31 downto 0) => axi_interconnect_mm_M03_AXI_RDATA(31 downto 0),
      S_AXI_LITE_rready => axi_interconnect_mm_M03_AXI_RREADY,
      S_AXI_LITE_rresp(1 downto 0) => axi_interconnect_mm_M03_AXI_RRESP(1 downto 0),
      S_AXI_LITE_rvalid => axi_interconnect_mm_M03_AXI_RVALID,
      S_AXI_LITE_wdata(31 downto 0) => axi_interconnect_mm_M03_AXI_WDATA(31 downto 0),
      S_AXI_LITE_wready => axi_interconnect_mm_M03_AXI_WREADY,
      S_AXI_LITE_wvalid => axi_interconnect_mm_M03_AXI_WVALID,
      axi_resetn(0) => pcie_0_peripheral_aresetn(0),
      m_axi_sg_aclk => s_axi_aclk_1,
      mm2s_introut(0) => axi_dma_0_mm2s_introut(0),
      s2mm_introut(0) => axi_dma_0_s2mm_introut(0)
    );
axi_fifo_mm_s_0: component top_axi_fifo_mm_s_0_0
     port map (
      axi_str_rxd_tdata(31 downto 0) => axis_interconnect_M02_AXIS_TDATA(31 downto 0),
      axi_str_rxd_tlast => axis_interconnect_M02_AXIS_TLAST,
      axi_str_rxd_tready => axis_interconnect_M02_AXIS_TREADY,
      axi_str_rxd_tvalid => axis_interconnect_M02_AXIS_TVALID,
      axi_str_txd_tdata(31 downto 0) => S02_AXIS_1_TDATA(31 downto 0),
      axi_str_txd_tlast => S02_AXIS_1_TLAST,
      axi_str_txd_tready => S02_AXIS_1_TREADY,
      axi_str_txd_tvalid => S02_AXIS_1_TVALID,
      interrupt => xsg_pio_interrupt,
      mm2s_prmry_reset_out_n => NLW_axi_fifo_mm_s_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_prmry_reset_out_n => NLW_axi_fifo_mm_s_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi4_araddr(31 downto 0) => S_AXI_FULL_1_ARADDR(31 downto 0),
      s_axi4_arburst(1 downto 0) => S_AXI_FULL_1_ARBURST(1 downto 0),
      s_axi4_arcache(3 downto 0) => S_AXI_FULL_1_ARCACHE(3 downto 0),
      s_axi4_arid(0) => '0',
      s_axi4_arlen(7 downto 0) => S_AXI_FULL_1_ARLEN(7 downto 0),
      s_axi4_arlock => S_AXI_FULL_1_ARLOCK(0),
      s_axi4_arprot(2 downto 0) => S_AXI_FULL_1_ARPROT(2 downto 0),
      s_axi4_arready => S_AXI_FULL_1_ARREADY,
      s_axi4_arsize(2 downto 0) => S_AXI_FULL_1_ARSIZE(2 downto 0),
      s_axi4_arvalid => S_AXI_FULL_1_ARVALID(0),
      s_axi4_awaddr(31 downto 0) => S_AXI_FULL_1_AWADDR(31 downto 0),
      s_axi4_awburst(1 downto 0) => S_AXI_FULL_1_AWBURST(1 downto 0),
      s_axi4_awcache(3 downto 0) => S_AXI_FULL_1_AWCACHE(3 downto 0),
      s_axi4_awid(0) => '0',
      s_axi4_awlen(7 downto 0) => S_AXI_FULL_1_AWLEN(7 downto 0),
      s_axi4_awlock => S_AXI_FULL_1_AWLOCK(0),
      s_axi4_awprot(2 downto 0) => S_AXI_FULL_1_AWPROT(2 downto 0),
      s_axi4_awready => S_AXI_FULL_1_AWREADY,
      s_axi4_awsize(2 downto 0) => S_AXI_FULL_1_AWSIZE(2 downto 0),
      s_axi4_awvalid => S_AXI_FULL_1_AWVALID(0),
      s_axi4_bid(0) => NLW_axi_fifo_mm_s_0_s_axi4_bid_UNCONNECTED(0),
      s_axi4_bready => S_AXI_FULL_1_BREADY(0),
      s_axi4_bresp(1 downto 0) => S_AXI_FULL_1_BRESP(1 downto 0),
      s_axi4_bvalid => S_AXI_FULL_1_BVALID,
      s_axi4_rdata(31 downto 0) => S_AXI_FULL_1_RDATA(31 downto 0),
      s_axi4_rid(0) => NLW_axi_fifo_mm_s_0_s_axi4_rid_UNCONNECTED(0),
      s_axi4_rlast => S_AXI_FULL_1_RLAST,
      s_axi4_rready => S_AXI_FULL_1_RREADY(0),
      s_axi4_rresp(1 downto 0) => S_AXI_FULL_1_RRESP(1 downto 0),
      s_axi4_rvalid => S_AXI_FULL_1_RVALID,
      s_axi4_wdata(31 downto 0) => S_AXI_FULL_1_WDATA(31 downto 0),
      s_axi4_wlast => S_AXI_FULL_1_WLAST(0),
      s_axi4_wready => S_AXI_FULL_1_WREADY,
      s_axi4_wstrb(3 downto 0) => S_AXI_FULL_1_WSTRB(3 downto 0),
      s_axi4_wvalid => S_AXI_FULL_1_WVALID(0),
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(31 downto 0) => axi_interconnect_mm_M02_AXI_ARADDR(31 downto 0),
      s_axi_aresetn => pcie_0_peripheral_aresetn(0),
      s_axi_arready => axi_interconnect_mm_M02_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_mm_M02_AXI_ARVALID,
      s_axi_awaddr(31 downto 0) => axi_interconnect_mm_M02_AXI_AWADDR(31 downto 0),
      s_axi_awready => axi_interconnect_mm_M02_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_mm_M02_AXI_AWVALID,
      s_axi_bready => axi_interconnect_mm_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_mm_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_mm_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_mm_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_mm_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_mm_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_mm_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_mm_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_mm_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_mm_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_mm_M02_AXI_WVALID
    );
axi_interconnect_mm_0: entity work.axi_interconnect_mm_0_imp_1D2K655
     port map (
      M00_AXI_araddr(31 downto 0) => S_AXI_CTRL_1_ARADDR(31 downto 0),
      M00_AXI_arready(0) => S_AXI_CTRL_1_ARREADY(0),
      M00_AXI_arvalid(0) => S_AXI_CTRL_1_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => S_AXI_CTRL_1_AWADDR(31 downto 0),
      M00_AXI_awready(0) => S_AXI_CTRL_1_AWREADY(0),
      M00_AXI_awvalid(0) => S_AXI_CTRL_1_AWVALID(0),
      M00_AXI_bready(0) => S_AXI_CTRL_1_BREADY(0),
      M00_AXI_bresp(1 downto 0) => S_AXI_CTRL_1_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => S_AXI_CTRL_1_BVALID(0),
      M00_AXI_rdata(31 downto 0) => S_AXI_CTRL_1_RDATA(31 downto 0),
      M00_AXI_rready(0) => S_AXI_CTRL_1_RREADY(0),
      M00_AXI_rresp(1 downto 0) => S_AXI_CTRL_1_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => S_AXI_CTRL_1_RVALID(0),
      M00_AXI_wdata(31 downto 0) => S_AXI_CTRL_1_WDATA(31 downto 0),
      M00_AXI_wready(0) => S_AXI_CTRL_1_WREADY(0),
      M00_AXI_wvalid(0) => S_AXI_CTRL_1_WVALID(0),
      M01_AXI_araddr(31 downto 0) => axi_interconnect_mm_0_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => axi_interconnect_mm_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_interconnect_mm_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => axi_interconnect_mm_0_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => axi_interconnect_mm_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_interconnect_mm_0_M01_AXI_AWVALID,
      M01_AXI_bready => axi_interconnect_mm_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_interconnect_mm_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_interconnect_mm_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_interconnect_mm_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_interconnect_mm_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_interconnect_mm_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_interconnect_mm_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_interconnect_mm_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_interconnect_mm_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_interconnect_mm_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_interconnect_mm_0_M01_AXI_WVALID,
      M02_AXI_araddr(31 downto 0) => axi_interconnect_mm_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready => axi_interconnect_mm_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_interconnect_mm_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => axi_interconnect_mm_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready => axi_interconnect_mm_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_interconnect_mm_M02_AXI_AWVALID,
      M02_AXI_bready => axi_interconnect_mm_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_interconnect_mm_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_interconnect_mm_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_interconnect_mm_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_interconnect_mm_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_interconnect_mm_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_interconnect_mm_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_interconnect_mm_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_interconnect_mm_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_interconnect_mm_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_interconnect_mm_M02_AXI_WVALID,
      M03_AXI_araddr(31 downto 0) => axi_interconnect_mm_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready => axi_interconnect_mm_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_interconnect_mm_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => axi_interconnect_mm_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready => axi_interconnect_mm_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_interconnect_mm_M03_AXI_AWVALID,
      M03_AXI_bready => axi_interconnect_mm_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_interconnect_mm_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_interconnect_mm_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_interconnect_mm_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_interconnect_mm_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_interconnect_mm_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_interconnect_mm_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_interconnect_mm_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_interconnect_mm_M03_AXI_WREADY,
      M03_AXI_wvalid => axi_interconnect_mm_M03_AXI_WVALID,
      M04_ACLK => rtds_axis_0_clk100m,
      M04_ARESETN(0) => rtds_axis_0_axi_resetn,
      M04_AXI_araddr(5 downto 0) => axi_interconnect_mm_M04_AXI_ARADDR(5 downto 0),
      M04_AXI_arprot(2 downto 0) => axi_interconnect_mm_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready => axi_interconnect_mm_M04_AXI_ARREADY,
      M04_AXI_arvalid => axi_interconnect_mm_M04_AXI_ARVALID,
      M04_AXI_awaddr(5 downto 0) => axi_interconnect_mm_M04_AXI_AWADDR(5 downto 0),
      M04_AXI_awprot(2 downto 0) => axi_interconnect_mm_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready => axi_interconnect_mm_M04_AXI_AWREADY,
      M04_AXI_awvalid => axi_interconnect_mm_M04_AXI_AWVALID,
      M04_AXI_bready => axi_interconnect_mm_M04_AXI_BREADY,
      M04_AXI_bvalid => axi_interconnect_mm_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_interconnect_mm_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => axi_interconnect_mm_M04_AXI_RREADY,
      M04_AXI_rvalid => axi_interconnect_mm_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_interconnect_mm_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => axi_interconnect_mm_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_interconnect_mm_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => axi_interconnect_mm_M04_AXI_WVALID,
      M05_AXI_araddr(31 downto 0) => S_AXI_LITE1_1_ARADDR(31 downto 0),
      M05_AXI_arready => S_AXI_LITE1_1_ARREADY,
      M05_AXI_arvalid => S_AXI_LITE1_1_ARVALID,
      M05_AXI_awaddr(31 downto 0) => S_AXI_LITE1_1_AWADDR(31 downto 0),
      M05_AXI_awready => S_AXI_LITE1_1_AWREADY,
      M05_AXI_awvalid => S_AXI_LITE1_1_AWVALID,
      M05_AXI_bready => S_AXI_LITE1_1_BREADY,
      M05_AXI_bresp(1 downto 0) => S_AXI_LITE1_1_BRESP(1 downto 0),
      M05_AXI_bvalid => S_AXI_LITE1_1_BVALID,
      M05_AXI_rdata(31 downto 0) => S_AXI_LITE1_1_RDATA(31 downto 0),
      M05_AXI_rready => S_AXI_LITE1_1_RREADY,
      M05_AXI_rresp(1 downto 0) => S_AXI_LITE1_1_RRESP(1 downto 0),
      M05_AXI_rvalid => S_AXI_LITE1_1_RVALID,
      M05_AXI_wdata(31 downto 0) => S_AXI_LITE1_1_WDATA(31 downto 0),
      M05_AXI_wready => S_AXI_LITE1_1_WREADY,
      M05_AXI_wvalid => S_AXI_LITE1_1_WVALID,
      S00_ACLK => s_axi_aclk_1,
      S00_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => Conn1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => Conn1_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => Conn1_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => Conn1_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => Conn1_ARQOS(3 downto 0),
      S00_AXI_arready(0) => Conn1_ARREADY(0),
      S00_AXI_arregion(3 downto 0) => Conn1_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => Conn1_ARSIZE(2 downto 0),
      S00_AXI_arvalid(0) => Conn1_ARVALID(0),
      S00_AXI_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => Conn1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => Conn1_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => Conn1_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => Conn1_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => Conn1_AWQOS(3 downto 0),
      S00_AXI_awready(0) => Conn1_AWREADY(0),
      S00_AXI_awregion(3 downto 0) => Conn1_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => Conn1_AWSIZE(2 downto 0),
      S00_AXI_awvalid(0) => Conn1_AWVALID(0),
      S00_AXI_bready(0) => Conn1_BREADY(0),
      S00_AXI_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => Conn1_BVALID(0),
      S00_AXI_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      S00_AXI_rlast(0) => Conn1_RLAST(0),
      S00_AXI_rready(0) => Conn1_RREADY(0),
      S00_AXI_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => Conn1_RVALID(0),
      S00_AXI_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      S00_AXI_wlast(0) => Conn1_WLAST(0),
      S00_AXI_wready(0) => Conn1_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => Conn1_WVALID(0)
    );
axis_data_fifo_0: component top_axis_data_fifo_0_0
     port map (
      axis_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_tdata(31 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(31 downto 0),
      m_axis_tkeep(3 downto 0) => axis_data_fifo_0_M_AXIS_TKEEP(3 downto 0),
      m_axis_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID,
      s_axis_aclk => s_axi_aclk_1,
      s_axis_aresetn => pcie_0_peripheral_aresetn(0),
      s_axis_tdata(31 downto 0) => axis_interconnect_M03_AXIS_TDATA(31 downto 0),
      s_axis_tkeep(3 downto 0) => axis_interconnect_M03_AXIS_TKEEP(3 downto 0),
      s_axis_tlast => axis_interconnect_M03_AXIS_TLAST,
      s_axis_tready => axis_interconnect_M03_AXIS_TREADY,
      s_axis_tvalid => axis_interconnect_M03_AXIS_TVALID
    );
axis_data_fifo_1: component top_axis_data_fifo_1_0
     port map (
      axis_data_count(31 downto 0) => NLW_axis_data_fifo_1_axis_data_count_UNCONNECTED(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_1_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_1_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_tdata(31 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(31 downto 0),
      m_axis_tkeep(3 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(3 downto 0),
      m_axis_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_1_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_1_M_AXIS_TVALID,
      s_axis_aclk => s_axi_aclk_1,
      s_axis_aresetn => pcie_0_peripheral_aresetn(0),
      s_axis_tdata(31 downto 0) => axis_interconnect_0_M04_AXIS_TDATA(31 downto 0),
      s_axis_tkeep(3 downto 0) => axis_interconnect_0_M04_AXIS_TKEEP(3 downto 0),
      s_axis_tlast => axis_interconnect_0_M04_AXIS_TLAST,
      s_axis_tready => axis_interconnect_0_M04_AXIS_TREADY,
      s_axis_tvalid => axis_interconnect_0_M04_AXIS_TVALID
    );
axis_interconnect_0: entity work.axis_interconnect_0_imp_16OY8LK
     port map (
      M00_AXIS_tdata(31 downto 0) => axis_interconnect_M00_AXIS_TDATA(31 downto 0),
      M00_AXIS_tlast => axis_interconnect_M00_AXIS_TLAST,
      M00_AXIS_tready => axis_interconnect_M00_AXIS_TREADY,
      M00_AXIS_tvalid => axis_interconnect_M00_AXIS_TVALID,
      M01_AXIS_tdata(31 downto 0) => axis_interconnect_M01_AXIS_TDATA(31 downto 0),
      M01_AXIS_tkeep(3 downto 0) => axis_interconnect_M01_AXIS_TKEEP(3 downto 0),
      M01_AXIS_tlast => axis_interconnect_M01_AXIS_TLAST,
      M01_AXIS_tready => axis_interconnect_M01_AXIS_TREADY,
      M01_AXIS_tvalid => axis_interconnect_M01_AXIS_TVALID,
      M02_AXIS_tdata(31 downto 0) => axis_interconnect_M02_AXIS_TDATA(31 downto 0),
      M02_AXIS_tlast => axis_interconnect_M02_AXIS_TLAST,
      M02_AXIS_tready => axis_interconnect_M02_AXIS_TREADY,
      M02_AXIS_tvalid => axis_interconnect_M02_AXIS_TVALID,
      M03_AXIS_tdata(31 downto 0) => axis_interconnect_M03_AXIS_TDATA(31 downto 0),
      M03_AXIS_tkeep(3 downto 0) => axis_interconnect_M03_AXIS_TKEEP(3 downto 0),
      M03_AXIS_tlast => axis_interconnect_M03_AXIS_TLAST,
      M03_AXIS_tready => axis_interconnect_M03_AXIS_TREADY,
      M03_AXIS_tvalid => axis_interconnect_M03_AXIS_TVALID,
      M04_AXIS_tdata(31 downto 0) => axis_interconnect_0_M04_AXIS_TDATA(31 downto 0),
      M04_AXIS_tkeep(3 downto 0) => axis_interconnect_0_M04_AXIS_TKEEP(3 downto 0),
      M04_AXIS_tlast => axis_interconnect_0_M04_AXIS_TLAST,
      M04_AXIS_tready => axis_interconnect_0_M04_AXIS_TREADY,
      M04_AXIS_tvalid => axis_interconnect_0_M04_AXIS_TVALID,
      M05_AXIS_tdata(31 downto 0) => axis_interconnect_0_M05_AXIS_TDATA(31 downto 0),
      M05_AXIS_tlast(0) => axis_interconnect_0_M05_AXIS_TLAST(0),
      M05_AXIS_tready => axis_interconnect_0_M05_AXIS_TREADY,
      M05_AXIS_tvalid => axis_interconnect_0_M05_AXIS_TVALID,
      M06_AXIS_tdata(31 downto 0) => S_AXIS_S2MM1_1_TDATA(31 downto 0),
      M06_AXIS_tkeep(3 downto 0) => S_AXIS_S2MM1_1_TKEEP(3 downto 0),
      M06_AXIS_tlast => S_AXIS_S2MM1_1_TLAST,
      M06_AXIS_tready => S_AXIS_S2MM1_1_TREADY,
      M06_AXIS_tvalid => S_AXIS_S2MM1_1_TVALID,
      S00_AXIS_ACLK => s_axi_aclk_1,
      S00_AXIS_ACLK1 => rtds_axis_0_clk100m,
      S00_AXIS_ARESETN(0) => rtds_axis_0_axi_resetn,
      S00_AXIS_tdata(31 downto 0) => rtds_axis_0_m_axis_TDATA(31 downto 0),
      S00_AXIS_tlast => rtds_axis_0_m_axis_TLAST,
      S00_AXIS_tready => rtds_axis_0_m_axis_TREADY,
      S00_AXIS_tvalid => rtds_axis_0_m_axis_TVALID,
      S01_AXIS_tdata(31 downto 0) => S01_AXIS_1_TDATA(31 downto 0),
      S01_AXIS_tkeep(3 downto 0) => S01_AXIS_1_TKEEP(3 downto 0),
      S01_AXIS_tlast => S01_AXIS_1_TLAST,
      S01_AXIS_tready => S01_AXIS_1_TREADY,
      S01_AXIS_tvalid => S01_AXIS_1_TVALID,
      S02_AXIS_tdata(31 downto 0) => S02_AXIS_1_TDATA(31 downto 0),
      S02_AXIS_tlast => S02_AXIS_1_TLAST,
      S02_AXIS_tready => S02_AXIS_1_TREADY,
      S02_AXIS_tvalid => S02_AXIS_1_TVALID,
      S03_AXIS_tdata(31 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(31 downto 0),
      S03_AXIS_tkeep(3 downto 0) => axis_data_fifo_0_M_AXIS_TKEEP(3 downto 0),
      S03_AXIS_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      S03_AXIS_tready => axis_data_fifo_0_M_AXIS_TREADY,
      S03_AXIS_tvalid => axis_data_fifo_0_M_AXIS_TVALID,
      S04_AXIS_tdata(31 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(31 downto 0),
      S04_AXIS_tkeep(3 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(3 downto 0),
      S04_AXIS_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      S04_AXIS_tready => axis_data_fifo_1_M_AXIS_TREADY,
      S04_AXIS_tvalid => axis_data_fifo_1_M_AXIS_TVALID,
      S05_AXIS_tdata(31 downto 0) => hls_dft_0_output_r_TDATA(31 downto 0),
      S05_AXIS_tlast(0) => hls_dft_0_output_r_TLAST(0),
      S05_AXIS_tready => hls_dft_0_output_r_TREADY,
      S05_AXIS_tvalid => hls_dft_0_output_r_TVALID,
      S06_AXIS_tdata(31 downto 0) => axi_dma_M_AXIS_MM2S1_TDATA(31 downto 0),
      S06_AXIS_tkeep(3 downto 0) => axi_dma_M_AXIS_MM2S1_TKEEP(3 downto 0),
      S06_AXIS_tlast => axi_dma_M_AXIS_MM2S1_TLAST,
      S06_AXIS_tready => axi_dma_M_AXIS_MM2S1_TREADY,
      S06_AXIS_tvalid => axi_dma_M_AXIS_MM2S1_TVALID,
      S_AXI_CTRL_ARESETN(0) => pcie_0_peripheral_aresetn(0),
      S_AXI_CTRL_araddr(31 downto 0) => S_AXI_CTRL_1_ARADDR(31 downto 0),
      S_AXI_CTRL_arready(0) => S_AXI_CTRL_1_ARREADY(0),
      S_AXI_CTRL_arvalid(0) => S_AXI_CTRL_1_ARVALID(0),
      S_AXI_CTRL_awaddr(31 downto 0) => S_AXI_CTRL_1_AWADDR(31 downto 0),
      S_AXI_CTRL_awready(0) => S_AXI_CTRL_1_AWREADY(0),
      S_AXI_CTRL_awvalid(0) => S_AXI_CTRL_1_AWVALID(0),
      S_AXI_CTRL_bready(0) => S_AXI_CTRL_1_BREADY(0),
      S_AXI_CTRL_bresp(1 downto 0) => S_AXI_CTRL_1_BRESP(1 downto 0),
      S_AXI_CTRL_bvalid(0) => S_AXI_CTRL_1_BVALID(0),
      S_AXI_CTRL_rdata(31 downto 0) => S_AXI_CTRL_1_RDATA(31 downto 0),
      S_AXI_CTRL_rready(0) => S_AXI_CTRL_1_RREADY(0),
      S_AXI_CTRL_rresp(1 downto 0) => S_AXI_CTRL_1_RRESP(1 downto 0),
      S_AXI_CTRL_rvalid(0) => S_AXI_CTRL_1_RVALID(0),
      S_AXI_CTRL_wdata(31 downto 0) => S_AXI_CTRL_1_WDATA(31 downto 0),
      S_AXI_CTRL_wready(0) => S_AXI_CTRL_1_WREADY(0),
      S_AXI_CTRL_wvalid(0) => S_AXI_CTRL_1_WVALID(0)
    );
hls_dft_0: component top_hls_dft_0_1
     port map (
      ap_clk => s_axi_aclk_1,
      ap_rst_n => pcie_0_peripheral_aresetn(0),
      input_r_TDATA(31 downto 0) => axis_interconnect_0_M05_AXIS_TDATA(31 downto 0),
      input_r_TLAST(0) => axis_interconnect_0_M05_AXIS_TLAST(0),
      input_r_TREADY => axis_interconnect_0_M05_AXIS_TREADY,
      input_r_TVALID => axis_interconnect_0_M05_AXIS_TVALID,
      interrupt => hls_dft_0_interrupt,
      output_r_TDATA(31 downto 0) => hls_dft_0_output_r_TDATA(31 downto 0),
      output_r_TLAST(0) => hls_dft_0_output_r_TLAST(0),
      output_r_TREADY => hls_dft_0_output_r_TREADY,
      output_r_TVALID => hls_dft_0_output_r_TVALID,
      s_axi_ctrl_ARADDR(7 downto 0) => axi_interconnect_mm_0_M01_AXI_ARADDR(7 downto 0),
      s_axi_ctrl_ARREADY => axi_interconnect_mm_0_M01_AXI_ARREADY,
      s_axi_ctrl_ARVALID => axi_interconnect_mm_0_M01_AXI_ARVALID,
      s_axi_ctrl_AWADDR(7 downto 0) => axi_interconnect_mm_0_M01_AXI_AWADDR(7 downto 0),
      s_axi_ctrl_AWREADY => axi_interconnect_mm_0_M01_AXI_AWREADY,
      s_axi_ctrl_AWVALID => axi_interconnect_mm_0_M01_AXI_AWVALID,
      s_axi_ctrl_BREADY => axi_interconnect_mm_0_M01_AXI_BREADY,
      s_axi_ctrl_BRESP(1 downto 0) => axi_interconnect_mm_0_M01_AXI_BRESP(1 downto 0),
      s_axi_ctrl_BVALID => axi_interconnect_mm_0_M01_AXI_BVALID,
      s_axi_ctrl_RDATA(31 downto 0) => axi_interconnect_mm_0_M01_AXI_RDATA(31 downto 0),
      s_axi_ctrl_RREADY => axi_interconnect_mm_0_M01_AXI_RREADY,
      s_axi_ctrl_RRESP(1 downto 0) => axi_interconnect_mm_0_M01_AXI_RRESP(1 downto 0),
      s_axi_ctrl_RVALID => axi_interconnect_mm_0_M01_AXI_RVALID,
      s_axi_ctrl_WDATA(31 downto 0) => axi_interconnect_mm_0_M01_AXI_WDATA(31 downto 0),
      s_axi_ctrl_WREADY => axi_interconnect_mm_0_M01_AXI_WREADY,
      s_axi_ctrl_WSTRB(3 downto 0) => axi_interconnect_mm_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_ctrl_WVALID => axi_interconnect_mm_0_M01_AXI_WVALID
    );
rtds_axis_0: component top_rtds_axis_0_0
     port map (
      CLKBUF_Q0_N => Conn3_CLK_N,
      CLKBUF_Q0_P => Conn3_CLK_P,
      SFP_LOS => Conn2_RX_LOS,
      SFP_RX_N => Conn2_RXN,
      SFP_RX_P => Conn2_RXP,
      SFP_TX_DISABLE => Conn2_TX_DISABLE,
      SFP_TX_N => Conn2_TXN,
      SFP_TX_P => Conn2_TXP,
      SYS_CLK => SYS_CLK_1(0),
      aresetn => pcie_0_peripheral_aresetn(0),
      axi_resetn => rtds_axis_0_axi_resetn,
      clk100m => rtds_axis_0_clk100m,
      irq_case => rtds_axis_0_irq_case,
      irq_overflow => rtds_axis_0_irq_overflow,
      irq_ts => rtds_axis_0_irq_ts,
      m_axis_tdata(31 downto 0) => rtds_axis_0_m_axis_TDATA(31 downto 0),
      m_axis_tlast => rtds_axis_0_m_axis_TLAST,
      m_axis_tready => rtds_axis_0_m_axis_TREADY,
      m_axis_tvalid => rtds_axis_0_m_axis_TVALID,
      s_axi_ctl_araddr(5 downto 0) => axi_interconnect_mm_M04_AXI_ARADDR(5 downto 0),
      s_axi_ctl_arprot(2 downto 0) => axi_interconnect_mm_M04_AXI_ARPROT(2 downto 0),
      s_axi_ctl_arready => axi_interconnect_mm_M04_AXI_ARREADY,
      s_axi_ctl_arvalid => axi_interconnect_mm_M04_AXI_ARVALID,
      s_axi_ctl_awaddr(5 downto 0) => axi_interconnect_mm_M04_AXI_AWADDR(5 downto 0),
      s_axi_ctl_awprot(2 downto 0) => axi_interconnect_mm_M04_AXI_AWPROT(2 downto 0),
      s_axi_ctl_awready => axi_interconnect_mm_M04_AXI_AWREADY,
      s_axi_ctl_awvalid => axi_interconnect_mm_M04_AXI_AWVALID,
      s_axi_ctl_bready => axi_interconnect_mm_M04_AXI_BREADY,
      s_axi_ctl_bvalid => axi_interconnect_mm_M04_AXI_BVALID,
      s_axi_ctl_rdata(31 downto 0) => axi_interconnect_mm_M04_AXI_RDATA(31 downto 0),
      s_axi_ctl_rready => axi_interconnect_mm_M04_AXI_RREADY,
      s_axi_ctl_rvalid => axi_interconnect_mm_M04_AXI_RVALID,
      s_axi_ctl_wdata(31 downto 0) => axi_interconnect_mm_M04_AXI_WDATA(31 downto 0),
      s_axi_ctl_wready => axi_interconnect_mm_M04_AXI_WREADY,
      s_axi_ctl_wstrb(3 downto 0) => axi_interconnect_mm_M04_AXI_WSTRB(3 downto 0),
      s_axi_ctl_wvalid => axi_interconnect_mm_M04_AXI_WVALID,
      s_axis_tdata(31 downto 0) => axis_interconnect_M00_AXIS_TDATA(31 downto 0),
      s_axis_tlast => axis_interconnect_M00_AXIS_TLAST,
      s_axis_tready => axis_interconnect_M00_AXIS_TREADY,
      s_axis_tvalid => axis_interconnect_M00_AXIS_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    clkbuf_clk_n : in STD_LOGIC;
    clkbuf_clk_p : in STD_LOGIC;
    pcie_mgt_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_ref_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_ref_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    perstn : in STD_LOGIC;
    sfp_rx_los : in STD_LOGIC;
    sfp_rxn : in STD_LOGIC;
    sfp_rxp : in STD_LOGIC;
    sfp_tx_disable : out STD_LOGIC;
    sfp_txn : out STD_LOGIC;
    sfp_txp : out STD_LOGIC;
    sys_clk_clk_n : in STD_LOGIC;
    sys_clk_clk_p : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top : entity is "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=87,numReposBlks=38,numNonXlnxBlks=3,numHierBlks=49,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of top : entity is "top.hwdef";
end top;

architecture STRUCTURE of top is
  component top_concat_irq_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component top_concat_irq_0_0;
  component top_util_ds_buf_0_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_util_ds_buf_0_0;
  signal clkbuf_1_CLK_N : STD_LOGIC;
  signal clkbuf_1_CLK_P : STD_LOGIC;
  signal hier_0_M_AXI_DMA_PCIE_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_ARADDR : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_ARBURST : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_ARID : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_ARLEN : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_ARREADY : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_ARREADY : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_ARREGION : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_ARSIZE : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_ARVALID : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_ARVALID : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_AWADDR : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_AWBURST : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_AWID : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_AWLEN : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_AWREADY : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_AWREADY : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_AWREGION : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_AWSIZE : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_AWVALID : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_AWVALID : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_BID : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_BREADY : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_BREADY : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_BRESP : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_BVALID : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_BVALID : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_RDATA : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_RID : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_RLAST : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_RLAST : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_RREADY : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_RREADY : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_RRESP : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_RVALID : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_RVALID : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_WDATA : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_WLAST : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_WLAST : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_WREADY : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_WREADY : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_WSTRB : signal is std.standard.true;
  signal hier_0_M_AXI_DMA_PCIE_WVALID : STD_LOGIC;
  attribute MARK_DEBUG of hier_0_M_AXI_DMA_PCIE_WVALID : signal is std.standard.true;
  signal hier_0_interrupt1 : STD_LOGIC;
  signal hier_0_irq_case : STD_LOGIC;
  signal hier_0_irq_dma_mm2s : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_0_irq_dma_s2mm : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hier_0_irq_fifo : STD_LOGIC;
  signal hier_0_irq_overflow : STD_LOGIC;
  signal hier_0_irq_ts : STD_LOGIC;
  signal hier_0_sfp_RXN : STD_LOGIC;
  signal hier_0_sfp_RXP : STD_LOGIC;
  signal hier_0_sfp_RX_LOS : STD_LOGIC;
  signal hier_0_sfp_TXN : STD_LOGIC;
  signal hier_0_sfp_TXP : STD_LOGIC;
  signal hier_0_sfp_TX_DISABLE : STD_LOGIC;
  signal mm_interconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_0_M04_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_0_M04_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_0_M04_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mm_interconnect_0_M04_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mm_interconnect_0_M04_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mm_interconnect_0_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_0_M04_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_0_M04_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_0_M04_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mm_interconnect_0_M04_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mm_interconnect_0_M04_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mm_interconnect_0_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_0_M04_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_0_M04_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_0_M04_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_0_M04_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_0_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M00_AXI_ARREADY : STD_LOGIC;
  signal mm_interconnect_M00_AXI_ARVALID : STD_LOGIC;
  signal mm_interconnect_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M00_AXI_AWREADY : STD_LOGIC;
  signal mm_interconnect_M00_AXI_AWVALID : STD_LOGIC;
  signal mm_interconnect_M00_AXI_BREADY : STD_LOGIC;
  signal mm_interconnect_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_M00_AXI_BVALID : STD_LOGIC;
  signal mm_interconnect_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M00_AXI_RREADY : STD_LOGIC;
  signal mm_interconnect_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_M00_AXI_RVALID : STD_LOGIC;
  signal mm_interconnect_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M00_AXI_WREADY : STD_LOGIC;
  signal mm_interconnect_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_M00_AXI_WVALID : STD_LOGIC;
  signal mm_interconnect_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M03_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_M03_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_M03_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mm_interconnect_M03_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mm_interconnect_M03_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_M03_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_M03_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mm_interconnect_M03_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M03_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_M03_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_M03_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mm_interconnect_M03_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mm_interconnect_M03_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_M03_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_M03_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mm_interconnect_M03_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_M03_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M03_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_M03_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M03_AXI_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_M03_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M04_AXI1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M04_AXI1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mm_interconnect_M04_AXI1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M04_AXI1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M04_AXI1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M04_AXI1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mm_interconnect_M04_AXI1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M04_AXI1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M04_AXI1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M04_AXI1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_M04_AXI1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M04_AXI1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M04_AXI1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M04_AXI1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mm_interconnect_M04_AXI1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M04_AXI1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mm_interconnect_M04_AXI1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mm_interconnect_M04_AXI1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mm_interconnect_M04_AXI1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal msi_irq_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pcie_0_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pcie_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pcie_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_ARADDR : signal is std.standard.true;
  signal pcie_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_ARBURST : signal is std.standard.true;
  signal pcie_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_ARCACHE : signal is std.standard.true;
  signal pcie_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_ARLEN : signal is std.standard.true;
  signal pcie_M_AXI_ARLOCK : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_ARLOCK : signal is std.standard.true;
  signal pcie_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_ARPROT : signal is std.standard.true;
  signal pcie_M_AXI_ARREADY : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_ARREADY : signal is std.standard.true;
  signal pcie_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_ARSIZE : signal is std.standard.true;
  signal pcie_M_AXI_ARVALID : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_ARVALID : signal is std.standard.true;
  signal pcie_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_AWADDR : signal is std.standard.true;
  signal pcie_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_AWBURST : signal is std.standard.true;
  signal pcie_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_AWCACHE : signal is std.standard.true;
  signal pcie_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_AWLEN : signal is std.standard.true;
  signal pcie_M_AXI_AWLOCK : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_AWLOCK : signal is std.standard.true;
  signal pcie_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_AWPROT : signal is std.standard.true;
  signal pcie_M_AXI_AWREADY : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_AWREADY : signal is std.standard.true;
  signal pcie_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_AWSIZE : signal is std.standard.true;
  signal pcie_M_AXI_AWVALID : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_AWVALID : signal is std.standard.true;
  signal pcie_M_AXI_BREADY : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_BREADY : signal is std.standard.true;
  signal pcie_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_BRESP : signal is std.standard.true;
  signal pcie_M_AXI_BVALID : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_BVALID : signal is std.standard.true;
  signal pcie_M_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_RDATA : signal is std.standard.true;
  signal pcie_M_AXI_RLAST : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_RLAST : signal is std.standard.true;
  signal pcie_M_AXI_RREADY : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_RREADY : signal is std.standard.true;
  signal pcie_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_RRESP : signal is std.standard.true;
  signal pcie_M_AXI_RVALID : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_RVALID : signal is std.standard.true;
  signal pcie_M_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_WDATA : signal is std.standard.true;
  signal pcie_M_AXI_WLAST : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_WLAST : signal is std.standard.true;
  signal pcie_M_AXI_WREADY : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_WREADY : signal is std.standard.true;
  signal pcie_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of pcie_M_AXI_WSTRB : signal is std.standard.true;
  signal pcie_M_AXI_WVALID : STD_LOGIC;
  attribute MARK_DEBUG of pcie_M_AXI_WVALID : signal is std.standard.true;
  signal pcie_PCIE_MGT_rxn : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcie_PCIE_MGT_rxp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcie_PCIE_MGT_txn : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcie_PCIE_MGT_txp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcie_ref_1_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pcie_ref_1_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal perstn_1 : STD_LOGIC;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal sys_diff_clock_1_CLK_N : STD_LOGIC;
  signal sys_diff_clock_1_CLK_P : STD_LOGIC;
  signal timer_generateout0 : STD_LOGIC;
  signal util_ds_buf_0_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_mm_interconnect_0_M01_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_mm_interconnect_0_M01_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_timer_0_irq_timer_1_UNCONNECTED : STD_LOGIC;
begin
  clkbuf_1_CLK_N <= clkbuf_clk_n;
  clkbuf_1_CLK_P <= clkbuf_clk_p;
  hier_0_sfp_RXN <= sfp_rxn;
  hier_0_sfp_RXP <= sfp_rxp;
  hier_0_sfp_RX_LOS <= sfp_rx_los;
  pcie_PCIE_MGT_rxn(3 downto 0) <= pcie_mgt_rxn(3 downto 0);
  pcie_PCIE_MGT_rxp(3 downto 0) <= pcie_mgt_rxp(3 downto 0);
  pcie_mgt_txn(3 downto 0) <= pcie_PCIE_MGT_txn(3 downto 0);
  pcie_mgt_txp(3 downto 0) <= pcie_PCIE_MGT_txp(3 downto 0);
  pcie_ref_1_CLK_N(0) <= pcie_ref_clk_n(0);
  pcie_ref_1_CLK_P(0) <= pcie_ref_clk_p(0);
  perstn_1 <= perstn;
  sfp_tx_disable <= hier_0_sfp_TX_DISABLE;
  sfp_txn <= hier_0_sfp_TXN;
  sfp_txp <= hier_0_sfp_TXP;
  sys_diff_clock_1_CLK_N <= sys_clk_clk_n;
  sys_diff_clock_1_CLK_P <= sys_clk_clk_p;
concat_irq_0: component top_concat_irq_0_0
     port map (
      In0(0) => timer_generateout0,
      In1(0) => hier_0_interrupt1,
      In2(0) => hier_0_irq_fifo,
      In3(0) => hier_0_irq_dma_mm2s(0),
      In4(0) => hier_0_irq_dma_s2mm(0),
      In5(0) => hier_0_irq_ts,
      In6(0) => hier_0_irq_overflow,
      In7(0) => hier_0_irq_case,
      dout(7 downto 0) => msi_irq_1(7 downto 0)
    );
hier_0: entity work.hier_0_imp_I4NTNW
     port map (
      M_AXI_DMA_PCIE_araddr(31 downto 0) => hier_0_M_AXI_DMA_PCIE_ARADDR(31 downto 0),
      M_AXI_DMA_PCIE_arburst(1 downto 0) => hier_0_M_AXI_DMA_PCIE_ARBURST(1 downto 0),
      M_AXI_DMA_PCIE_arid(2 downto 0) => hier_0_M_AXI_DMA_PCIE_ARID(2 downto 0),
      M_AXI_DMA_PCIE_arlen(7 downto 0) => hier_0_M_AXI_DMA_PCIE_ARLEN(7 downto 0),
      M_AXI_DMA_PCIE_arready => hier_0_M_AXI_DMA_PCIE_ARREADY,
      M_AXI_DMA_PCIE_arregion(3 downto 0) => hier_0_M_AXI_DMA_PCIE_ARREGION(3 downto 0),
      M_AXI_DMA_PCIE_arsize(2 downto 0) => hier_0_M_AXI_DMA_PCIE_ARSIZE(2 downto 0),
      M_AXI_DMA_PCIE_arvalid => hier_0_M_AXI_DMA_PCIE_ARVALID,
      M_AXI_DMA_PCIE_awaddr(31 downto 0) => hier_0_M_AXI_DMA_PCIE_AWADDR(31 downto 0),
      M_AXI_DMA_PCIE_awburst(1 downto 0) => hier_0_M_AXI_DMA_PCIE_AWBURST(1 downto 0),
      M_AXI_DMA_PCIE_awid(2 downto 0) => hier_0_M_AXI_DMA_PCIE_AWID(2 downto 0),
      M_AXI_DMA_PCIE_awlen(7 downto 0) => hier_0_M_AXI_DMA_PCIE_AWLEN(7 downto 0),
      M_AXI_DMA_PCIE_awready => hier_0_M_AXI_DMA_PCIE_AWREADY,
      M_AXI_DMA_PCIE_awregion(3 downto 0) => hier_0_M_AXI_DMA_PCIE_AWREGION(3 downto 0),
      M_AXI_DMA_PCIE_awsize(2 downto 0) => hier_0_M_AXI_DMA_PCIE_AWSIZE(2 downto 0),
      M_AXI_DMA_PCIE_awvalid => hier_0_M_AXI_DMA_PCIE_AWVALID,
      M_AXI_DMA_PCIE_bid(2 downto 0) => hier_0_M_AXI_DMA_PCIE_BID(2 downto 0),
      M_AXI_DMA_PCIE_bready => hier_0_M_AXI_DMA_PCIE_BREADY,
      M_AXI_DMA_PCIE_bresp(1 downto 0) => hier_0_M_AXI_DMA_PCIE_BRESP(1 downto 0),
      M_AXI_DMA_PCIE_bvalid => hier_0_M_AXI_DMA_PCIE_BVALID,
      M_AXI_DMA_PCIE_rdata(127 downto 0) => hier_0_M_AXI_DMA_PCIE_RDATA(127 downto 0),
      M_AXI_DMA_PCIE_rid(2 downto 0) => hier_0_M_AXI_DMA_PCIE_RID(2 downto 0),
      M_AXI_DMA_PCIE_rlast => hier_0_M_AXI_DMA_PCIE_RLAST,
      M_AXI_DMA_PCIE_rready => hier_0_M_AXI_DMA_PCIE_RREADY,
      M_AXI_DMA_PCIE_rresp(1 downto 0) => hier_0_M_AXI_DMA_PCIE_RRESP(1 downto 0),
      M_AXI_DMA_PCIE_rvalid => hier_0_M_AXI_DMA_PCIE_RVALID,
      M_AXI_DMA_PCIE_wdata(127 downto 0) => hier_0_M_AXI_DMA_PCIE_WDATA(127 downto 0),
      M_AXI_DMA_PCIE_wlast => hier_0_M_AXI_DMA_PCIE_WLAST,
      M_AXI_DMA_PCIE_wready => hier_0_M_AXI_DMA_PCIE_WREADY,
      M_AXI_DMA_PCIE_wstrb(15 downto 0) => hier_0_M_AXI_DMA_PCIE_WSTRB(15 downto 0),
      M_AXI_DMA_PCIE_wvalid => hier_0_M_AXI_DMA_PCIE_WVALID,
      SYS_CLK(0) => util_ds_buf_0_IBUF_OUT(0),
      S_AXI_FULL_araddr(31 downto 0) => mm_interconnect_0_M04_AXI_ARADDR(31 downto 0),
      S_AXI_FULL_arburst(1 downto 0) => mm_interconnect_0_M04_AXI_ARBURST(1 downto 0),
      S_AXI_FULL_arcache(3 downto 0) => mm_interconnect_0_M04_AXI_ARCACHE(3 downto 0),
      S_AXI_FULL_arlen(7 downto 0) => mm_interconnect_0_M04_AXI_ARLEN(7 downto 0),
      S_AXI_FULL_arlock(0) => mm_interconnect_0_M04_AXI_ARLOCK(0),
      S_AXI_FULL_arprot(2 downto 0) => mm_interconnect_0_M04_AXI_ARPROT(2 downto 0),
      S_AXI_FULL_arready(0) => mm_interconnect_0_M04_AXI_ARREADY(0),
      S_AXI_FULL_arsize(2 downto 0) => mm_interconnect_0_M04_AXI_ARSIZE(2 downto 0),
      S_AXI_FULL_arvalid(0) => mm_interconnect_0_M04_AXI_ARVALID(0),
      S_AXI_FULL_awaddr(31 downto 0) => mm_interconnect_0_M04_AXI_AWADDR(31 downto 0),
      S_AXI_FULL_awburst(1 downto 0) => mm_interconnect_0_M04_AXI_AWBURST(1 downto 0),
      S_AXI_FULL_awcache(3 downto 0) => mm_interconnect_0_M04_AXI_AWCACHE(3 downto 0),
      S_AXI_FULL_awlen(7 downto 0) => mm_interconnect_0_M04_AXI_AWLEN(7 downto 0),
      S_AXI_FULL_awlock(0) => mm_interconnect_0_M04_AXI_AWLOCK(0),
      S_AXI_FULL_awprot(2 downto 0) => mm_interconnect_0_M04_AXI_AWPROT(2 downto 0),
      S_AXI_FULL_awready(0) => mm_interconnect_0_M04_AXI_AWREADY(0),
      S_AXI_FULL_awsize(2 downto 0) => mm_interconnect_0_M04_AXI_AWSIZE(2 downto 0),
      S_AXI_FULL_awvalid(0) => mm_interconnect_0_M04_AXI_AWVALID(0),
      S_AXI_FULL_bready(0) => mm_interconnect_0_M04_AXI_BREADY(0),
      S_AXI_FULL_bresp(1 downto 0) => mm_interconnect_0_M04_AXI_BRESP(1 downto 0),
      S_AXI_FULL_bvalid(0) => mm_interconnect_0_M04_AXI_BVALID(0),
      S_AXI_FULL_rdata(31 downto 0) => mm_interconnect_0_M04_AXI_RDATA(31 downto 0),
      S_AXI_FULL_rlast(0) => mm_interconnect_0_M04_AXI_RLAST(0),
      S_AXI_FULL_rready(0) => mm_interconnect_0_M04_AXI_RREADY(0),
      S_AXI_FULL_rresp(1 downto 0) => mm_interconnect_0_M04_AXI_RRESP(1 downto 0),
      S_AXI_FULL_rvalid(0) => mm_interconnect_0_M04_AXI_RVALID(0),
      S_AXI_FULL_wdata(31 downto 0) => mm_interconnect_0_M04_AXI_WDATA(31 downto 0),
      S_AXI_FULL_wlast(0) => mm_interconnect_0_M04_AXI_WLAST(0),
      S_AXI_FULL_wready(0) => mm_interconnect_0_M04_AXI_WREADY(0),
      S_AXI_FULL_wstrb(3 downto 0) => mm_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      S_AXI_FULL_wvalid(0) => mm_interconnect_0_M04_AXI_WVALID(0),
      S_AXI_LITE_araddr(31 downto 0) => mm_interconnect_M03_AXI_ARADDR(31 downto 0),
      S_AXI_LITE_arburst(1 downto 0) => mm_interconnect_M03_AXI_ARBURST(1 downto 0),
      S_AXI_LITE_arcache(3 downto 0) => mm_interconnect_M03_AXI_ARCACHE(3 downto 0),
      S_AXI_LITE_arlen(7 downto 0) => mm_interconnect_M03_AXI_ARLEN(7 downto 0),
      S_AXI_LITE_arlock(0) => mm_interconnect_M03_AXI_ARLOCK(0),
      S_AXI_LITE_arprot(2 downto 0) => mm_interconnect_M03_AXI_ARPROT(2 downto 0),
      S_AXI_LITE_arqos(3 downto 0) => mm_interconnect_M03_AXI_ARQOS(3 downto 0),
      S_AXI_LITE_arready(0) => mm_interconnect_M03_AXI_ARREADY(0),
      S_AXI_LITE_arregion(3 downto 0) => mm_interconnect_M03_AXI_ARREGION(3 downto 0),
      S_AXI_LITE_arsize(2 downto 0) => mm_interconnect_M03_AXI_ARSIZE(2 downto 0),
      S_AXI_LITE_arvalid(0) => mm_interconnect_M03_AXI_ARVALID(0),
      S_AXI_LITE_awaddr(31 downto 0) => mm_interconnect_M03_AXI_AWADDR(31 downto 0),
      S_AXI_LITE_awburst(1 downto 0) => mm_interconnect_M03_AXI_AWBURST(1 downto 0),
      S_AXI_LITE_awcache(3 downto 0) => mm_interconnect_M03_AXI_AWCACHE(3 downto 0),
      S_AXI_LITE_awlen(7 downto 0) => mm_interconnect_M03_AXI_AWLEN(7 downto 0),
      S_AXI_LITE_awlock(0) => mm_interconnect_M03_AXI_AWLOCK(0),
      S_AXI_LITE_awprot(2 downto 0) => mm_interconnect_M03_AXI_AWPROT(2 downto 0),
      S_AXI_LITE_awqos(3 downto 0) => mm_interconnect_M03_AXI_AWQOS(3 downto 0),
      S_AXI_LITE_awready(0) => mm_interconnect_M03_AXI_AWREADY(0),
      S_AXI_LITE_awregion(3 downto 0) => mm_interconnect_M03_AXI_AWREGION(3 downto 0),
      S_AXI_LITE_awsize(2 downto 0) => mm_interconnect_M03_AXI_AWSIZE(2 downto 0),
      S_AXI_LITE_awvalid(0) => mm_interconnect_M03_AXI_AWVALID(0),
      S_AXI_LITE_bready(0) => mm_interconnect_M03_AXI_BREADY(0),
      S_AXI_LITE_bresp(1 downto 0) => mm_interconnect_M03_AXI_BRESP(1 downto 0),
      S_AXI_LITE_bvalid(0) => mm_interconnect_M03_AXI_BVALID(0),
      S_AXI_LITE_rdata(31 downto 0) => mm_interconnect_M03_AXI_RDATA(31 downto 0),
      S_AXI_LITE_rlast(0) => mm_interconnect_M03_AXI_RLAST(0),
      S_AXI_LITE_rready(0) => mm_interconnect_M03_AXI_RREADY(0),
      S_AXI_LITE_rresp(1 downto 0) => mm_interconnect_M03_AXI_RRESP(1 downto 0),
      S_AXI_LITE_rvalid(0) => mm_interconnect_M03_AXI_RVALID(0),
      S_AXI_LITE_wdata(31 downto 0) => mm_interconnect_M03_AXI_WDATA(31 downto 0),
      S_AXI_LITE_wlast(0) => mm_interconnect_M03_AXI_WLAST(0),
      S_AXI_LITE_wready(0) => mm_interconnect_M03_AXI_WREADY(0),
      S_AXI_LITE_wstrb(3 downto 0) => mm_interconnect_M03_AXI_WSTRB(3 downto 0),
      S_AXI_LITE_wvalid(0) => mm_interconnect_M03_AXI_WVALID(0),
      aresetn(0) => pcie_0_peripheral_aresetn(0),
      clk => s_axi_aclk_1,
      clkbuf_clk_n => clkbuf_1_CLK_N,
      clkbuf_clk_p => clkbuf_1_CLK_P,
      irq_dma_mm2s(0) => hier_0_irq_dma_mm2s(0),
      irq_dma_s2mm(0) => hier_0_irq_dma_s2mm(0),
      irq_fifo => hier_0_irq_fifo,
      irq_hls_dft => hier_0_interrupt1,
      irq_rtds_case => hier_0_irq_case,
      irq_rtds_overflow => hier_0_irq_overflow,
      irq_rtds_ts => hier_0_irq_ts,
      sfp_rx_los => hier_0_sfp_RX_LOS,
      sfp_rxn => hier_0_sfp_RXN,
      sfp_rxp => hier_0_sfp_RXP,
      sfp_tx_disable => hier_0_sfp_TX_DISABLE,
      sfp_txn => hier_0_sfp_TXN,
      sfp_txp => hier_0_sfp_TXP
    );
mm_interconnect_0: entity work.mm_interconnect_0_imp_1ELWD51
     port map (
      M00_AXI_araddr(31 downto 0) => mm_interconnect_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => mm_interconnect_M00_AXI_ARREADY,
      M00_AXI_arvalid => mm_interconnect_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => mm_interconnect_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => mm_interconnect_M00_AXI_AWREADY,
      M00_AXI_awvalid => mm_interconnect_M00_AXI_AWVALID,
      M00_AXI_bready => mm_interconnect_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => mm_interconnect_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => mm_interconnect_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => mm_interconnect_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => mm_interconnect_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => mm_interconnect_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => mm_interconnect_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => mm_interconnect_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => mm_interconnect_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => mm_interconnect_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => mm_interconnect_M00_AXI_WVALID,
      M01_ARESETN(0) => pcie_0_interconnect_aresetn(0),
      M01_AXI_araddr => NLW_mm_interconnect_0_M01_AXI_araddr_UNCONNECTED,
      M01_AXI_arburst => NLW_mm_interconnect_0_M01_AXI_arburst_UNCONNECTED,
      M01_AXI_arcache => NLW_mm_interconnect_0_M01_AXI_arcache_UNCONNECTED,
      M01_AXI_arlen => NLW_mm_interconnect_0_M01_AXI_arlen_UNCONNECTED,
      M01_AXI_arlock => NLW_mm_interconnect_0_M01_AXI_arlock_UNCONNECTED,
      M01_AXI_arprot => NLW_mm_interconnect_0_M01_AXI_arprot_UNCONNECTED,
      M01_AXI_arqos => NLW_mm_interconnect_0_M01_AXI_arqos_UNCONNECTED,
      M01_AXI_arready => '0',
      M01_AXI_arregion => NLW_mm_interconnect_0_M01_AXI_arregion_UNCONNECTED,
      M01_AXI_arsize => NLW_mm_interconnect_0_M01_AXI_arsize_UNCONNECTED,
      M01_AXI_arvalid => NLW_mm_interconnect_0_M01_AXI_arvalid_UNCONNECTED,
      M01_AXI_awaddr => NLW_mm_interconnect_0_M01_AXI_awaddr_UNCONNECTED,
      M01_AXI_awburst => NLW_mm_interconnect_0_M01_AXI_awburst_UNCONNECTED,
      M01_AXI_awcache => NLW_mm_interconnect_0_M01_AXI_awcache_UNCONNECTED,
      M01_AXI_awlen => NLW_mm_interconnect_0_M01_AXI_awlen_UNCONNECTED,
      M01_AXI_awlock => NLW_mm_interconnect_0_M01_AXI_awlock_UNCONNECTED,
      M01_AXI_awprot => NLW_mm_interconnect_0_M01_AXI_awprot_UNCONNECTED,
      M01_AXI_awqos => NLW_mm_interconnect_0_M01_AXI_awqos_UNCONNECTED,
      M01_AXI_awready => '0',
      M01_AXI_awregion => NLW_mm_interconnect_0_M01_AXI_awregion_UNCONNECTED,
      M01_AXI_awsize => NLW_mm_interconnect_0_M01_AXI_awsize_UNCONNECTED,
      M01_AXI_awvalid => NLW_mm_interconnect_0_M01_AXI_awvalid_UNCONNECTED,
      M01_AXI_bready => NLW_mm_interconnect_0_M01_AXI_bready_UNCONNECTED,
      M01_AXI_bresp => '0',
      M01_AXI_bvalid => '0',
      M01_AXI_rdata => '0',
      M01_AXI_rlast => '0',
      M01_AXI_rready => NLW_mm_interconnect_0_M01_AXI_rready_UNCONNECTED,
      M01_AXI_rresp => '0',
      M01_AXI_rvalid => '0',
      M01_AXI_wdata => NLW_mm_interconnect_0_M01_AXI_wdata_UNCONNECTED,
      M01_AXI_wlast => NLW_mm_interconnect_0_M01_AXI_wlast_UNCONNECTED,
      M01_AXI_wready => '0',
      M01_AXI_wstrb => NLW_mm_interconnect_0_M01_AXI_wstrb_UNCONNECTED,
      M01_AXI_wvalid => NLW_mm_interconnect_0_M01_AXI_wvalid_UNCONNECTED,
      M02_AXI_araddr(31 downto 0) => mm_interconnect_M03_AXI_ARADDR(31 downto 0),
      M02_AXI_arburst(1 downto 0) => mm_interconnect_M03_AXI_ARBURST(1 downto 0),
      M02_AXI_arcache(3 downto 0) => mm_interconnect_M03_AXI_ARCACHE(3 downto 0),
      M02_AXI_arlen(7 downto 0) => mm_interconnect_M03_AXI_ARLEN(7 downto 0),
      M02_AXI_arlock(0) => mm_interconnect_M03_AXI_ARLOCK(0),
      M02_AXI_arprot(2 downto 0) => mm_interconnect_M03_AXI_ARPROT(2 downto 0),
      M02_AXI_arqos(3 downto 0) => mm_interconnect_M03_AXI_ARQOS(3 downto 0),
      M02_AXI_arready(0) => mm_interconnect_M03_AXI_ARREADY(0),
      M02_AXI_arregion(3 downto 0) => mm_interconnect_M03_AXI_ARREGION(3 downto 0),
      M02_AXI_arsize(2 downto 0) => mm_interconnect_M03_AXI_ARSIZE(2 downto 0),
      M02_AXI_arvalid(0) => mm_interconnect_M03_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => mm_interconnect_M03_AXI_AWADDR(31 downto 0),
      M02_AXI_awburst(1 downto 0) => mm_interconnect_M03_AXI_AWBURST(1 downto 0),
      M02_AXI_awcache(3 downto 0) => mm_interconnect_M03_AXI_AWCACHE(3 downto 0),
      M02_AXI_awlen(7 downto 0) => mm_interconnect_M03_AXI_AWLEN(7 downto 0),
      M02_AXI_awlock(0) => mm_interconnect_M03_AXI_AWLOCK(0),
      M02_AXI_awprot(2 downto 0) => mm_interconnect_M03_AXI_AWPROT(2 downto 0),
      M02_AXI_awqos(3 downto 0) => mm_interconnect_M03_AXI_AWQOS(3 downto 0),
      M02_AXI_awready(0) => mm_interconnect_M03_AXI_AWREADY(0),
      M02_AXI_awregion(3 downto 0) => mm_interconnect_M03_AXI_AWREGION(3 downto 0),
      M02_AXI_awsize(2 downto 0) => mm_interconnect_M03_AXI_AWSIZE(2 downto 0),
      M02_AXI_awvalid(0) => mm_interconnect_M03_AXI_AWVALID(0),
      M02_AXI_bready(0) => mm_interconnect_M03_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => mm_interconnect_M03_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => mm_interconnect_M03_AXI_BVALID(0),
      M02_AXI_rdata(31 downto 0) => mm_interconnect_M03_AXI_RDATA(31 downto 0),
      M02_AXI_rlast(0) => mm_interconnect_M03_AXI_RLAST(0),
      M02_AXI_rready(0) => mm_interconnect_M03_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => mm_interconnect_M03_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => mm_interconnect_M03_AXI_RVALID(0),
      M02_AXI_wdata(31 downto 0) => mm_interconnect_M03_AXI_WDATA(31 downto 0),
      M02_AXI_wlast(0) => mm_interconnect_M03_AXI_WLAST(0),
      M02_AXI_wready(0) => mm_interconnect_M03_AXI_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => mm_interconnect_M03_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => mm_interconnect_M03_AXI_WVALID(0),
      M03_AXI_araddr(31 downto 0) => mm_interconnect_M04_AXI1_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => mm_interconnect_M04_AXI1_ARPROT(2 downto 0),
      M03_AXI_arready(0) => mm_interconnect_M04_AXI1_ARREADY(0),
      M03_AXI_arvalid(0) => mm_interconnect_M04_AXI1_ARVALID(0),
      M03_AXI_awaddr(31 downto 0) => mm_interconnect_M04_AXI1_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => mm_interconnect_M04_AXI1_AWPROT(2 downto 0),
      M03_AXI_awready(0) => mm_interconnect_M04_AXI1_AWREADY(0),
      M03_AXI_awvalid(0) => mm_interconnect_M04_AXI1_AWVALID(0),
      M03_AXI_bready(0) => mm_interconnect_M04_AXI1_BREADY(0),
      M03_AXI_bresp(1 downto 0) => mm_interconnect_M04_AXI1_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => mm_interconnect_M04_AXI1_BVALID(0),
      M03_AXI_rdata(31 downto 0) => mm_interconnect_M04_AXI1_RDATA(31 downto 0),
      M03_AXI_rready(0) => mm_interconnect_M04_AXI1_RREADY(0),
      M03_AXI_rresp(1 downto 0) => mm_interconnect_M04_AXI1_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => mm_interconnect_M04_AXI1_RVALID(0),
      M03_AXI_wdata(31 downto 0) => mm_interconnect_M04_AXI1_WDATA(31 downto 0),
      M03_AXI_wready(0) => mm_interconnect_M04_AXI1_WREADY(0),
      M03_AXI_wstrb(3 downto 0) => mm_interconnect_M04_AXI1_WSTRB(3 downto 0),
      M03_AXI_wvalid(0) => mm_interconnect_M04_AXI1_WVALID(0),
      M04_AXI_araddr(31 downto 0) => mm_interconnect_0_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arburst(1 downto 0) => mm_interconnect_0_M04_AXI_ARBURST(1 downto 0),
      M04_AXI_arcache(3 downto 0) => mm_interconnect_0_M04_AXI_ARCACHE(3 downto 0),
      M04_AXI_arlen(7 downto 0) => mm_interconnect_0_M04_AXI_ARLEN(7 downto 0),
      M04_AXI_arlock(0) => mm_interconnect_0_M04_AXI_ARLOCK(0),
      M04_AXI_arprot(2 downto 0) => mm_interconnect_0_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready(0) => mm_interconnect_0_M04_AXI_ARREADY(0),
      M04_AXI_arsize(2 downto 0) => mm_interconnect_0_M04_AXI_ARSIZE(2 downto 0),
      M04_AXI_arvalid(0) => mm_interconnect_0_M04_AXI_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => mm_interconnect_0_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awburst(1 downto 0) => mm_interconnect_0_M04_AXI_AWBURST(1 downto 0),
      M04_AXI_awcache(3 downto 0) => mm_interconnect_0_M04_AXI_AWCACHE(3 downto 0),
      M04_AXI_awlen(7 downto 0) => mm_interconnect_0_M04_AXI_AWLEN(7 downto 0),
      M04_AXI_awlock(0) => mm_interconnect_0_M04_AXI_AWLOCK(0),
      M04_AXI_awprot(2 downto 0) => mm_interconnect_0_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready(0) => mm_interconnect_0_M04_AXI_AWREADY(0),
      M04_AXI_awsize(2 downto 0) => mm_interconnect_0_M04_AXI_AWSIZE(2 downto 0),
      M04_AXI_awvalid(0) => mm_interconnect_0_M04_AXI_AWVALID(0),
      M04_AXI_bready(0) => mm_interconnect_0_M04_AXI_BREADY(0),
      M04_AXI_bresp(1 downto 0) => mm_interconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => mm_interconnect_0_M04_AXI_BVALID(0),
      M04_AXI_rdata(31 downto 0) => mm_interconnect_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rlast(0) => mm_interconnect_0_M04_AXI_RLAST(0),
      M04_AXI_rready(0) => mm_interconnect_0_M04_AXI_RREADY(0),
      M04_AXI_rresp(1 downto 0) => mm_interconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => mm_interconnect_0_M04_AXI_RVALID(0),
      M04_AXI_wdata(31 downto 0) => mm_interconnect_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wlast(0) => mm_interconnect_0_M04_AXI_WLAST(0),
      M04_AXI_wready(0) => mm_interconnect_0_M04_AXI_WREADY(0),
      M04_AXI_wstrb(3 downto 0) => mm_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => mm_interconnect_0_M04_AXI_WVALID(0),
      S00_ACLK => s_axi_aclk_1,
      S00_AXI_araddr(31 downto 0) => pcie_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => pcie_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => pcie_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => pcie_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock => pcie_M_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => pcie_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arready => pcie_M_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => pcie_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => pcie_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => pcie_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => pcie_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => pcie_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => pcie_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock => pcie_M_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => pcie_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awready => pcie_M_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => pcie_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => pcie_M_AXI_AWVALID,
      S00_AXI_bready => pcie_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => pcie_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => pcie_M_AXI_BVALID,
      S00_AXI_rdata(127 downto 0) => pcie_M_AXI_RDATA(127 downto 0),
      S00_AXI_rlast => pcie_M_AXI_RLAST,
      S00_AXI_rready => pcie_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => pcie_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => pcie_M_AXI_RVALID,
      S00_AXI_wdata(127 downto 0) => pcie_M_AXI_WDATA(127 downto 0),
      S00_AXI_wlast => pcie_M_AXI_WLAST,
      S00_AXI_wready => pcie_M_AXI_WREADY,
      S00_AXI_wstrb(15 downto 0) => pcie_M_AXI_WSTRB(15 downto 0),
      S00_AXI_wvalid => pcie_M_AXI_WVALID
    );
pcie_0: entity work.pcie_0_imp_8LIP7E
     port map (
      M_AXI_araddr(31 downto 0) => pcie_M_AXI_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => pcie_M_AXI_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => pcie_M_AXI_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => pcie_M_AXI_ARLEN(7 downto 0),
      M_AXI_arlock => pcie_M_AXI_ARLOCK,
      M_AXI_arprot(2 downto 0) => pcie_M_AXI_ARPROT(2 downto 0),
      M_AXI_arready => pcie_M_AXI_ARREADY,
      M_AXI_arsize(2 downto 0) => pcie_M_AXI_ARSIZE(2 downto 0),
      M_AXI_arvalid => pcie_M_AXI_ARVALID,
      M_AXI_awaddr(31 downto 0) => pcie_M_AXI_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => pcie_M_AXI_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => pcie_M_AXI_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => pcie_M_AXI_AWLEN(7 downto 0),
      M_AXI_awlock => pcie_M_AXI_AWLOCK,
      M_AXI_awprot(2 downto 0) => pcie_M_AXI_AWPROT(2 downto 0),
      M_AXI_awready => pcie_M_AXI_AWREADY,
      M_AXI_awsize(2 downto 0) => pcie_M_AXI_AWSIZE(2 downto 0),
      M_AXI_awvalid => pcie_M_AXI_AWVALID,
      M_AXI_bready => pcie_M_AXI_BREADY,
      M_AXI_bresp(1 downto 0) => pcie_M_AXI_BRESP(1 downto 0),
      M_AXI_bvalid => pcie_M_AXI_BVALID,
      M_AXI_rdata(127 downto 0) => pcie_M_AXI_RDATA(127 downto 0),
      M_AXI_rlast => pcie_M_AXI_RLAST,
      M_AXI_rready => pcie_M_AXI_RREADY,
      M_AXI_rresp(1 downto 0) => pcie_M_AXI_RRESP(1 downto 0),
      M_AXI_rvalid => pcie_M_AXI_RVALID,
      M_AXI_wdata(127 downto 0) => pcie_M_AXI_WDATA(127 downto 0),
      M_AXI_wlast => pcie_M_AXI_WLAST,
      M_AXI_wready => pcie_M_AXI_WREADY,
      M_AXI_wstrb(15 downto 0) => pcie_M_AXI_WSTRB(15 downto 0),
      M_AXI_wvalid => pcie_M_AXI_WVALID,
      PCIE_MGT_rxn(3 downto 0) => pcie_PCIE_MGT_rxn(3 downto 0),
      PCIE_MGT_rxp(3 downto 0) => pcie_PCIE_MGT_rxp(3 downto 0),
      PCIE_MGT_txn(3 downto 0) => pcie_PCIE_MGT_txn(3 downto 0),
      PCIE_MGT_txp(3 downto 0) => pcie_PCIE_MGT_txp(3 downto 0),
      PCIE_REFCLK_clk_n(0) => pcie_ref_1_CLK_N(0),
      PCIE_REFCLK_clk_p(0) => pcie_ref_1_CLK_P(0),
      S_AXI_CTL_araddr(31 downto 0) => mm_interconnect_M04_AXI1_ARADDR(31 downto 0),
      S_AXI_CTL_arprot(2 downto 0) => mm_interconnect_M04_AXI1_ARPROT(2 downto 0),
      S_AXI_CTL_arready(0) => mm_interconnect_M04_AXI1_ARREADY(0),
      S_AXI_CTL_arvalid(0) => mm_interconnect_M04_AXI1_ARVALID(0),
      S_AXI_CTL_awaddr(31 downto 0) => mm_interconnect_M04_AXI1_AWADDR(31 downto 0),
      S_AXI_CTL_awprot(2 downto 0) => mm_interconnect_M04_AXI1_AWPROT(2 downto 0),
      S_AXI_CTL_awready(0) => mm_interconnect_M04_AXI1_AWREADY(0),
      S_AXI_CTL_awvalid(0) => mm_interconnect_M04_AXI1_AWVALID(0),
      S_AXI_CTL_bready(0) => mm_interconnect_M04_AXI1_BREADY(0),
      S_AXI_CTL_bresp(1 downto 0) => mm_interconnect_M04_AXI1_BRESP(1 downto 0),
      S_AXI_CTL_bvalid(0) => mm_interconnect_M04_AXI1_BVALID(0),
      S_AXI_CTL_rdata(31 downto 0) => mm_interconnect_M04_AXI1_RDATA(31 downto 0),
      S_AXI_CTL_rready(0) => mm_interconnect_M04_AXI1_RREADY(0),
      S_AXI_CTL_rresp(1 downto 0) => mm_interconnect_M04_AXI1_RRESP(1 downto 0),
      S_AXI_CTL_rvalid(0) => mm_interconnect_M04_AXI1_RVALID(0),
      S_AXI_CTL_wdata(31 downto 0) => mm_interconnect_M04_AXI1_WDATA(31 downto 0),
      S_AXI_CTL_wready(0) => mm_interconnect_M04_AXI1_WREADY(0),
      S_AXI_CTL_wstrb(3 downto 0) => mm_interconnect_M04_AXI1_WSTRB(3 downto 0),
      S_AXI_CTL_wvalid(0) => mm_interconnect_M04_AXI1_WVALID(0),
      S_AXI_araddr(31 downto 0) => hier_0_M_AXI_DMA_PCIE_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => hier_0_M_AXI_DMA_PCIE_ARBURST(1 downto 0),
      S_AXI_arid(2 downto 0) => hier_0_M_AXI_DMA_PCIE_ARID(2 downto 0),
      S_AXI_arlen(7 downto 0) => hier_0_M_AXI_DMA_PCIE_ARLEN(7 downto 0),
      S_AXI_arready => hier_0_M_AXI_DMA_PCIE_ARREADY,
      S_AXI_arregion(3 downto 0) => hier_0_M_AXI_DMA_PCIE_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => hier_0_M_AXI_DMA_PCIE_ARSIZE(2 downto 0),
      S_AXI_arvalid => hier_0_M_AXI_DMA_PCIE_ARVALID,
      S_AXI_awaddr(31 downto 0) => hier_0_M_AXI_DMA_PCIE_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => hier_0_M_AXI_DMA_PCIE_AWBURST(1 downto 0),
      S_AXI_awid(2 downto 0) => hier_0_M_AXI_DMA_PCIE_AWID(2 downto 0),
      S_AXI_awlen(7 downto 0) => hier_0_M_AXI_DMA_PCIE_AWLEN(7 downto 0),
      S_AXI_awready => hier_0_M_AXI_DMA_PCIE_AWREADY,
      S_AXI_awregion(3 downto 0) => hier_0_M_AXI_DMA_PCIE_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => hier_0_M_AXI_DMA_PCIE_AWSIZE(2 downto 0),
      S_AXI_awvalid => hier_0_M_AXI_DMA_PCIE_AWVALID,
      S_AXI_bid(2 downto 0) => hier_0_M_AXI_DMA_PCIE_BID(2 downto 0),
      S_AXI_bready => hier_0_M_AXI_DMA_PCIE_BREADY,
      S_AXI_bresp(1 downto 0) => hier_0_M_AXI_DMA_PCIE_BRESP(1 downto 0),
      S_AXI_bvalid => hier_0_M_AXI_DMA_PCIE_BVALID,
      S_AXI_rdata(127 downto 0) => hier_0_M_AXI_DMA_PCIE_RDATA(127 downto 0),
      S_AXI_rid(2 downto 0) => hier_0_M_AXI_DMA_PCIE_RID(2 downto 0),
      S_AXI_rlast => hier_0_M_AXI_DMA_PCIE_RLAST,
      S_AXI_rready => hier_0_M_AXI_DMA_PCIE_RREADY,
      S_AXI_rresp(1 downto 0) => hier_0_M_AXI_DMA_PCIE_RRESP(1 downto 0),
      S_AXI_rvalid => hier_0_M_AXI_DMA_PCIE_RVALID,
      S_AXI_wdata(127 downto 0) => hier_0_M_AXI_DMA_PCIE_WDATA(127 downto 0),
      S_AXI_wlast => hier_0_M_AXI_DMA_PCIE_WLAST,
      S_AXI_wready => hier_0_M_AXI_DMA_PCIE_WREADY,
      S_AXI_wstrb(15 downto 0) => hier_0_M_AXI_DMA_PCIE_WSTRB(15 downto 0),
      S_AXI_wvalid => hier_0_M_AXI_DMA_PCIE_WVALID,
      axi_aclk_out => s_axi_aclk_1,
      interconnect_aresetn(0) => pcie_0_interconnect_aresetn(0),
      msi_irq(7 downto 0) => msi_irq_1(7 downto 0),
      peripheral_aresetn(0) => pcie_0_peripheral_aresetn(0),
      perstn => perstn_1
    );
timer_0: entity work.timer_0_imp_45NYOX
     port map (
      S_AXI_araddr(31 downto 0) => mm_interconnect_M00_AXI_ARADDR(31 downto 0),
      S_AXI_arready => mm_interconnect_M00_AXI_ARREADY,
      S_AXI_arvalid => mm_interconnect_M00_AXI_ARVALID,
      S_AXI_awaddr(31 downto 0) => mm_interconnect_M00_AXI_AWADDR(31 downto 0),
      S_AXI_awready => mm_interconnect_M00_AXI_AWREADY,
      S_AXI_awvalid => mm_interconnect_M00_AXI_AWVALID,
      S_AXI_bready => mm_interconnect_M00_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => mm_interconnect_M00_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => mm_interconnect_M00_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => mm_interconnect_M00_AXI_RDATA(31 downto 0),
      S_AXI_rready => mm_interconnect_M00_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => mm_interconnect_M00_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => mm_interconnect_M00_AXI_RVALID,
      S_AXI_wdata(31 downto 0) => mm_interconnect_M00_AXI_WDATA(31 downto 0),
      S_AXI_wready => mm_interconnect_M00_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => mm_interconnect_M00_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => mm_interconnect_M00_AXI_WVALID,
      irq_timer_0 => timer_generateout0,
      irq_timer_1 => NLW_timer_0_irq_timer_1_UNCONNECTED,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_aresetn(0) => pcie_0_peripheral_aresetn(0)
    );
util_ds_buf_0: component top_util_ds_buf_0_0
     port map (
      IBUF_DS_N(0) => sys_diff_clock_1_CLK_N,
      IBUF_DS_P(0) => sys_diff_clock_1_CLK_P,
      IBUF_OUT(0) => util_ds_buf_0_IBUF_OUT(0)
    );
end STRUCTURE;

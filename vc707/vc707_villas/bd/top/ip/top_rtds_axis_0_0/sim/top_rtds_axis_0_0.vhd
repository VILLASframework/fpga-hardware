-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: acs.eonerc.rwth-aachen.de:user:rtds_axis:1.0
-- IP Revision: 7

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_rtds_axis_0_0 IS
  PORT (
    clk100m : OUT STD_LOGIC;
    aresetn : IN STD_LOGIC;
    axi_resetn : OUT STD_LOGIC;
    CLKBUF_Q0_N : IN STD_LOGIC;
    CLKBUF_Q0_P : IN STD_LOGIC;
    SFP_RX_N : IN STD_LOGIC;
    SFP_RX_P : IN STD_LOGIC;
    SFP_TX_N : OUT STD_LOGIC;
    SFP_TX_P : OUT STD_LOGIC;
    SFP_LOS : IN STD_LOGIC;
    SFP_TX_DISABLE : OUT STD_LOGIC;
    SYS_CLK : IN STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tlast : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tlast : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    irq_ts : OUT STD_LOGIC;
    irq_overflow : OUT STD_LOGIC;
    irq_case : OUT STD_LOGIC;
    s_axi_ctl_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_ctl_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_ctl_awvalid : IN STD_LOGIC;
    s_axi_ctl_awready : OUT STD_LOGIC;
    s_axi_ctl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctl_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_ctl_wvalid : IN STD_LOGIC;
    s_axi_ctl_wready : OUT STD_LOGIC;
    s_axi_ctl_bvalid : OUT STD_LOGIC;
    s_axi_ctl_bready : IN STD_LOGIC;
    s_axi_ctl_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_ctl_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_ctl_arvalid : IN STD_LOGIC;
    s_axi_ctl_arready : OUT STD_LOGIC;
    s_axi_ctl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctl_rvalid : OUT STD_LOGIC;
    s_axi_ctl_rready : IN STD_LOGIC
  );
END top_rtds_axis_0_0;

ARCHITECTURE top_rtds_axis_0_0_arch OF top_rtds_axis_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_rtds_axis_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT rtds_axis IS
    GENERIC (
      C_S_AXI_CTL_DATA_WIDTH : INTEGER;
      C_S_AXI_CTL_ADDR_WIDTH : INTEGER
    );
    PORT (
      clk100m : OUT STD_LOGIC;
      aresetn : IN STD_LOGIC;
      axi_resetn : OUT STD_LOGIC;
      CLKBUF_Q0_N : IN STD_LOGIC;
      CLKBUF_Q0_P : IN STD_LOGIC;
      SFP_RX_N : IN STD_LOGIC;
      SFP_RX_P : IN STD_LOGIC;
      SFP_TX_N : OUT STD_LOGIC;
      SFP_TX_P : OUT STD_LOGIC;
      SFP_LOS : IN STD_LOGIC;
      SFP_TX_DISABLE : OUT STD_LOGIC;
      SYS_CLK : IN STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_tvalid : IN STD_LOGIC;
      s_axis_tlast : IN STD_LOGIC;
      s_axis_tready : OUT STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_tvalid : OUT STD_LOGIC;
      m_axis_tlast : OUT STD_LOGIC;
      m_axis_tready : IN STD_LOGIC;
      irq_ts : OUT STD_LOGIC;
      irq_overflow : OUT STD_LOGIC;
      irq_case : OUT STD_LOGIC;
      s_axi_ctl_awaddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_ctl_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_ctl_awvalid : IN STD_LOGIC;
      s_axi_ctl_awready : OUT STD_LOGIC;
      s_axi_ctl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctl_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_ctl_wvalid : IN STD_LOGIC;
      s_axi_ctl_wready : OUT STD_LOGIC;
      s_axi_ctl_bvalid : OUT STD_LOGIC;
      s_axi_ctl_bready : IN STD_LOGIC;
      s_axi_ctl_araddr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_ctl_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_ctl_arvalid : IN STD_LOGIC;
      s_axi_ctl_arready : OUT STD_LOGIC;
      s_axi_ctl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctl_rvalid : OUT STD_LOGIC;
      s_axi_ctl_rready : IN STD_LOGIC
    );
  END COMPONENT rtds_axis;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk100m: SIGNAL IS "xilinx.com:signal:clock:1.0 clk100m CLK";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF axi_resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 axi_resetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF CLKBUF_Q0_N: SIGNAL IS "xilinx.com:interface:diff_clock:1.0 clkbuf_q0 CLK_N";
  ATTRIBUTE X_INTERFACE_INFO OF CLKBUF_Q0_P: SIGNAL IS "xilinx.com:interface:diff_clock:1.0 clkbuf_q0 CLK_P";
  ATTRIBUTE X_INTERFACE_INFO OF SFP_RX_N: SIGNAL IS "xilinx.com:interface:sfp:1.0 SFP RXN";
  ATTRIBUTE X_INTERFACE_INFO OF SFP_RX_P: SIGNAL IS "xilinx.com:interface:sfp:1.0 SFP RXP";
  ATTRIBUTE X_INTERFACE_INFO OF SFP_TX_N: SIGNAL IS "xilinx.com:interface:sfp:1.0 SFP TXN";
  ATTRIBUTE X_INTERFACE_INFO OF SFP_TX_P: SIGNAL IS "xilinx.com:interface:sfp:1.0 SFP TXP";
  ATTRIBUTE X_INTERFACE_INFO OF SFP_LOS: SIGNAL IS "xilinx.com:interface:sfp:1.0 SFP RX_LOS";
  ATTRIBUTE X_INTERFACE_INFO OF SFP_TX_DISABLE: SIGNAL IS "xilinx.com:interface:sfp:1.0 SFP TX_DISABLE";
  ATTRIBUTE X_INTERFACE_INFO OF SYS_CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 SYS_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF irq_ts: SIGNAL IS "xilinx.com:signal:interrupt:1.0 irq_ts INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF irq_overflow: SIGNAL IS "xilinx.com:signal:interrupt:1.0 irq_overflow INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF irq_case: SIGNAL IS "xilinx.com:signal:interrupt:1.0 irq_case INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl RREADY";
BEGIN
  U0 : rtds_axis
    GENERIC MAP (
      C_S_AXI_CTL_DATA_WIDTH => 32,
      C_S_AXI_CTL_ADDR_WIDTH => 6
    )
    PORT MAP (
      clk100m => clk100m,
      aresetn => aresetn,
      axi_resetn => axi_resetn,
      CLKBUF_Q0_N => CLKBUF_Q0_N,
      CLKBUF_Q0_P => CLKBUF_Q0_P,
      SFP_RX_N => SFP_RX_N,
      SFP_RX_P => SFP_RX_P,
      SFP_TX_N => SFP_TX_N,
      SFP_TX_P => SFP_TX_P,
      SFP_LOS => SFP_LOS,
      SFP_TX_DISABLE => SFP_TX_DISABLE,
      SYS_CLK => SYS_CLK,
      s_axis_tdata => s_axis_tdata,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      m_axis_tdata => m_axis_tdata,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      irq_ts => irq_ts,
      irq_overflow => irq_overflow,
      irq_case => irq_case,
      s_axi_ctl_awaddr => s_axi_ctl_awaddr,
      s_axi_ctl_awprot => s_axi_ctl_awprot,
      s_axi_ctl_awvalid => s_axi_ctl_awvalid,
      s_axi_ctl_awready => s_axi_ctl_awready,
      s_axi_ctl_wdata => s_axi_ctl_wdata,
      s_axi_ctl_wstrb => s_axi_ctl_wstrb,
      s_axi_ctl_wvalid => s_axi_ctl_wvalid,
      s_axi_ctl_wready => s_axi_ctl_wready,
      s_axi_ctl_bvalid => s_axi_ctl_bvalid,
      s_axi_ctl_bready => s_axi_ctl_bready,
      s_axi_ctl_araddr => s_axi_ctl_araddr,
      s_axi_ctl_arprot => s_axi_ctl_arprot,
      s_axi_ctl_arvalid => s_axi_ctl_arvalid,
      s_axi_ctl_arready => s_axi_ctl_arready,
      s_axi_ctl_rdata => s_axi_ctl_rdata,
      s_axi_ctl_rvalid => s_axi_ctl_rvalid,
      s_axi_ctl_rready => s_axi_ctl_rready
    );
END top_rtds_axis_0_0_arch;

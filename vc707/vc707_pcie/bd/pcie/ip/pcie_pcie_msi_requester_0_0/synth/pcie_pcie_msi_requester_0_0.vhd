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

-- IP VLNV: acs.eonerc.rwth-aachen.de:user:pcie_msi_requester:1.1
-- IP Revision: 13

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pcie_pcie_msi_requester_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    i_irq : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_irq : OUT STD_LOGIC;
    o_vector_num : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    i_msi_enabled : IN STD_LOGIC;
    i_granted : IN STD_LOGIC;
    i_vector_width : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_ctl_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_ctl_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_ctl_awvalid : IN STD_LOGIC;
    s_axi_ctl_awready : OUT STD_LOGIC;
    s_axi_ctl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctl_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_ctl_wvalid : IN STD_LOGIC;
    s_axi_ctl_wready : OUT STD_LOGIC;
    s_axi_ctl_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctl_bvalid : OUT STD_LOGIC;
    s_axi_ctl_bready : IN STD_LOGIC;
    s_axi_ctl_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_ctl_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_ctl_arvalid : IN STD_LOGIC;
    s_axi_ctl_arready : OUT STD_LOGIC;
    s_axi_ctl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctl_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctl_rvalid : OUT STD_LOGIC;
    s_axi_ctl_rready : IN STD_LOGIC
  );
END pcie_pcie_msi_requester_0_0;

ARCHITECTURE pcie_pcie_msi_requester_0_0_arch OF pcie_pcie_msi_requester_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pcie_pcie_msi_requester_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT pcie_msi_requester IS
    GENERIC (
      NUM_IRQS : INTEGER;
      C_S_AXI_CTL_DATA_WIDTH : INTEGER;
      C_S_AXI_CTL_ADDR_WIDTH : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      i_irq : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_irq : OUT STD_LOGIC;
      o_vector_num : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      i_msi_enabled : IN STD_LOGIC;
      i_granted : IN STD_LOGIC;
      i_vector_width : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_ctl_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_ctl_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_ctl_awvalid : IN STD_LOGIC;
      s_axi_ctl_awready : OUT STD_LOGIC;
      s_axi_ctl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctl_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_ctl_wvalid : IN STD_LOGIC;
      s_axi_ctl_wready : OUT STD_LOGIC;
      s_axi_ctl_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctl_bvalid : OUT STD_LOGIC;
      s_axi_ctl_bready : IN STD_LOGIC;
      s_axi_ctl_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_ctl_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_ctl_arvalid : IN STD_LOGIC;
      s_axi_ctl_arready : OUT STD_LOGIC;
      s_axi_ctl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctl_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctl_rvalid : OUT STD_LOGIC;
      s_axi_ctl_rready : IN STD_LOGIC
    );
  END COMPONENT pcie_msi_requester;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF pcie_pcie_msi_requester_0_0_arch: ARCHITECTURE IS "pcie_msi_requester,Vivado 2015.4.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF pcie_pcie_msi_requester_0_0_arch : ARCHITECTURE IS "pcie_pcie_msi_requester_0_0,pcie_msi_requester,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctl RREADY";
BEGIN
  U0 : pcie_msi_requester
    GENERIC MAP (
      NUM_IRQS => 8,
      C_S_AXI_CTL_DATA_WIDTH => 32,
      C_S_AXI_CTL_ADDR_WIDTH => 4
    )
    PORT MAP (
      clk => clk,
      aresetn => aresetn,
      i_irq => i_irq,
      o_irq => o_irq,
      o_vector_num => o_vector_num,
      i_msi_enabled => i_msi_enabled,
      i_granted => i_granted,
      i_vector_width => i_vector_width,
      s_axi_ctl_awaddr => s_axi_ctl_awaddr,
      s_axi_ctl_awprot => s_axi_ctl_awprot,
      s_axi_ctl_awvalid => s_axi_ctl_awvalid,
      s_axi_ctl_awready => s_axi_ctl_awready,
      s_axi_ctl_wdata => s_axi_ctl_wdata,
      s_axi_ctl_wstrb => s_axi_ctl_wstrb,
      s_axi_ctl_wvalid => s_axi_ctl_wvalid,
      s_axi_ctl_wready => s_axi_ctl_wready,
      s_axi_ctl_bresp => s_axi_ctl_bresp,
      s_axi_ctl_bvalid => s_axi_ctl_bvalid,
      s_axi_ctl_bready => s_axi_ctl_bready,
      s_axi_ctl_araddr => s_axi_ctl_araddr,
      s_axi_ctl_arprot => s_axi_ctl_arprot,
      s_axi_ctl_arvalid => s_axi_ctl_arvalid,
      s_axi_ctl_arready => s_axi_ctl_arready,
      s_axi_ctl_rdata => s_axi_ctl_rdata,
      s_axi_ctl_rresp => s_axi_ctl_rresp,
      s_axi_ctl_rvalid => s_axi_ctl_rvalid,
      s_axi_ctl_rready => s_axi_ctl_rready
    );
END pcie_pcie_msi_requester_0_0_arch;

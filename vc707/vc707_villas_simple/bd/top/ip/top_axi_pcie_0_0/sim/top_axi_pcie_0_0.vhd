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

-- IP VLNV: xilinx.com:ip:axi_pcie:2.8
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_axi_pcie_0_0 IS
  PORT (
    axi_aresetn : IN STD_LOGIC;
    axi_aclk_out : OUT STD_LOGIC;
    axi_ctl_aclk_out : OUT STD_LOGIC;
    mmcm_lock : OUT STD_LOGIC;
    interrupt_out : OUT STD_LOGIC;
    INTX_MSI_Request : IN STD_LOGIC;
    INTX_MSI_Grant : OUT STD_LOGIC;
    MSI_enable : OUT STD_LOGIC;
    MSI_Vector_Num : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    MSI_Vector_Width : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_wlast : IN STD_LOGIC;
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_arid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rlast : OUT STD_LOGIC;
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_awvalid : OUT STD_LOGIC;
    m_axi_awready : IN STD_LOGIC;
    m_axi_awlock : OUT STD_LOGIC;
    m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axi_wlast : OUT STD_LOGIC;
    m_axi_wvalid : OUT STD_LOGIC;
    m_axi_wready : IN STD_LOGIC;
    m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bvalid : IN STD_LOGIC;
    m_axi_bready : OUT STD_LOGIC;
    m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_arvalid : OUT STD_LOGIC;
    m_axi_arready : IN STD_LOGIC;
    m_axi_arlock : OUT STD_LOGIC;
    m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_rlast : IN STD_LOGIC;
    m_axi_rvalid : IN STD_LOGIC;
    m_axi_rready : OUT STD_LOGIC;
    pci_exp_txp : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pci_exp_txn : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pci_exp_rxp : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    pci_exp_rxn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    REFCLK : IN STD_LOGIC;
    s_axi_ctl_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctl_awvalid : IN STD_LOGIC;
    s_axi_ctl_awready : OUT STD_LOGIC;
    s_axi_ctl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctl_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_ctl_wvalid : IN STD_LOGIC;
    s_axi_ctl_wready : OUT STD_LOGIC;
    s_axi_ctl_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctl_bvalid : OUT STD_LOGIC;
    s_axi_ctl_bready : IN STD_LOGIC;
    s_axi_ctl_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctl_arvalid : IN STD_LOGIC;
    s_axi_ctl_arready : OUT STD_LOGIC;
    s_axi_ctl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctl_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctl_rvalid : OUT STD_LOGIC;
    s_axi_ctl_rready : IN STD_LOGIC
  );
END top_axi_pcie_0_0;

ARCHITECTURE top_axi_pcie_0_0_arch OF top_axi_pcie_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_axi_pcie_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_pcie IS
    GENERIC (
      C_FAMILY : STRING;
      C_INSTANCE : STRING;
      C_S_AXI_ID_WIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_M_AXI_ADDR_WIDTH : INTEGER;
      C_M_AXI_DATA_WIDTH : INTEGER;
      C_NO_OF_LANES : INTEGER;
      C_MAX_LINK_SPEED : INTEGER;
      C_PCIE_USE_MODE : STRING;
      C_DEVICE_ID : STD_LOGIC_VECTOR (0 TO 15);
      C_VENDOR_ID : STD_LOGIC_VECTOR (0 TO 15);
      C_CLASS_CODE : STD_LOGIC_VECTOR (0 TO 23);
      C_REF_CLK_FREQ : INTEGER;
      C_REV_ID : STD_LOGIC_VECTOR (0 TO 7);
      C_SUBSYSTEM_ID : STD_LOGIC_VECTOR (0 TO 15);
      C_SUBSYSTEM_VENDOR_ID : STD_LOGIC_VECTOR (0 TO 15);
      C_PCIE_CAP_SLOT_IMPLEMENTED : INTEGER;
      C_SLOT_CLOCK_CONFIG : STRING;
      C_MSI_DECODE_ENABLE : STRING;
      C_NUM_MSI_REQ : INTEGER;
      C_INTERRUPT_PIN : INTEGER;
      C_COMP_TIMEOUT : INTEGER;
      C_INCLUDE_RC : INTEGER;
      C_S_AXI_SUPPORTS_NARROW_BURST : INTEGER;
      C_INCLUDE_BAROFFSET_REG : INTEGER;
      C_BASEADDR : STD_LOGIC_VECTOR;
      C_HIGHADDR : STD_LOGIC_VECTOR;
      C_AXIBAR_NUM : INTEGER;
      C_AXIBAR2PCIEBAR_0 : STD_LOGIC_VECTOR;
      C_AXIBAR2PCIEBAR_1 : STD_LOGIC_VECTOR;
      C_AXIBAR2PCIEBAR_2 : STD_LOGIC_VECTOR;
      C_AXIBAR2PCIEBAR_3 : STD_LOGIC_VECTOR;
      C_AXIBAR2PCIEBAR_4 : STD_LOGIC_VECTOR;
      C_AXIBAR2PCIEBAR_5 : STD_LOGIC_VECTOR;
      C_AXIBAR_AS_0 : INTEGER;
      C_AXIBAR_AS_1 : INTEGER;
      C_AXIBAR_AS_2 : INTEGER;
      C_AXIBAR_AS_3 : INTEGER;
      C_AXIBAR_AS_4 : INTEGER;
      C_AXIBAR_AS_5 : INTEGER;
      C_AXIBAR_0 : STD_LOGIC_VECTOR;
      C_AXIBAR_HIGHADDR_0 : STD_LOGIC_VECTOR;
      C_AXIBAR_1 : STD_LOGIC_VECTOR;
      C_AXIBAR_HIGHADDR_1 : STD_LOGIC_VECTOR;
      C_AXIBAR_2 : STD_LOGIC_VECTOR;
      C_AXIBAR_HIGHADDR_2 : STD_LOGIC_VECTOR;
      C_AXIBAR_3 : STD_LOGIC_VECTOR;
      C_AXIBAR_HIGHADDR_3 : STD_LOGIC_VECTOR;
      C_AXIBAR_4 : STD_LOGIC_VECTOR;
      C_AXIBAR_HIGHADDR_4 : STD_LOGIC_VECTOR;
      C_AXIBAR_5 : STD_LOGIC_VECTOR;
      C_AXIBAR_HIGHADDR_5 : STD_LOGIC_VECTOR;
      C_PCIEBAR_NUM : INTEGER;
      C_PCIEBAR_AS : INTEGER;
      C_PCIEBAR_LEN_0 : INTEGER;
      C_PCIEBAR2AXIBAR_0 : STD_LOGIC_VECTOR;
      C_PCIEBAR2AXIBAR_0_SEC : INTEGER;
      C_PCIEBAR_LEN_1 : INTEGER;
      C_PCIEBAR2AXIBAR_1 : STD_LOGIC_VECTOR;
      C_PCIEBAR2AXIBAR_1_SEC : INTEGER;
      C_PCIEBAR_LEN_2 : INTEGER;
      C_PCIEBAR2AXIBAR_2 : STD_LOGIC_VECTOR;
      C_PCIEBAR2AXIBAR_2_SEC : INTEGER;
      C_PCIE_BLK_LOCN : STRING;
      C_XLNX_REF_BOARD : STRING;
      PCIE_EXT_CLK : STRING;
      PCIE_EXT_GT_COMMON : STRING;
      EXT_CH_GT_DRP : STRING;
      SHARED_LOGIC_IN_CORE : STRING;
      TRANSCEIVER_CTRL_STATUS_PORTS : STRING;
      EXT_PIPE_INTERFACE : STRING;
      C_DEVICE : STRING;
      C_SPEED : STRING;
      AXI_ACLK_LOOPBACK : STRING;
      NO_SLV_ERR : STRING;
      C_RP_BAR_HIDE : STRING
    );
    PORT (
      axi_aclk : IN STD_LOGIC;
      axi_aresetn : IN STD_LOGIC;
      axi_aclk_out : OUT STD_LOGIC;
      axi_ctl_aclk : IN STD_LOGIC;
      axi_ctl_aclk_out : OUT STD_LOGIC;
      mmcm_lock : OUT STD_LOGIC;
      interrupt_out : OUT STD_LOGIC;
      INTX_MSI_Request : IN STD_LOGIC;
      INTX_MSI_Grant : OUT STD_LOGIC;
      MSI_enable : OUT STD_LOGIC;
      MSI_Vector_Num : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      MSI_Vector_Width : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_wlast : IN STD_LOGIC;
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_arid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rlast : OUT STD_LOGIC;
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      m_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_awvalid : OUT STD_LOGIC;
      m_axi_awready : IN STD_LOGIC;
      m_axi_awlock : OUT STD_LOGIC;
      m_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_wlast : OUT STD_LOGIC;
      m_axi_wvalid : OUT STD_LOGIC;
      m_axi_wready : IN STD_LOGIC;
      m_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bvalid : IN STD_LOGIC;
      m_axi_bready : OUT STD_LOGIC;
      m_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_arvalid : OUT STD_LOGIC;
      m_axi_arready : IN STD_LOGIC;
      m_axi_arlock : OUT STD_LOGIC;
      m_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_rlast : IN STD_LOGIC;
      m_axi_rvalid : IN STD_LOGIC;
      m_axi_rready : OUT STD_LOGIC;
      pci_exp_txp : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pci_exp_txn : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pci_exp_rxp : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pci_exp_rxn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      REFCLK : IN STD_LOGIC;
      s_axi_ctl_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctl_awvalid : IN STD_LOGIC;
      s_axi_ctl_awready : OUT STD_LOGIC;
      s_axi_ctl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctl_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_ctl_wvalid : IN STD_LOGIC;
      s_axi_ctl_wready : OUT STD_LOGIC;
      s_axi_ctl_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctl_bvalid : OUT STD_LOGIC;
      s_axi_ctl_bready : IN STD_LOGIC;
      s_axi_ctl_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctl_arvalid : IN STD_LOGIC;
      s_axi_ctl_arready : OUT STD_LOGIC;
      s_axi_ctl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctl_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctl_rvalid : OUT STD_LOGIC;
      s_axi_ctl_rready : IN STD_LOGIC;
      qpll_drp_crscode : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      qpll_drp_fsm : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      qpll_drp_done : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      qpll_drp_reset : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      qpll_qplllock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      qpll_qplloutclk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      qpll_qplloutrefclk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      qpll_qplld : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      qpll_qpllreset : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      qpll_drp_clk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      qpll_drp_rst_n : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      qpll_drp_ovrd : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      qpll_drp_gen3 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      qpll_drp_start : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pipe_txprbssel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      pipe_rxprbssel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      pipe_txprbsforceerr : IN STD_LOGIC;
      pipe_rxprbscntreset : IN STD_LOGIC;
      pipe_loopback : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      pipe_rxprbserr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_txinhibit : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_rst_fsm : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      pipe_qrst_fsm : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pipe_rate_fsm : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
      pipe_sync_fsm_tx : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      pipe_sync_fsm_rx : OUT STD_LOGIC_VECTOR(27 DOWNTO 0);
      pipe_drp_fsm : OUT STD_LOGIC_VECTOR(27 DOWNTO 0);
      pipe_rst_idle : OUT STD_LOGIC;
      pipe_qrst_idle : OUT STD_LOGIC;
      pipe_rate_idle : OUT STD_LOGIC;
      pipe_eyescandataerror : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_rxstatus : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pipe_dmonitorout : OUT STD_LOGIC_VECTOR(59 DOWNTO 0);
      pipe_cpll_lock : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_qpll_lock : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      pipe_rxpmaresetdone : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_rxbufstatus : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pipe_txphaligndone : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_txphinitdone : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_txdlysresetdone : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_rxphaligndone : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_rxdlysresetdone : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_rxsyncdone : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_rxdisperr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      pipe_rxnotintable : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      pipe_rxcommadet : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      gt_ch_drp_rdy : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_debug_0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_debug_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_debug_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_debug_3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_debug_4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_debug_5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_debug_6 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_debug_7 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_debug_8 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_debug_9 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pipe_debug : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      int_pclk_out_slave : OUT STD_LOGIC;
      int_rxusrclk_out : OUT STD_LOGIC;
      int_dclk_out : OUT STD_LOGIC;
      int_userclk1_out : OUT STD_LOGIC;
      int_userclk2_out : OUT STD_LOGIC;
      int_oobclk_out : OUT STD_LOGIC;
      int_mmcm_lock_out : OUT STD_LOGIC;
      int_qplllock_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      int_qplloutclk_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      int_qplloutrefclk_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      int_rxoutclk_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      int_pclk_sel_slave : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      ext_ch_gt_drpclk : OUT STD_LOGIC;
      ext_ch_gt_drpaddr : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
      ext_ch_gt_drpen : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      ext_ch_gt_drpdi : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      ext_ch_gt_drpwe : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      ext_ch_gt_drpdo : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      ext_ch_gt_drprdy : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      clk_fab_refclk : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      clk_pclk : IN STD_LOGIC;
      clk_rxusrclk : IN STD_LOGIC;
      clk_dclk : IN STD_LOGIC;
      clk_userclk1 : IN STD_LOGIC;
      clk_userclk2 : IN STD_LOGIC;
      clk_oobclk_in : IN STD_LOGIC;
      clk_mmcm_lock : IN STD_LOGIC;
      clk_txoutclk : OUT STD_LOGIC;
      clk_rxoutclk : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      clk_pclk_sel : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      clk_gen3 : OUT STD_LOGIC;
      pipe_mmcm_rst_n : IN STD_LOGIC;
      common_commands_in : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      pipe_rx_0_sigs : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_rx_1_sigs : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_rx_2_sigs : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_rx_3_sigs : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_rx_4_sigs : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_rx_5_sigs : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_rx_6_sigs : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_rx_7_sigs : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
      common_commands_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pipe_tx_0_sigs : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_tx_1_sigs : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_tx_2_sigs : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_tx_3_sigs : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_tx_4_sigs : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_tx_5_sigs : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_tx_6_sigs : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      pipe_tx_7_sigs : OUT STD_LOGIC_VECTOR(24 DOWNTO 0)
    );
  END COMPONENT axi_pcie;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.axi_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF axi_aclk_out: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.axi_aclk_out CLK";
  ATTRIBUTE X_INTERFACE_INFO OF axi_ctl_aclk_out: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.axi_ctl_aclk_out CLK";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt_out: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTERRUPT.interrupt_out INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pci_exp_txp: SIGNAL IS "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt txp";
  ATTRIBUTE X_INTERFACE_INFO OF pci_exp_txn: SIGNAL IS "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt txn";
  ATTRIBUTE X_INTERFACE_INFO OF pci_exp_rxp: SIGNAL IS "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt rxp";
  ATTRIBUTE X_INTERFACE_INFO OF pci_exp_rxn: SIGNAL IS "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt rxn";
  ATTRIBUTE X_INTERFACE_INFO OF REFCLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.REFCLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctl_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CTL RREADY";
BEGIN
  U0 : axi_pcie
    GENERIC MAP (
      C_FAMILY => "virtex7",
      C_INSTANCE => "top_axi_pcie_0_0",
      C_S_AXI_ID_WIDTH => 1,
      C_S_AXI_ADDR_WIDTH => 32,
      C_S_AXI_DATA_WIDTH => 128,
      C_M_AXI_ADDR_WIDTH => 32,
      C_M_AXI_DATA_WIDTH => 128,
      C_NO_OF_LANES => 4,
      C_MAX_LINK_SPEED => 1,
      C_PCIE_USE_MODE => "3.0",
      C_DEVICE_ID => X"7022",
      C_VENDOR_ID => X"10EE",
      C_CLASS_CODE => X"050000",
      C_REF_CLK_FREQ => 0,
      C_REV_ID => X"00",
      C_SUBSYSTEM_ID => X"0007",
      C_SUBSYSTEM_VENDOR_ID => X"10EE",
      C_PCIE_CAP_SLOT_IMPLEMENTED => 0,
      C_SLOT_CLOCK_CONFIG => "TRUE",
      C_MSI_DECODE_ENABLE => "TRUE",
      C_NUM_MSI_REQ => 4,
      C_INTERRUPT_PIN => 0,
      C_COMP_TIMEOUT => 1,
      C_INCLUDE_RC => 0,
      C_S_AXI_SUPPORTS_NARROW_BURST => 1,
      C_INCLUDE_BAROFFSET_REG => 1,
      C_BASEADDR => X"10000000",
      C_HIGHADDR => X"1FFFFFFF",
      C_AXIBAR_NUM => 1,
      C_AXIBAR2PCIEBAR_0 => X"00000000",
      C_AXIBAR2PCIEBAR_1 => X"00000000",
      C_AXIBAR2PCIEBAR_2 => X"00000000",
      C_AXIBAR2PCIEBAR_3 => X"00000000",
      C_AXIBAR2PCIEBAR_4 => X"00000000",
      C_AXIBAR2PCIEBAR_5 => X"00000000",
      C_AXIBAR_AS_0 => 0,
      C_AXIBAR_AS_1 => 0,
      C_AXIBAR_AS_2 => 0,
      C_AXIBAR_AS_3 => 0,
      C_AXIBAR_AS_4 => 0,
      C_AXIBAR_AS_5 => 0,
      C_AXIBAR_0 => X"80000000",
      C_AXIBAR_HIGHADDR_0 => X"FFFFFFFF",
      C_AXIBAR_1 => X"FFFFFFFF",
      C_AXIBAR_HIGHADDR_1 => X"00000000",
      C_AXIBAR_2 => X"FFFFFFFF",
      C_AXIBAR_HIGHADDR_2 => X"00000000",
      C_AXIBAR_3 => X"FFFFFFFF",
      C_AXIBAR_HIGHADDR_3 => X"00000000",
      C_AXIBAR_4 => X"FFFFFFFF",
      C_AXIBAR_HIGHADDR_4 => X"00000000",
      C_AXIBAR_5 => X"FFFFFFFF",
      C_AXIBAR_HIGHADDR_5 => X"00000000",
      C_PCIEBAR_NUM => 1,
      C_PCIEBAR_AS => 0,
      C_PCIEBAR_LEN_0 => 16,
      C_PCIEBAR2AXIBAR_0 => X"00000000",
      C_PCIEBAR2AXIBAR_0_SEC => 1,
      C_PCIEBAR_LEN_1 => 16,
      C_PCIEBAR2AXIBAR_1 => X"FFFFFFFF",
      C_PCIEBAR2AXIBAR_1_SEC => 1,
      C_PCIEBAR_LEN_2 => 16,
      C_PCIEBAR2AXIBAR_2 => X"FFFFFFFF",
      C_PCIEBAR2AXIBAR_2_SEC => 1,
      C_PCIE_BLK_LOCN => "3",
      C_XLNX_REF_BOARD => "VC707",
      PCIE_EXT_CLK => "FALSE",
      PCIE_EXT_GT_COMMON => "FALSE",
      EXT_CH_GT_DRP => "FALSE",
      SHARED_LOGIC_IN_CORE => "FALSE",
      TRANSCEIVER_CTRL_STATUS_PORTS => "FALSE",
      EXT_PIPE_INTERFACE => "FALSE",
      C_DEVICE => "xc7vx485t",
      C_SPEED => "-2",
      AXI_ACLK_LOOPBACK => "FALSE",
      NO_SLV_ERR => "FALSE",
      C_RP_BAR_HIDE => "FALSE"
    )
    PORT MAP (
      axi_aclk => '0',
      axi_aresetn => axi_aresetn,
      axi_aclk_out => axi_aclk_out,
      axi_ctl_aclk => '0',
      axi_ctl_aclk_out => axi_ctl_aclk_out,
      mmcm_lock => mmcm_lock,
      interrupt_out => interrupt_out,
      INTX_MSI_Request => INTX_MSI_Request,
      INTX_MSI_Grant => INTX_MSI_Grant,
      MSI_enable => MSI_enable,
      MSI_Vector_Num => MSI_Vector_Num,
      MSI_Vector_Width => MSI_Vector_Width,
      s_axi_awid => s_axi_awid,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awregion => s_axi_awregion,
      s_axi_awlen => s_axi_awlen,
      s_axi_awsize => s_axi_awsize,
      s_axi_awburst => s_axi_awburst,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bid => s_axi_bid,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_arid => s_axi_arid,
      s_axi_araddr => s_axi_araddr,
      s_axi_arregion => s_axi_arregion,
      s_axi_arlen => s_axi_arlen,
      s_axi_arsize => s_axi_arsize,
      s_axi_arburst => s_axi_arburst,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rid => s_axi_rid,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rlast => s_axi_rlast,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      m_axi_awaddr => m_axi_awaddr,
      m_axi_awlen => m_axi_awlen,
      m_axi_awsize => m_axi_awsize,
      m_axi_awburst => m_axi_awburst,
      m_axi_awprot => m_axi_awprot,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awready => m_axi_awready,
      m_axi_awlock => m_axi_awlock,
      m_axi_awcache => m_axi_awcache,
      m_axi_wdata => m_axi_wdata,
      m_axi_wstrb => m_axi_wstrb,
      m_axi_wlast => m_axi_wlast,
      m_axi_wvalid => m_axi_wvalid,
      m_axi_wready => m_axi_wready,
      m_axi_bresp => m_axi_bresp,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_bready => m_axi_bready,
      m_axi_araddr => m_axi_araddr,
      m_axi_arlen => m_axi_arlen,
      m_axi_arsize => m_axi_arsize,
      m_axi_arburst => m_axi_arburst,
      m_axi_arprot => m_axi_arprot,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_arready => m_axi_arready,
      m_axi_arlock => m_axi_arlock,
      m_axi_arcache => m_axi_arcache,
      m_axi_rdata => m_axi_rdata,
      m_axi_rresp => m_axi_rresp,
      m_axi_rlast => m_axi_rlast,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_rready => m_axi_rready,
      pci_exp_txp => pci_exp_txp,
      pci_exp_txn => pci_exp_txn,
      pci_exp_rxp => pci_exp_rxp,
      pci_exp_rxn => pci_exp_rxn,
      REFCLK => REFCLK,
      s_axi_ctl_awaddr => s_axi_ctl_awaddr,
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
      s_axi_ctl_arvalid => s_axi_ctl_arvalid,
      s_axi_ctl_arready => s_axi_ctl_arready,
      s_axi_ctl_rdata => s_axi_ctl_rdata,
      s_axi_ctl_rresp => s_axi_ctl_rresp,
      s_axi_ctl_rvalid => s_axi_ctl_rvalid,
      s_axi_ctl_rready => s_axi_ctl_rready,
      qpll_drp_crscode => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 12)),
      qpll_drp_fsm => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      qpll_drp_done => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      qpll_drp_reset => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      qpll_qplllock => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      qpll_qplloutclk => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      qpll_qplloutrefclk => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pipe_txprbssel => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      pipe_rxprbssel => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      pipe_txprbsforceerr => '0',
      pipe_rxprbscntreset => '0',
      pipe_loopback => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      pipe_txinhibit => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      int_pclk_sel_slave => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      ext_ch_gt_drpaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 36)),
      ext_ch_gt_drpen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      ext_ch_gt_drpdi => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      ext_ch_gt_drpwe => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      clk_fab_refclk => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      clk_pclk => '0',
      clk_rxusrclk => '0',
      clk_dclk => '0',
      clk_userclk1 => '1',
      clk_userclk2 => '0',
      clk_oobclk_in => '0',
      clk_mmcm_lock => '1',
      pipe_mmcm_rst_n => '1',
      common_commands_in => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 12)),
      pipe_rx_0_sigs => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 25)),
      pipe_rx_1_sigs => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 25)),
      pipe_rx_2_sigs => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 25)),
      pipe_rx_3_sigs => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 25)),
      pipe_rx_4_sigs => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 25)),
      pipe_rx_5_sigs => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 25)),
      pipe_rx_6_sigs => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 25)),
      pipe_rx_7_sigs => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 25))
    );
END top_axi_pcie_0_0_arch;

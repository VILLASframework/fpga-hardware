--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4.1 (win64) Build 1431336 Fri Dec 11 14:52:45 MST 2015
--Date        : Thu Apr 21 10:55:07 2016
--Host        : E265 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target pcie.bd
--Design      : pcie
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pcie is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of pcie : entity is "pcie,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pcie,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,synth_mode=OOC_per_BD}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of pcie : entity is "pcie.hwdef";
end pcie;

architecture STRUCTURE of pcie is
  component pcie_axi_pcie_0_0 is
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
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
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
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
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
  end component pcie_axi_pcie_0_0;
  component pcie_rst_axi_pcie_0_125M_0 is
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
  end component pcie_rst_axi_pcie_0_125M_0;
  component pcie_util_ds_buf_0_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pcie_util_ds_buf_0_0;
  component pcie_pcie_msi_requester_0_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    i_irq : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_irq : out STD_LOGIC;
    o_vector_num : out STD_LOGIC_VECTOR ( 4 downto 0 );
    i_msi_enabled : in STD_LOGIC;
    i_granted : in STD_LOGIC;
    i_vector_width : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctl_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctl_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctl_awvalid : in STD_LOGIC;
    s_axi_ctl_awready : out STD_LOGIC;
    s_axi_ctl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctl_wvalid : in STD_LOGIC;
    s_axi_ctl_wready : out STD_LOGIC;
    s_axi_ctl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctl_bvalid : out STD_LOGIC;
    s_axi_ctl_bready : in STD_LOGIC;
    s_axi_ctl_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctl_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctl_arvalid : in STD_LOGIC;
    s_axi_ctl_arready : out STD_LOGIC;
    s_axi_ctl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctl_rvalid : out STD_LOGIC;
    s_axi_ctl_rready : in STD_LOGIC
  );
  end component pcie_pcie_msi_requester_0_0;
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_1_ARREADY : STD_LOGIC;
  signal S_AXI_1_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_ARVALID : STD_LOGIC;
  signal S_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXI_1_AWREADY : STD_LOGIC;
  signal S_AXI_1_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_AWVALID : STD_LOGIC;
  signal S_AXI_1_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_BREADY : STD_LOGIC;
  signal S_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_BVALID : STD_LOGIC;
  signal S_AXI_1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal S_AXI_1_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_RLAST : STD_LOGIC;
  signal S_AXI_1_RREADY : STD_LOGIC;
  signal S_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_RVALID : STD_LOGIC;
  signal S_AXI_1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal S_AXI_1_WLAST : STD_LOGIC;
  signal S_AXI_1_WREADY : STD_LOGIC;
  signal S_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S_AXI_1_WVALID : STD_LOGIC;
  signal aux_reset_in_1 : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M05_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M05_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M05_AXI_WVALID : STD_LOGIC;
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
  signal i_irq_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pcie_msi_requester_0_o_irq : STD_LOGIC;
  signal pcie_msi_requester_0_o_vector_num : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal pcie_ref_1_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pcie_ref_1_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_1 : STD_LOGIC;
  signal rst_axi_pcie_0_125M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_ctl_1_1_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_ctl_1_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_ctl_1_1_ARREADY : STD_LOGIC;
  signal s_axi_ctl_1_1_ARVALID : STD_LOGIC;
  signal s_axi_ctl_1_1_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_ctl_1_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_ctl_1_1_AWREADY : STD_LOGIC;
  signal s_axi_ctl_1_1_AWVALID : STD_LOGIC;
  signal s_axi_ctl_1_1_BREADY : STD_LOGIC;
  signal s_axi_ctl_1_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_ctl_1_1_BVALID : STD_LOGIC;
  signal s_axi_ctl_1_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_ctl_1_1_RREADY : STD_LOGIC;
  signal s_axi_ctl_1_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_ctl_1_1_RVALID : STD_LOGIC;
  signal s_axi_ctl_1_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_ctl_1_1_WREADY : STD_LOGIC;
  signal s_axi_ctl_1_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_ctl_1_1_WVALID : STD_LOGIC;
  signal util_ds_buf_0_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
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
  S_AXI_1_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  S_AXI_1_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  S_AXI_1_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  S_AXI_1_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  S_AXI_1_ARVALID <= S_AXI_arvalid;
  S_AXI_1_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  S_AXI_1_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  S_AXI_1_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
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
  S_AXI_CTL_IRQ_arready <= s_axi_ctl_1_1_ARREADY;
  S_AXI_CTL_IRQ_awready <= s_axi_ctl_1_1_AWREADY;
  S_AXI_CTL_IRQ_bresp(1 downto 0) <= s_axi_ctl_1_1_BRESP(1 downto 0);
  S_AXI_CTL_IRQ_bvalid <= s_axi_ctl_1_1_BVALID;
  S_AXI_CTL_IRQ_rdata(31 downto 0) <= s_axi_ctl_1_1_RDATA(31 downto 0);
  S_AXI_CTL_IRQ_rresp(1 downto 0) <= s_axi_ctl_1_1_RRESP(1 downto 0);
  S_AXI_CTL_IRQ_rvalid <= s_axi_ctl_1_1_RVALID;
  S_AXI_CTL_IRQ_wready <= s_axi_ctl_1_1_WREADY;
  S_AXI_CTL_arready <= axi_interconnect_0_M05_AXI_ARREADY;
  S_AXI_CTL_awready <= axi_interconnect_0_M05_AXI_AWREADY;
  S_AXI_CTL_bresp(1 downto 0) <= axi_interconnect_0_M05_AXI_BRESP(1 downto 0);
  S_AXI_CTL_bvalid <= axi_interconnect_0_M05_AXI_BVALID;
  S_AXI_CTL_rdata(31 downto 0) <= axi_interconnect_0_M05_AXI_RDATA(31 downto 0);
  S_AXI_CTL_rresp(1 downto 0) <= axi_interconnect_0_M05_AXI_RRESP(1 downto 0);
  S_AXI_CTL_rvalid <= axi_interconnect_0_M05_AXI_RVALID;
  S_AXI_CTL_wready <= axi_interconnect_0_M05_AXI_WREADY;
  S_AXI_arready <= S_AXI_1_ARREADY;
  S_AXI_awready <= S_AXI_1_AWREADY;
  S_AXI_bid(1 downto 0) <= S_AXI_1_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= S_AXI_1_BRESP(1 downto 0);
  S_AXI_bvalid <= S_AXI_1_BVALID;
  S_AXI_rdata(127 downto 0) <= S_AXI_1_RDATA(127 downto 0);
  S_AXI_rid(1 downto 0) <= S_AXI_1_RID(1 downto 0);
  S_AXI_rlast <= S_AXI_1_RLAST;
  S_AXI_rresp(1 downto 0) <= S_AXI_1_RRESP(1 downto 0);
  S_AXI_rvalid <= S_AXI_1_RVALID;
  S_AXI_wready <= S_AXI_1_WREADY;
  aux_reset_in_1 <= perstn;
  axi_aclk_out <= axi_pcie_0_axi_aclk_out1;
  axi_ctl_aclk_out <= axi_pcie_0_axi_ctl_aclk_out;
  axi_interconnect_0_M05_AXI_ARADDR(31 downto 0) <= S_AXI_CTL_araddr(31 downto 0);
  axi_interconnect_0_M05_AXI_ARVALID <= S_AXI_CTL_arvalid;
  axi_interconnect_0_M05_AXI_AWADDR(31 downto 0) <= S_AXI_CTL_awaddr(31 downto 0);
  axi_interconnect_0_M05_AXI_AWVALID <= S_AXI_CTL_awvalid;
  axi_interconnect_0_M05_AXI_BREADY <= S_AXI_CTL_bready;
  axi_interconnect_0_M05_AXI_RREADY <= S_AXI_CTL_rready;
  axi_interconnect_0_M05_AXI_WDATA(31 downto 0) <= S_AXI_CTL_wdata(31 downto 0);
  axi_interconnect_0_M05_AXI_WSTRB(3 downto 0) <= S_AXI_CTL_wstrb(3 downto 0);
  axi_interconnect_0_M05_AXI_WVALID <= S_AXI_CTL_wvalid;
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
  i_irq_1(7 downto 0) <= msi_irq(7 downto 0);
  interconnect_aresetn(0) <= S00_ARESETN_1(0);
  pcie_ref_1_CLK_N(0) <= PCIE_REFCLK_clk_n(0);
  pcie_ref_1_CLK_P(0) <= PCIE_REFCLK_clk_p(0);
  peripheral_aresetn(0) <= rst_axi_pcie_0_125M_peripheral_aresetn(0);
  reset_1 <= reset;
  s_axi_ctl_1_1_ARADDR(3 downto 0) <= S_AXI_CTL_IRQ_araddr(3 downto 0);
  s_axi_ctl_1_1_ARPROT(2 downto 0) <= S_AXI_CTL_IRQ_arprot(2 downto 0);
  s_axi_ctl_1_1_ARVALID <= S_AXI_CTL_IRQ_arvalid;
  s_axi_ctl_1_1_AWADDR(3 downto 0) <= S_AXI_CTL_IRQ_awaddr(3 downto 0);
  s_axi_ctl_1_1_AWPROT(2 downto 0) <= S_AXI_CTL_IRQ_awprot(2 downto 0);
  s_axi_ctl_1_1_AWVALID <= S_AXI_CTL_IRQ_awvalid;
  s_axi_ctl_1_1_BREADY <= S_AXI_CTL_IRQ_bready;
  s_axi_ctl_1_1_RREADY <= S_AXI_CTL_IRQ_rready;
  s_axi_ctl_1_1_WDATA(31 downto 0) <= S_AXI_CTL_IRQ_wdata(31 downto 0);
  s_axi_ctl_1_1_WSTRB(3 downto 0) <= S_AXI_CTL_IRQ_wstrb(3 downto 0);
  s_axi_ctl_1_1_WVALID <= S_AXI_CTL_IRQ_wvalid;
axi_pcie_0: component pcie_axi_pcie_0_0
     port map (
      INTX_MSI_Grant => axi_pcie_0_INTX_MSI_Grant,
      INTX_MSI_Request => pcie_msi_requester_0_o_irq,
      MSI_Vector_Num(4 downto 0) => pcie_msi_requester_0_o_vector_num(4 downto 0),
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
      s_axi_arid(1 downto 0) => S_AXI_1_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => S_AXI_1_ARLEN(7 downto 0),
      s_axi_arready => S_AXI_1_ARREADY,
      s_axi_arregion(3 downto 0) => S_AXI_1_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => S_AXI_1_ARSIZE(2 downto 0),
      s_axi_arvalid => S_AXI_1_ARVALID,
      s_axi_awaddr(31 downto 0) => S_AXI_1_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => S_AXI_1_AWBURST(1 downto 0),
      s_axi_awid(1 downto 0) => S_AXI_1_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => S_AXI_1_AWLEN(7 downto 0),
      s_axi_awready => S_AXI_1_AWREADY,
      s_axi_awregion(3 downto 0) => S_AXI_1_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => S_AXI_1_AWSIZE(2 downto 0),
      s_axi_awvalid => S_AXI_1_AWVALID,
      s_axi_bid(1 downto 0) => S_AXI_1_BID(1 downto 0),
      s_axi_bready => S_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S_AXI_1_BVALID,
      s_axi_ctl_araddr(31 downto 0) => axi_interconnect_0_M05_AXI_ARADDR(31 downto 0),
      s_axi_ctl_arready => axi_interconnect_0_M05_AXI_ARREADY,
      s_axi_ctl_arvalid => axi_interconnect_0_M05_AXI_ARVALID,
      s_axi_ctl_awaddr(31 downto 0) => axi_interconnect_0_M05_AXI_AWADDR(31 downto 0),
      s_axi_ctl_awready => axi_interconnect_0_M05_AXI_AWREADY,
      s_axi_ctl_awvalid => axi_interconnect_0_M05_AXI_AWVALID,
      s_axi_ctl_bready => axi_interconnect_0_M05_AXI_BREADY,
      s_axi_ctl_bresp(1 downto 0) => axi_interconnect_0_M05_AXI_BRESP(1 downto 0),
      s_axi_ctl_bvalid => axi_interconnect_0_M05_AXI_BVALID,
      s_axi_ctl_rdata(31 downto 0) => axi_interconnect_0_M05_AXI_RDATA(31 downto 0),
      s_axi_ctl_rready => axi_interconnect_0_M05_AXI_RREADY,
      s_axi_ctl_rresp(1 downto 0) => axi_interconnect_0_M05_AXI_RRESP(1 downto 0),
      s_axi_ctl_rvalid => axi_interconnect_0_M05_AXI_RVALID,
      s_axi_ctl_wdata(31 downto 0) => axi_interconnect_0_M05_AXI_WDATA(31 downto 0),
      s_axi_ctl_wready => axi_interconnect_0_M05_AXI_WREADY,
      s_axi_ctl_wstrb(3 downto 0) => axi_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      s_axi_ctl_wvalid => axi_interconnect_0_M05_AXI_WVALID,
      s_axi_rdata(127 downto 0) => S_AXI_1_RDATA(127 downto 0),
      s_axi_rid(1 downto 0) => S_AXI_1_RID(1 downto 0),
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
pcie_msi_requester_0: component pcie_pcie_msi_requester_0_0
     port map (
      aresetn => rst_axi_pcie_0_125M_peripheral_aresetn(0),
      clk => axi_pcie_0_axi_aclk_out1,
      i_granted => axi_pcie_0_INTX_MSI_Grant,
      i_irq(7 downto 0) => i_irq_1(7 downto 0),
      i_msi_enabled => axi_pcie_0_MSI_enable,
      i_vector_width(2 downto 0) => axi_pcie_0_MSI_Vector_Width(2 downto 0),
      o_irq => pcie_msi_requester_0_o_irq,
      o_vector_num(4 downto 0) => pcie_msi_requester_0_o_vector_num(4 downto 0),
      s_axi_ctl_araddr(3 downto 0) => s_axi_ctl_1_1_ARADDR(3 downto 0),
      s_axi_ctl_arprot(2 downto 0) => s_axi_ctl_1_1_ARPROT(2 downto 0),
      s_axi_ctl_arready => s_axi_ctl_1_1_ARREADY,
      s_axi_ctl_arvalid => s_axi_ctl_1_1_ARVALID,
      s_axi_ctl_awaddr(3 downto 0) => s_axi_ctl_1_1_AWADDR(3 downto 0),
      s_axi_ctl_awprot(2 downto 0) => s_axi_ctl_1_1_AWPROT(2 downto 0),
      s_axi_ctl_awready => s_axi_ctl_1_1_AWREADY,
      s_axi_ctl_awvalid => s_axi_ctl_1_1_AWVALID,
      s_axi_ctl_bready => s_axi_ctl_1_1_BREADY,
      s_axi_ctl_bresp(1 downto 0) => s_axi_ctl_1_1_BRESP(1 downto 0),
      s_axi_ctl_bvalid => s_axi_ctl_1_1_BVALID,
      s_axi_ctl_rdata(31 downto 0) => s_axi_ctl_1_1_RDATA(31 downto 0),
      s_axi_ctl_rready => s_axi_ctl_1_1_RREADY,
      s_axi_ctl_rresp(1 downto 0) => s_axi_ctl_1_1_RRESP(1 downto 0),
      s_axi_ctl_rvalid => s_axi_ctl_1_1_RVALID,
      s_axi_ctl_wdata(31 downto 0) => s_axi_ctl_1_1_WDATA(31 downto 0),
      s_axi_ctl_wready => s_axi_ctl_1_1_WREADY,
      s_axi_ctl_wstrb(3 downto 0) => s_axi_ctl_1_1_WSTRB(3 downto 0),
      s_axi_ctl_wvalid => s_axi_ctl_1_1_WVALID
    );
rst_axi_pcie_0_125M: component pcie_rst_axi_pcie_0_125M_0
     port map (
      aux_reset_in => aux_reset_in_1,
      bus_struct_reset(0) => NLW_rst_axi_pcie_0_125M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => axi_pcie_0_mmcm_lock,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => S00_ARESETN_1(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_axi_pcie_0_125M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_axi_pcie_0_125M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_axi_pcie_0_125M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => axi_pcie_0_axi_aclk_out1
    );
util_ds_buf_0: component pcie_util_ds_buf_0_0
     port map (
      IBUF_DS_N(0) => pcie_ref_1_CLK_N(0),
      IBUF_DS_ODIV2(0) => NLW_util_ds_buf_0_IBUF_DS_ODIV2_UNCONNECTED(0),
      IBUF_DS_P(0) => pcie_ref_1_CLK_P(0),
      IBUF_OUT(0) => util_ds_buf_0_IBUF_OUT(0)
    );
end STRUCTURE;

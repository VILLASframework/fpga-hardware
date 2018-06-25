#######################################################################
# User constraints for VC707 boards
#
# Author: Steffen Vogel <steffen.vogel@rwth-aachen.de>
#

#######################################################################
# PCIE Interface
#

# PCIe 1x lane
set_property LOC GTXE2_CHANNEL_X1Y11 [get_cells {top_i/axi_pcie_0/U0/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN W1 [get_ports {pcie_mgt_txn[0]}]
set_property PACKAGE_PIN Y3 [get_ports {pcie_mgt_rxn[0]}]
set_property PACKAGE_PIN Y4 [get_ports {pcie_mgt_rxp[0]}]
set_property PACKAGE_PIN W2 [get_ports {pcie_mgt_txp[0]}]

# PCIE_CLK_QO_N / P
set_property PACKAGE_PIN AB8 [get_ports {pcie_ref_clk_p[0]}]
set_property PACKAGE_PIN AB7 [get_ports {pcie_ref_clk_n[0]}]

# PCIE_PERST
set_property PACKAGE_PIN AV35 [get_ports perstn]
set_property IOSTANDARD LVCMOS18 [get_ports perstn]

#######################################################################
# RTDS Interface
#
# Checkout: GTFPGA_VC707_UserGuide_rev1.pdf
#

# SGMIICLK_Q0_N / P (MGTREFCLK)
set_property PACKAGE_PIN AH8 [get_ports sfp_clk_p]
set_property PACKAGE_PIN AH7 [get_ports sfp_clk_n]

# SYSCLK (200 Mhz)
set_property PACKAGE_PIN E19 [get_ports sys_clk_p]
set_property PACKAGE_PIN E18 [get_ports sys_clk_n]
set_property IOSTANDARD LVDS [get_ports -regex sys_clk_(p|n)]

# SFP Interface
set_property PACKAGE_PIN AL5 [get_ports sfp_1_rxn]
set_property PACKAGE_PIN AL6 [get_ports sfp_1_rxp]
set_property PACKAGE_PIN AM3 [get_ports sfp_1_txn]
set_property PACKAGE_PIN AM4 [get_ports sfp_1_txp]
set_property PACKAGE_PIN BB38 [get_ports sfp_1_rx_los]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_1_rx_los]






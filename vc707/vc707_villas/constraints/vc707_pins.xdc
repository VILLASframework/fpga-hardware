#######################################################################
# User constraints for VC707 boards
#
# Author: Steffen Vogel <steffen.vogel@rwth-aachen.de>
#

#set_property PACKAGE_PIN AV40 [get_ports reset]
#set_property IOSTANDARD LVCMOS18 [get_ports reset]

#######################################################################
# PCIE Interface
#

# PCIe 4x lane

set_property LOC GTXE2_CHANNEL_X1Y11 [get_cells {top_i/pcie_0/axi_pcie_0/U0/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN Y3 [get_ports {pcie_mgt_rxn[0]}]
set_property PACKAGE_PIN Y4 [get_ports {pcie_mgt_rxp[0]}]
set_property PACKAGE_PIN W1 [get_ports {pcie_mgt_txn[0]}]
set_property PACKAGE_PIN W2 [get_ports {pcie_mgt_txp[0]}]

set_property LOC GTXE2_CHANNEL_X1Y10 [get_cells {top_i/pcie_0/axi_pcie_0/U0/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN AA5 [get_ports {pcie_mgt_rxn[1]}]
set_property PACKAGE_PIN AA6 [get_ports {pcie_mgt_rxp[1]}]
set_property PACKAGE_PIN AA1 [get_ports {pcie_mgt_txn[1]}]
set_property PACKAGE_PIN AA2 [get_ports {pcie_mgt_txp[1]}]

set_property LOC GTXE2_CHANNEL_X1Y9 [get_cells {top_i/pcie_0/axi_pcie_0/U0/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN AB3 [get_ports {pcie_mgt_rxn[2]}]
set_property PACKAGE_PIN AB4 [get_ports {pcie_mgt_rxp[2]}]
set_property PACKAGE_PIN AC1 [get_ports {pcie_mgt_txn[2]}]
set_property PACKAGE_PIN AC2 [get_ports {pcie_mgt_txp[2]}]

set_property LOC GTXE2_CHANNEL_X1Y8 [get_cells {top_i/pcie_0/axi_pcie_0/U0/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN AE1 [get_ports {pcie_mgt_txn[3]}]
set_property PACKAGE_PIN AC5 [get_ports {pcie_mgt_rxn[3]}]
set_property PACKAGE_PIN AC6 [get_ports {pcie_mgt_rxp[3]}]
set_property PACKAGE_PIN AE2 [get_ports {pcie_mgt_txp[3]}]

# PCIE_CLK_QO_N / P
set_property PACKAGE_PIN AB8 [get_ports {pcie_ref_clk_p[0]}]
set_property PACKAGE_PIN AB7 [get_ports {pcie_ref_clk_n[0]}]

# PCIE_PERST
set_property PACKAGE_PIN AV35 [get_ports perstn]
set_property IOSTANDARD LVCMOS18 [get_ports perstn]

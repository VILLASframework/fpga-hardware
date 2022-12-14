# User constraints for VC707 boards
#
# @author Steffen Vogel <steffen.vogel@rwth-aachen.de>
# @author Hatim Kanchwala <hatim@hatimak.me>
#

# PCIE Interface 4x lane
set_property LOC GTXE2_CHANNEL_X1Y11 [get_cells {top_i/pcie_0/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN Y3 [get_ports {pcie_mgt_rxn[0]}]
set_property PACKAGE_PIN Y4 [get_ports {pcie_mgt_rxp[0]}]
set_property PACKAGE_PIN W1 [get_ports {pcie_mgt_txn[0]}]
set_property PACKAGE_PIN W2 [get_ports {pcie_mgt_txp[0]}]

set_property LOC GTXE2_CHANNEL_X1Y10 [get_cells {top_i/pcie_0/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN AA5 [get_ports {pcie_mgt_rxn[1]}]
set_property PACKAGE_PIN AA6 [get_ports {pcie_mgt_rxp[1]}]
set_property PACKAGE_PIN AA1 [get_ports {pcie_mgt_txn[1]}]
set_property PACKAGE_PIN AA2 [get_ports {pcie_mgt_txp[1]}]

set_property LOC GTXE2_CHANNEL_X1Y9 [get_cells {top_i/pcie_0/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN AB3 [get_ports {pcie_mgt_rxn[2]}]
set_property PACKAGE_PIN AB4 [get_ports {pcie_mgt_rxp[2]}]
set_property PACKAGE_PIN AC1 [get_ports {pcie_mgt_txn[2]}]
set_property PACKAGE_PIN AC2 [get_ports {pcie_mgt_txp[2]}]

set_property LOC GTXE2_CHANNEL_X1Y8 [get_cells {top_i/pcie_0/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN AC5 [get_ports {pcie_mgt_rxn[3]}]
set_property PACKAGE_PIN AC6 [get_ports {pcie_mgt_rxp[3]}]
set_property PACKAGE_PIN AE1 [get_ports {pcie_mgt_txn[3]}]
set_property PACKAGE_PIN AE2 [get_ports {pcie_mgt_txp[3]}]

# PCIE_CLK_QO_N / P
set_property PACKAGE_PIN AB8 [get_ports {pcie_ref_clk_p[0]}]
set_property PACKAGE_PIN AB7 [get_ports {pcie_ref_clk_n[0]}]

# PCIE_PERST
set_property -dict {PACKAGE_PIN AV35 IOSTANDARD LVCMOS18} [get_ports perstn]

# Linear BPI Flash Memory
set_property PACKAGE_PIN AJ28 [get_ports bpi_a0]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a0]
set_property PACKAGE_PIN AH28 [get_ports bpi_a1]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a1]
set_property PACKAGE_PIN AG31 [get_ports bpi_a2]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a2]
set_property PACKAGE_PIN AF30 [get_ports bpi_a3]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a3]
set_property PACKAGE_PIN AK29 [get_ports bpi_a4]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a4]
set_property PACKAGE_PIN AK28 [get_ports bpi_a5]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a5]
set_property PACKAGE_PIN AG29 [get_ports bpi_a6]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a6]
set_property PACKAGE_PIN AK30 [get_ports bpi_a7]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a7]
set_property PACKAGE_PIN AJ30 [get_ports bpi_a8]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a8]
set_property PACKAGE_PIN AH30 [get_ports bpi_a9]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a9]
set_property PACKAGE_PIN AH29 [get_ports bpi_a10]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a10]
set_property PACKAGE_PIN AL30 [get_ports bpi_a11]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a11]
set_property PACKAGE_PIN AL29 [get_ports bpi_a12]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a12]
set_property PACKAGE_PIN AN33 [get_ports bpi_a13]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a13]
set_property PACKAGE_PIN AM33 [get_ports bpi_a14]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a14]
set_property PACKAGE_PIN AM32 [get_ports bpi_a15]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a15]
set_property PACKAGE_PIN AV41 [get_ports bpi_a16]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a16]
set_property PACKAGE_PIN AU41 [get_ports bpi_a17]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a17]
set_property PACKAGE_PIN BA42 [get_ports bpi_a18]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a18]
set_property PACKAGE_PIN AU42 [get_ports bpi_a19]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a19]
set_property PACKAGE_PIN AT41 [get_ports bpi_a20]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a20]
set_property PACKAGE_PIN BA40 [get_ports bpi_a21]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a21]
set_property PACKAGE_PIN BA39 [get_ports bpi_a22]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a22]
set_property PACKAGE_PIN BB39 [get_ports bpi_a23]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a23]
set_property PACKAGE_PIN AW42 [get_ports bpi_a24]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a24]
set_property PACKAGE_PIN AW41 [get_ports bpi_a25]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_a25]

set_property PACKAGE_PIN AM36 [get_ports bpi_d0]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d0]
set_property PACKAGE_PIN AN36 [get_ports bpi_d1]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d1]
set_property PACKAGE_PIN AJ36 [get_ports bpi_d2]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d2]
set_property PACKAGE_PIN AJ37 [get_ports bpi_d3]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d3]
set_property PACKAGE_PIN AK37 [get_ports bpi_d4]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d4]
set_property PACKAGE_PIN AL37 [get_ports bpi_d5]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d5]
set_property PACKAGE_PIN AN35 [get_ports bpi_d6]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d6]
set_property PACKAGE_PIN AP35 [get_ports bpi_d7]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d7]
set_property PACKAGE_PIN AM37 [get_ports bpi_d8]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d8]
set_property PACKAGE_PIN AG33 [get_ports bpi_d9]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d9]
set_property PACKAGE_PIN AH33 [get_ports bpi_d10]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d10]
set_property PACKAGE_PIN AK35 [get_ports bpi_d11]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d11]
set_property PACKAGE_PIN AL35 [get_ports bpi_d12]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d12]
set_property PACKAGE_PIN AJ31 [get_ports bpi_d13]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d13]
set_property PACKAGE_PIN AH34 [get_ports bpi_d14]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d14]
set_property PACKAGE_PIN AJ35 [get_ports bpi_d15]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_d15]

set_property PACKAGE_PIN AM34 [get_ports bpi_wait]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_wait]
set_property PACKAGE_PIN BB41 [get_ports bpi_fwe_b]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_fwe_b]
set_property PACKAGE_PIN BA41 [get_ports bpi_oe_b]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_oe_b]
set_property PACKAGE_PIN AP37 [get_ports fpga_emcclk]
set_property IOSTANDARD LVCMOS18 [get_ports fpga_emcclk]
set_property PACKAGE_PIN AL36 [get_ports bpi_ce_b]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_ce_b]
set_property PACKAGE_PIN AY37 [get_ports bpi_adv_b]
set_property IOSTANDARD LVCMOS18 [get_ports bpi_adv_b]
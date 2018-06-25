#######################################################################
# User constraints for VC707 boards
#
# Author: Steffen Vogel <steffen.vogel@rwth-aachen.de>
#

#######################################################################
# RTDS Interface
#
# Checkout: GTFPGA_VC707_UserGuide_rev1.pdf
#

# SGMIICLK_Q0_N / P (MGTREFCLK, 125 Mhz)
set_property PACKAGE_PIN AH7 [get_ports clkbuf_clk_n]
set_property PACKAGE_PIN AH8 [get_ports clkbuf_clk_p]

# SYSCLK (200 Mhz)
set_property PACKAGE_PIN E19 [get_ports sys_clk_clk_p]
set_property PACKAGE_PIN E18 [get_ports sys_clk_clk_n]
set_property IOSTANDARD LVDS [get_ports -regex sys_clk_clk_(p|n)]

# SFP Interface
set_property PACKAGE_PIN AL5 [get_ports sfp_rxn]
set_property PACKAGE_PIN AL6 [get_ports sfp_rxp]
set_property PACKAGE_PIN AM3 [get_ports sfp_txn]
set_property PACKAGE_PIN AM4 [get_ports sfp_txp]
set_property PACKAGE_PIN BB38 [get_ports sfp_rx_los]
set_property PACKAGE_PIN AP33 [get_ports sfp_tx_disable]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_rx_los]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable]















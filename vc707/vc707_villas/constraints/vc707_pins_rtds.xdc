# User constraints for VC707 boards
#
# @author Steffen Vogel <steffen.vogel@rwth-aachen.de>
# @author Hatim Kanchwala <hatim@hatimak.me>

# SGMIICLK_Q0_N / P (MGTREFCLK, 125 Mhz)
set_property -dict {PACKAGE_PIN AH7} [get_ports clkbuf_clk_n]
set_property -dict {PACKAGE_PIN AH8} [get_ports clkbuf_clk_p]


# Free running 156 MHz clock, called drpclk on the Aurora
set_property -dict {PACKAGE_PIN AK34 IOSTANDARD LVDS} [get_ports user_clk_clk_p]
set_property -dict {PACKAGE_PIN AL34 IOSTANDARD LVDS} [get_ports user_clk_clk_n]


# SFP Interface
set_property -dict {PACKAGE_PIN AL5} [get_ports sfp_rxn]
set_property -dict {PACKAGE_PIN AL6} [get_ports sfp_rxp]
set_property -dict {PACKAGE_PIN AM3} [get_ports sfp_txn]
set_property -dict {PACKAGE_PIN AM4} [get_ports sfp_txp]
set_property -dict {PACKAGE_PIN AP33 IOSTANDARD LVCMOS18} [get_ports sfp_tx_disable]

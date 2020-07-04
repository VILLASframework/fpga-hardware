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


# On-board SFP Interface
set_property -dict {PACKAGE_PIN AL5} [get_ports sfp_rxn]
set_property -dict {PACKAGE_PIN AL6} [get_ports sfp_rxp]
set_property -dict {PACKAGE_PIN AM3} [get_ports sfp_txn]
set_property -dict {PACKAGE_PIN AM4} [get_ports sfp_txp]
set_property -dict {PACKAGE_PIN AP33 IOSTANDARD LVCMOS18} [get_ports sfp_tx_disable]

# Trenz-Electronic TEF0008
#  connected to Xilinx VC707 J35

# Clock signals                                                # Signal    FMC pin
set_property -dict {PACKAGE_PIN A10} [get_ports tef_gbtclk0_p] # GBTCLK0_P D4
set_property -dict {PACKAGE_PIN  A9} [get_ports tef_gbtclk0_n] # GBTCLK0_N D5 
set_property -dict {PACKAGE_PIN E10} [get_ports tef_gbtclk1_p] # GBTCLK1_P B20
set_property -dict {PACKAGE_PIN  E9} [get_ports tef_gbtclk1_n] # GBTCLK1_N B21
 
# SFP cage J4                                                 # Signal     FMC pin
set_property -dict {PACKAGE_PIN  D7} [get_ports tef_sfp_a_rxn] # SFPA_RD_N  C7
set_property -dict {PACKAGE_PIN  D8} [get_ports tef_sfp_a_rxp] # SFPA_RD_P  C6
set_property -dict {PACKAGE_PIN  E1} [get_ports tef_sfp_a_txn] # SFPA_TD_N  C3
set_property -dict {PACKAGE_PIN  E2} [get_ports tef_sfp_a_txp] # SFPA_TD_P  C2

# SFP cage J5                                                 # Signal     FMC pin
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_b_rxn] # SFPB_RD_N  XX
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_b_rxp] # SFPB_RD_P  XX
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_b_txn] # SFPB_TD_N  XX
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_b_txp] # SFPB_TD_P  XX

# SFP cage J6                                                 # Signal     FMC pin
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_c_rxn] # SFPC_RD_N  XX
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_c_rxp] # SFPC_RD_P  XX
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_c_txn] # SFPC_TD_N  XX
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_c_txp] # SFPC_TD_P  XX

# SFP cage J7                                                 # Signal     FMC pin
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_d_rxn] # SFPD_RD_N  XX
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_d_rxp] # SFPD_RD_P  XX
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_d_txn] # SFPD_TD_N  XX
set_property -dict {PACKAGE_PIN  XX} [get_ports tef_sfp_d_txp] # SFPD_TD_P  XX

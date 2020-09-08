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

# # Trenz-Electronic TEF0008
# #  source: https://wiki.trenz-electronic.de/display/PD/TEF0008+TRM#TEF0008TRM-MGTLanes
# #  connected to Xilinx VC707 J35 (FMC 1 HPC)
# 
# # Clock signals                                                           # Signal        FMC pin     name
# set_property -dict {PACKAGE_PIN A10} [get_ports fmc1_gbtclk0_p]           # GBTCLK0_P     D4          GBTCLK0_M2C_P
# set_property -dict {PACKAGE_PIN  A9} [get_ports fmc1_gbtclk0_n]           # GBTCLK0_N     D5          GBTCLK0_M2C_N
# set_property -dict {PACKAGE_PIN E10} [get_ports fmc1_gbtclk1_p]           # GBTCLK1_P     B20         GBTCLK1_M2C_P
# set_property -dict {PACKAGE_PIN  E9} [get_ports fmc1_gbtclk1_n]           # GBTCLK1_N     B21         GBTCLK1_M2C_N
#  
# # TEF0008 SFP cage J4                                                     # Signal         FMC pin     name
# set_property -dict {PACKAGE_PIN  D7} [get_ports fmc1_sfp0_rxn]            # SFPA_RD_N      C7          DP0_M2C_N
# set_property -dict {PACKAGE_PIN  D8} [get_ports fmc1_sfp0_rxp]            # SFPA_RD_P      C6          DP0_M2C_P
# set_property -dict {PACKAGE_PIN  E1} [get_ports fmc1_sfp0_txn]            # SFPA_TD_N      C3          DP0_C2M_N
# set_property -dict {PACKAGE_PIN  E2} [get_ports fmc1_sfp0_txp]            # SFPA_TD_P      C2          DP0_C2M_P
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_tx_fault]     # SFPA_TX_FAULT   XXX        XXX TODO!!!
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_tx_disable]   # SFPA_TX_DISABLE XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_mod_def2]     # SFPA_SDA        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_mod_def1]     # SFPA_SCL        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_mod_def0]     # SFPA_M-DEF0     XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_rate_sel]     # SFPA_RS0        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_los]          # SFPA_LOS        XXX        XXX
# 
# # TEF0008 SFP cage J5                                                     # Signal         FMC pin     name
# set_property -dict {PACKAGE_PIN  C5} [get_ports fmc1_sfp1_rxn]            # SFPB_RD_N      A3          DP1_M2C_N
# set_property -dict {PACKAGE_PIN  C6} [get_ports fmc1_sfp1_rxp]            # SFPB_RD_P      A2          DP1_M2C_P
# set_property -dict {PACKAGE_PIN  D3} [get_ports fmc1_sfp1_txn]            # SFPB_TD_N      A23         DP1_C2M_N
# set_property -dict {PACKAGE_PIN  D4} [get_ports fmc1_sfp1_txp]            # SFPB_TD_P      A22         DP1_C2M_P
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_tx_fault]     # SFPB_TX_FAULT   XXX        XXX TODO!!!
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_tx_disable]   # SFPB_TX_DISABLE XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_mod_def2]     # SFPB_SDA        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_mod_def1]     # SFPB_SCL        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_mod_def0]     # SFPB_M-DEF0     XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_rate_sel]     # SFPB_RS0        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_los]          # SFPB_LOS        XXX        XXX
# 
# # TEF0008 SFP cage J6                                                     # Signal         FMC pin     name
# set_property -dict {PACKAGE_PIN  B7} [get_ports fmc1_sfp2_rxn]            # SFPC_RD_N      A7          DP2_M2C_N
# set_property -dict {PACKAGE_PIN  B8} [get_ports fmc1_sfp2_rxp]            # SFPC_RD_P      A6          DP2_M2C_P
# set_property -dict {PACKAGE_PIN  C1} [get_ports fmc1_sfp2_txn]            # SFPC_TD_N      A27         DP2_C2M_N
# set_property -dict {PACKAGE_PIN  C2} [get_ports fmc1_sfp2_txp]            # SFPC_TD_P      A26         DP2_C2M_P
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_tx_fault]     # SFPC_TX_FAULT   XXX        XXX TODO!!!
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_tx_disable]   # SFPC_TX_DISABLE XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_mod_def2]     # SFPC_SDA        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_mod_def1]     # SFPC_SCL        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_mod_def0]     # SFPC_M-DEF0     XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_rate_sel]     # SFPC_RS0        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_los]          # SFPC_LOS        XXX        XXX
# 
# # TEF0008 SFP cage J7                                                     # Signal         FMC pin     name
# set_property -dict {PACKAGE_PIN  A5} [get_ports fmc1_sfp3_rxn]            # SFPD_RD_N      A11         DP3_M2C_N
# set_property -dict {PACKAGE_PIN  A6} [get_ports fmc1_sfp3_rxp]            # SFPD_RD_P      A10         DP3_M2C_P
# set_property -dict {PACKAGE_PIN  B3} [get_ports fmc1_sfp3_txn]            # SFPD_TD_N      A31         DP3_C2M_N
# set_property -dict {PACKAGE_PIN  B4} [get_ports fmc1_sfp3_txp]            # SFPD_TD_P      A30         DP3_C2M_P
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_tx_fault]     # SFPD_TX_FAULT   XXX        XXX TODO!!!
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_tx_disable]   # SFPD_TX_DISABLE XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_mod_def2]     # SFPD_SDA        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_mod_def1]     # SFPD_SCL        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_mod_def0]     # SFPD_M-DEF0     XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_rate_sel]     # SFPD_RS0        XXX        XXX
# # set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_los]          # SFPD_LOS        XXX        XXX


# Faster Technologies FM-S18
#  source: FMS18_User_Manual_P4a.pdf (page 19)
#  connected to Xilinx VC707 J35 (FMC 1 HPC)

# Clock signals                                                           # Signal         FMC pin     name
set_property -dict {PACKAGE_PIN A10} [get_ports fmc1_gbtclk0_p]           # GBTCLK0_P      D4          GBTCLK0_M2C_P
set_property -dict {PACKAGE_PIN  A9} [get_ports fmc1_gbtclk0_n]           # GBTCLK0_N      D5          GBTCLK0_M2C_N
set_property -dict {PACKAGE_PIN E10} [get_ports fmc1_gbtclk1_p]           # GBTCLK1_P      B20         GBTCLK1_M2C_P
set_property -dict {PACKAGE_PIN  E9} [get_ports fmc1_gbtclk1_n]           # GBTCLK1_N      B21         GBTCLK1_M2C_N
 
# FM-S18 Channel 0                                                        # Signal         FMC pin     name
set_property -dict {PACKAGE_PIN  A5} [get_ports fmc1_sfp0_rxn]            # GBIC_0_RX-     A11         DP3_M2C_N
set_property -dict {PACKAGE_PIN  A6} [get_ports fmc1_sfp0_rxp]            # GBIC_0_RX+     A10         DP3_M2C_P
set_property -dict {PACKAGE_PIN  B3} [get_ports fmc1_sfp0_txn]            # GBIC_0_TX-     A31         DP3_C2M_N
set_property -dict {PACKAGE_PIN  B4} [get_ports fmc1_sfp0_txp]            # GBIC_0_TX+     A30         DP3_C2M_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_tx_fault]     # S0_TX_FAULT    XXX         LA17_N_CC TODO!!!
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_tx_disable]   # S0_TX_DISABLE  XXX         LA17_P_CC
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_mod_def2]     # S0_MOD_DEF2    XXX         LA16_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_mod_def1]     # S0_MOD_DEF1    XXX         LA16_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_mod_def0]     # S0_MOD_DEF0    XXX         LA15_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_rate_sel]     # S0_RATE_SEL    XXX         LA15_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp0_los]          # S0_LOS         XXX         LA14_N

# FM-S18 Channel 1                                                        # Signal         FMC pin     name
set_property -dict {PACKAGE_PIN  B7} [get_ports fmc1_sfp1_rxn]            # GBIC_1_RX-     A7          DP2_M2C_N
set_property -dict {PACKAGE_PIN  B8} [get_ports fmc1_sfp1_rxp]            # GBIC_1_RX+     A6          DP2_M2C_P
set_property -dict {PACKAGE_PIN  C1} [get_ports fmc1_sfp1_txn]            # GBIC_1_TX-     A27         DP2_C2M_N
set_property -dict {PACKAGE_PIN  C2} [get_ports fmc1_sfp1_txp]            # GBIC_1_TX+     A26         DP2_C2M_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_tx_fault]     # S1_TX_FAULT    XXX         LA14_P TODO!!!
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_tx_disable]   # S1_TX_DISABLE  XXX         LA13_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_mod_def2]     # S1_MOD_DEF2    XXX         LA13_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_mod_def1]     # S1_MOD_DEF1    XXX         LA12_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_mod_def0]     # S1_MOD_DEF0    XXX         LA12_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_rate_sel]     # S1_RATE_SEL    XXX         LA11_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp1_los]          # S1_LOS         XXX         LA11_P

# FM-S18 Channel 2                                                        # Signal         FMC pin     name
set_property -dict {PACKAGE_PIN  C5} [get_ports fmc1_sfp2_rxn]            # GBIC_2_RX-     A3          DP1_M2C_N
set_property -dict {PACKAGE_PIN  C6} [get_ports fmc1_sfp2_rxp]            # GBIC_2_RX+     A2          DP1_M2C_P
set_property -dict {PACKAGE_PIN  D3} [get_ports fmc1_sfp2_txn]            # GBIC_2_TX-     A23         DP1_C2M_N
set_property -dict {PACKAGE_PIN  D4} [get_ports fmc1_sfp2_txp]            # GBIC_2_TX+     A22         DP1_C2M_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_tx_fault]     # S2_TX_FAULT    XXX         LA10_N TODO!!!
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_tx_disable]   # S2_TX_DISABLE  XXX         LA10_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_mod_def2]     # S2_MOD_DEF2    XXX         LA09_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_mod_def1]     # S2_MOD_DEF1    XXX         LA09_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_mod_def0]     # S2_MOD_DEF0    XXX         LA08_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_rate_sel]     # S2_RATE_SEL    XXX         LA08_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp2_los]          # S2_LOS         XXX         LA07_N

# FM-S18 Channel 3                                                        # Signal         FMC pin     name
set_property -dict {PACKAGE_PIN  D7} [get_ports fmc1_sfp3_rxn]            # GBIC_3_RX-     C7          DP0_M2C_N
set_property -dict {PACKAGE_PIN  D8} [get_ports fmc1_sfp3_rxp]            # GBIC_3_RX+     C6          DP0_M2C_P
set_property -dict {PACKAGE_PIN  E1} [get_ports fmc1_sfp3_txn]            # GBIC_3_TX-     C3          DP0_C2M_N
set_property -dict {PACKAGE_PIN  E2} [get_ports fmc1_sfp3_txp]            # GBIC_3_TX+     C2          DP0_C2M_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_tx_fault]     # S3_TX_FAULT    XXX         LA07_P TODO!!!
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_tx_disable]   # S3_TX_DISABLE  XXX         LA06_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_mod_def2]     # S3_MOD_DEF2    XXX         LA06_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_mod_def1]     # S3_MOD_DEF1    XXX         LA05_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_mod_def0]     # S3_MOD_DEF0    XXX         LA05_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_rate_sel]     # S3_RATE_SEL    XXX         LA04_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp3_los]          # S3_LOS         XXX         LA04_P

# FM-S18 Channel 4                                                        # Signal         FMC pin     name
set_property -dict {PACKAGE_PIN  E5} [get_ports fmc1_sfp4_rxn]            # GBIC_4_RX-     B13         DP7_M2C_N
set_property -dict {PACKAGE_PIN  E6} [get_ports fmc1_sfp4_rxp]            # GBIC_4_RX+     B12         DP7_M2C_P
set_property -dict {PACKAGE_PIN  F3} [get_ports fmc1_sfp4_txn]            # GBIC_4_TX-     B33         DP7_C2M_N
set_property -dict {PACKAGE_PIN  F4} [get_ports fmc1_sfp4_txp]            # GBIC_4_TX+     B32         DP7_C2M_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp4_tx_fault]     # S4_TX_FAULT    XXX         LA33_N TODO!!!
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp4_tx_disable]   # S4_TX_DISABLE  XXX         LA33_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp4_mod_def2]     # S4_MOD_DEF2    XXX         LA32_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp4_mod_def1]     # S4_MOD_DEF1    XXX         LA32_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp4_mod_def0]     # S4_MOD_DEF0    XXX         LA31_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp4_rate_sel]     # S4_RATE_SEL    XXX         LA31_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp4_los]          # S4_LOS         XXX         LA30_N

# FM-S18 Channel 5                                                        # Signal         FMC pin     name
set_property -dict {PACKAGE_PIN  F7} [get_ports fmc1_sfp5_rxn]            # GBIC_5_RX-     B17         DP6_M2C_N
set_property -dict {PACKAGE_PIN  F8} [get_ports fmc1_sfp5_rxp]            # GBIC_5_RX+     B16         DP6_M2C_P
set_property -dict {PACKAGE_PIN  G1} [get_ports fmc1_sfp5_txn]            # GBIC_5_TX-     B37         DP6_C2M_N
set_property -dict {PACKAGE_PIN  G2} [get_ports fmc1_sfp5_txp]            # GBIC_5_TX+     B36         DP6_C2M_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp5_tx_fault]     # S5_TX_FAULT    XXX         LA30_P TODO!!!
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp5_tx_disable]   # S5_TX_DISABLE  XXX         LA29_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp5_mod_def2]     # S5_MOD_DEF2    XXX         LA29_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp5_mod_def1]     # S5_MOD_DEF1    XXX         LA28_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp5_mod_def0]     # S5_MOD_DEF0    XXX         LA28_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp5_rate_sel]     # S5_RATE_SEL    XXX         LA27_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp5_los]          # S5_LOS         XXX         LA27_P

# FM-S18 Channel 6                                                        # Signal         FMC pin     name
set_property -dict {PACKAGE_PIN  G5} [get_ports fmc1_sfp6_rxn]            # GBIC_6_RX-     A19         DP5_M2C_N
set_property -dict {PACKAGE_PIN  G6} [get_ports fmc1_sfp6_rxp]            # GBIC_6_RX+     A18         DP5_M2C_P
set_property -dict {PACKAGE_PIN  H3} [get_ports fmc1_sfp6_txn]            # GBIC_6_TX-     A39         DP5_C2M_N
set_property -dict {PACKAGE_PIN  H4} [get_ports fmc1_sfp6_txp]            # GBIC_6_TX+     A38         DP5_C2M_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp6_tx_fault]     # S6_TX_FAULT    XXX         LA26_N TODO!!!
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp6_tx_disable]   # S6_TX_DISABLE  XXX         LA26_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp6_mod_def2]     # S6_MOD_DEF2    XXX         LA25_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp6_mod_def1]     # S6_MOD_DEF1    XXX         LA25_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp6_mod_def0]     # S6_MOD_DEF0    XXX         LA24_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp6_rate_sel]     # S6_RATE_SEL    XXX         LA24_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp6_los]          # S6_LOS         XXX         LA23_N

# FM-S18 Channel 7                                                        # Signal         FMC pin     name
set_property -dict {PACKAGE_PIN  H7} [get_ports fmc1_sfp7_rxn]            # GBIC_7_RX-     A15         DP4_M2C_N
set_property -dict {PACKAGE_PIN  H8} [get_ports fmc1_sfp7_rxp]            # GBIC_7_RX+     A14         DP4_M2C_P
set_property -dict {PACKAGE_PIN  J1} [get_ports fmc1_sfp7_txn]            # GBIC_7_TX-     A35         DP4_C2M_N
set_property -dict {PACKAGE_PIN  J2} [get_ports fmc1_sfp7_txp]            # GBIC_7_TX+     A34         DP4_C2M_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp7_tx_fault]     # S7_TX_FAULT    XXX         LA23_P TODO!!!
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp7_tx_disable]   # S7_TX_DISABLE  XXX         LA22_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp7_mod_def2]     # S7_MOD_DEF2    XXX         LA22_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp7_mod_def1]     # S7_MOD_DEF1    XXX         LA21_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp7_mod_def0]     # S7_MOD_DEF0    XXX         LA21_P
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp7_rate_sel]     # S7_RATE_SEL    XXX         LA20_N
# set_property -dict {PACKAGE_PIN  xx} [get_ports fmc1_sfp7_los]          # S7_LOS         XXX         LA20_P

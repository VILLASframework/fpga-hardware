# Top-level constraint for the Aurora interface with RTDS.
#
# @author Hatim Kanchwala <hatim@hatimak.me>
# @copyright 2019 Hatim Kanchwala

set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]


# 200 MHz board clock
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVDS} [get_ports SYS_CLK_P]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVDS} [get_ports SYS_CLK_N]

create_clock -period 5.000 -name SYS_CLK_200M -add [get_ports SYS_CLK_P]


# 125 MHz SGMIICLK Transceiver clock
set_property -dict {PACKAGE_PIN AH8} [get_ports GT_REFCLK1_P]
set_property -dict {PACKAGE_PIN AH7} [get_ports GT_REFCLK1_N]

create_clock -period 8.0 -name GTREFCLK_125M -waveform {0.000 4.000} [get_ports GT_REFCLK1_P]


# Free running 156 MHz clock
set_property -dict {PACKAGE_PIN AK34 IOSTANDARD LVDS} [get_ports CLK156M_P]
set_property -dict {PACKAGE_PIN AL34 IOSTANDARD LVDS} [get_ports CLK156M_N]

create_clock -period 6.410 -name CLK_156M -waveform {0.000 3.200} [get_ports CLK156M_P]

set_max_delay -datapath_only -from [get_clocks CLK_156M] -to [get_clocks aurora_0/inst/aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtxe2_i/TXOUTCLK] 10.0


set_property -dict {PACKAGE_PIN AM4} [get_ports SFP_TX_P]
set_property -dict {PACKAGE_PIN AM3} [get_ports SFP_TX_N]
set_property -dict {PACKAGE_PIN AL6} [get_ports SFP_RX_P]
set_property -dict {PACKAGE_PIN AL5} [get_ports SFP_RX_N]
set_property -dict {PACKAGE_PIN AP33 IOSTANDARD LVCMOS18} [get_ports SFP_TX_DISABLE_N]


# CDC in reset logic from INIT_CLK to USER_CLK
# For reference, please see constraints in example Aurora design
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *aurora_8b10b_0_cdc_to*}]]

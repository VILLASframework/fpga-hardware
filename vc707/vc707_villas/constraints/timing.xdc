create_clock -period 10.000  -name pcie_ref     -waveform {0.000 5.000} [get_ports pcie_ref_clk_p]  # 100 Mhz
create_clock -period 6.410   -name user_clk     -waveform {0.000 3.200} [get_ports user_clk_clk_p]  # 156.25 Mhz
create_clock -period 8.0     -name gtrefclk125m -waveform {0.000 4.000} [get_ports clkbuf_clk_p]    # 125 Mhz

# # Trenz-Electronic TEF0008
# Default clock frequencies after bootup
# create_clock -period 6.4   -name fmc1_gbtclk0 -waveform {0.000 3.200} [get_ports fmc1_gbtclk0_p]  # 156.25 Mhz
# create_clock -period 8.0   -name fmc1_gbtclk1 -waveform {0.000 4.000} [get_ports fmc1_gbtclk1_p]  # 125 Mhz

# Faster Technologies FM-S18
# Clock frequencies for the following jumper configuration:
#  (See also page 13 / section 7.1.1 of FMS18_User_Manual_P4a.pdf)
#    P1=1
#    P2=0
#    P3=1
#    P4=0
create_clock -period 4.0 -name fmc1_gbtclk0     -waveform {0.000 2.000} [get_ports fmc1_gbtclk0_p]  # 250 Mhz
create_clock -period 4.0 -name fmc1_gbtclk1     -waveform {0.000 2.000} [get_ports fmc1_gbtclk1_p]  # 250 Mhz

set_disable_timing [get_ports perstn]
set_disable_timing [get_ports sfp_tx_disable]

set_max_delay -datapath_only -from [get_clocks user_clk] -to [get_clocks top_i/hier_0/aurora_axis_0/inst/aurora_axis_0/inst/aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtxe2_i/TXOUTCLK] 10.0

set_false_path -to [get_pins -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *aurora_8b10b_0_cdc_to*}]]

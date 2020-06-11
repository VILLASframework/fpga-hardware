create_clock -period 10.000 -name pcie_ref -waveform {0.000 5.000} [get_ports pcie_ref_clk_p]
create_clock -period 6.410 -name user_clk -waveform {0.000 3.200} [get_ports user_clk_clk_p]
create_clock -period 8.0 -name gtrefclk125m -waveform {0.000 4.000} [get_ports clkbuf_clk_p]


set_disable_timing [get_ports perstn]
set_disable_timing [get_ports sfp_tx_disable]

set_max_delay -datapath_only -from [get_clocks user_clk] -to [get_clocks top_i/hier_0/aurora_0/inst/aurora_0/inst/aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtxe2_i/TXOUTCLK] 10.0

set_false_path -to [get_pins -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *aurora_8b10b_0_cdc_to*}]]

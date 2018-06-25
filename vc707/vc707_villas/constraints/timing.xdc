create_clock -period 10.000 -name pcie_ref -waveform {0.000 5.000} [get_ports pcie_ref_clk_p]
create_clock -period 5.000 -name sys_clk -waveform {0.000 2.500} [get_ports sys_clk_clk_p]

set_disable_timing [get_ports perstn]
#set_disable_timing [get_ports reset]
set_disable_timing [get_ports sfp_rx_los]
set_disable_timing [get_ports sfp_tx_disable]

set_clock_groups -asynchronous -group userclk2 -group rtds_clk100m


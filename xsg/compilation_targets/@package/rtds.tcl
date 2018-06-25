# This script configures the IP inn case the RTDS_InterfaceModule is used inside the System Generator model

set file_group_names    {xilinx_anylanguagesynthesis xilinx_anylanguagebehavioralsimulation}
set fifo_netlists       {Fifo18X1024_v7.ngc Fifo16_8_v7.ngc fifo512_64_ft.ngc Fifo16_18_v7.ngc}

# Create FIFOs for clock domain crossing
# We need read & write FIFOs with diffrent data widths
foreach width {42 56} {
    set ip_name  afifo_65x${width}_fwft_dr
    set xci_path [create_ip -vlnv xilinx.com:ip:fifo_generator:13.0 -module_name ${ip_name}]

    set_property CONFIG.Fifo_Implementation  Independent_Clocks_Distributed_RAM [get_ips ${ip_name}]
    set_property CONFIG.Performance_Options  First_Word_Fall_Through            [get_ips ${ip_name}]
    set_property CONFIG.Input_Data_Width     ${width}                           [get_ips ${ip_name}]
    set_property CONFIG.Input_Depth          64                                 [get_ips ${ip_name}]
    set_property CONFIG.Valid_Flag           true                               [get_ips ${ip_name}]

    foreach file_group_name $file_group_names {
        set file_group [ipx::get_file_groups ${file_group_name} -of_objects [ipx::current_core]]
        set file       [ipx::add_file ${xci_path} ${file_group}]
        
        ipx::reorder_files [lindex $file 3] ${file_group}
        set_property type xci ${file}   
    }
}

# Add unreferenced NGC netlists
foreach file ${fifo_netlists} {
    set path ${target_name}/${top}.srcs/sources_1/imports/sysgen/${file}

    ipx::add_file ${path} [ipx::get_file_groups xilinx_implementation -of_objects [ipx::current_core]]
    set_property type ngc [ipx::get_files ${path} -of_objects [ipx::get_file_groups xilinx_implementation -of_objects [ipx::current_core]]]
}

# Try to auto-infer external interfaces
try {
    ipx::remove_bus_interface sfp_clk_n [ipx::current_core]
    ipx::remove_bus_interface sfp_clk_p [ipx::current_core]
    ipx::remove_bus_interface sys_clk_n [ipx::current_core]
    ipx::remove_bus_interface sys_clk_p [ipx::current_core]
}

try {
    ipx::infer_bus_interface {sfp_clk_n sfp_clk_p}                          xilinx.com:interface:diff_clock_rtl:1.0 [ipx::current_core]
    ipx::infer_bus_interface {sys_clk_p sys_clk_n}                          xilinx.com:interface:diff_clock_rtl:1.0 [ipx::current_core]
    ipx::infer_bus_interface {sfp_rx_los sfp_rxn sfp_rxp sfp_txn sfp_txp}   xilinx.com:interface:sfp_rtl:1.0        [ipx::current_core]

    set_property description {Fiber optical link to RTDS} [ipx::get_bus_interfaces sfp_1 -of_objects [ipx::current_core]]
}
# Get the directory where this script resides
set thisDir [file dirname [info script]]

set ipDir ./ip

open_project ./vivado/ip/ip.xpr

# Create IP
create_ip -vendor xilinx.com -library ip -name aurora_8b10b -module_name aurora_8b10b_0 -dir $ipDir -quiet

set_property -dict [list \
    CONFIG.Component_Name {aurora_8b10b_0} \
    CONFIG.C_LANE_WIDTH {4} \
    CONFIG.C_LINE_RATE {2} \
    CONFIG.C_REFCLK_FREQUENCY {125.000} \
    CONFIG.C_INIT_CLK {100.0} \
    CONFIG.DRP_FREQ {156.0} \
    CONFIG.C_GT_LOC_3 {1} \
    CONFIG.C_GT_LOC_1 {X} \
    CONFIG.C_GT_CLOCK_1 {GTXQ0} \
    CONFIG.SINGLEEND_INITCLK {true} \
    CONFIG.SINGLEEND_GTREFCLK {true} \
    CONFIG.SupportLevel {1} \
] [get_ips aurora_8b10b_0]

generate_target all [get_files aurora_8b10b_0.xci] -quiet

export_ip_user_files -of_objects [get_files aurora_8b10b_0.xci] -no_script -ip_user_files_dir ./vivado/ip_user_files -sync -force -quiet

create_ip_run [get_files -of_objects [get_fileset sources_1] [get_files */aurora_8b10b_0.xci]] -quiet

launch_runs -jobs 16 aurora_8b10b_0_synth_1 -quiet
wait_on_run aurora_8b10b_0_synth_1 -quiet

export_simulation -of_objects [get_files aurora_8b10b_0.xci] -directory ./vivado/ip_user_files/sim_scripts -ip_user_files_dir ./vivado/ip_user_files -ipstatic_source_dir ./vivado/ip_user_files/ipstatic -use_ip_compiled_libs -force -quiet

close_project


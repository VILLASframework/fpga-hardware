# Get the directory where this script resides
set thisDir [file dirname [info script]]

set ipDir ./ip

open_project ./vivado/ip/ip.xpr

# Create IP
create_ip -vendor xilinx.com -library ip -name ila -module_name ila_aurora -dir $ipDir -quiet

set_property -dict [list \
    CONFIG.Component_Name {ila_aurora} \
    CONFIG.C_DATA_DEPTH {4096} \
    CONFIG.C_NUM_OF_PROBES {4} \
    CONFIG.C_PROBE3_WIDTH {34} \
    CONFIG.C_PROBE2_WIDTH {6} \
    CONFIG.C_PROBE1_WIDTH {39} \
    CONFIG.C_PROBE0_WIDTH {38} \
    CONFIG.ALL_PROBE_SAME_MU {false}
] [get_ips ila_aurora]

generate_target all [get_files ila_aurora.xci] -quiet

export_ip_user_files -of_objects [get_files ila_aurora.xci] -no_script -ip_user_files_dir ./vivado/ip_user_files -sync -force -quiet

create_ip_run [get_files -of_objects [get_fileset sources_1] [get_files */ila_aurora.xci]] -quiet

launch_runs -jobs 16 ila_aurora_synth_1 -quiet
wait_on_run ila_aurora_synth_1 -quiet

export_simulation -of_objects [get_files ila_aurora.xci] -directory ./vivado/ip_user_files/sim_scripts -ip_user_files_dir ./vivado/ip_user_files -ipstatic_source_dir ./vivado/ip_user_files/ipstatic -use_ip_compiled_libs -force -quiet

close_project


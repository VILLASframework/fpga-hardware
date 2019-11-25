# Get the directory where this script resides
set thisDir [file dirname [info script]]

set ipDir ./ip

open_project ./vivado/ip/ip.xpr

# Create IP
create_ip -vendor xilinx.com -library ip -name ila -module_name ila_post -dir $ipDir -quiet

set_property -dict [list \
    CONFIG.Component_Name {ila_post} \
    CONFIG.C_DATA_DEPTH {4096} \
    CONFIG.C_NUM_OF_PROBES {3} \
    CONFIG.C_PROBE2_WIDTH {1} \
    CONFIG.C_PROBE1_WIDTH {16} \
    CONFIG.C_PROBE0_WIDTH {1} \
    CONFIG.ALL_PROBE_SAME_MU {false}
] [get_ips ila_post]

generate_target all [get_files ila_post.xci] -quiet

export_ip_user_files -of_objects [get_files ila_post.xci] -no_script -ip_user_files_dir ./vivado/ip_user_files -sync -force -quiet

create_ip_run [get_files -of_objects [get_fileset sources_1] [get_files */ila_post.xci]] -quiet

launch_runs -jobs 16 ila_post_synth_1 -quiet
wait_on_run ila_post_synth_1 -quiet

export_simulation -of_objects [get_files ila_post.xci] -directory ./vivado/ip_user_files/sim_scripts -ip_user_files_dir ./vivado/ip_user_files -ipstatic_source_dir ./vivado/ip_user_files/ipstatic -use_ip_compiled_libs -force -quiet

close_project


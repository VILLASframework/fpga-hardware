# Get the directory where this script resides
set thisDir [file dirname [info script]]

set ipDir ./ip

open_project ./vivado/ip/ip.xpr

# Create IP
create_ip -vendor xilinx.com -library ip -name fifo_generator -module_name fifo_loop -dir $ipDir

set_property -dict [list \
    CONFIG.Component_Name {fifo_loop} \
    CONFIG.INTERFACE_TYPE {AXI_STREAM} \
    CONFIG.Reset_Type {Asynchronous_Reset} \
    CONFIG.Full_Flags_Reset_Value {1} \
    CONFIG.TDATA_NUM_BYTES {4} \
    CONFIG.TUSER_WIDTH {0} \
    CONFIG.Enable_TLAST {true} \
    CONFIG.TSTRB_WIDTH {4} \
    CONFIG.TKEEP_WIDTH {4} \
    CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
    CONFIG.Full_Threshold_Assert_Value_wach {15} \
    CONFIG.Empty_Threshold_Assert_Value_wach {14} \
    CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
    CONFIG.Full_Threshold_Assert_Value_wrch {15} \
    CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
    CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
    CONFIG.Full_Threshold_Assert_Value_rach {15} \
    CONFIG.Empty_Threshold_Assert_Value_rach {14} \
    CONFIG.FIFO_Application_Type_axis {Packet_FIFO} \
    CONFIG.Enable_Safety_Circuit {true} \
] [get_ips fifo_loop]

generate_target all [get_files fifo_loop.xci]

export_ip_user_files -of_objects [get_files fifo_loop.xci] -no_script -ip_user_files_dir ./vivado/ip_user_files -sync -force -quiet

create_ip_run [get_files -of_objects [get_fileset sources_1] [get_files */fifo_loop.xci]]

launch_runs -jobs 16 fifo_loop_synth_1
wait_on_run fifo_loop_synth_1

export_simulation -of_objects [get_files fifo_loop.xci] -directory ./vivado/ip_user_files/sim_scripts -ip_user_files_dir ./vivado/ip_user_files -ipstatic_source_dir ./vivado/ip_user_files/ipstatic -use_ip_compiled_libs -force -quiet

close_project


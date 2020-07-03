# Get directory where this script resides
set thisDir [file dirname [info script]]

set ipDir ./ips

# Create "Manage IP" project - hub for generating and configuring 
# all IP used in the Vivado project
create_project -force ips ./vivado/ips -part xc7vx485tffg1761-2 -ip

# Set project properties
set obj [get_projects ips]
set_property "board_part" "xilinx.com:vc707:part0:1.4" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj
set_property "coreContainer.enable" "1" $obj

set_property target_simulator XSim [current_project]

# AXI4-Stream Data FIFO
create_ip -name axis_data_fifo -vendor xilinx.com -library ip -module_name axis_data_fifo_0 -dir $ipDir

set_property -dict [list \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.FIFO_DEPTH {16} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_WR_DATA_COUNT {1} \
   CONFIG.HAS_RD_DATA_COUNT {1} \
] [get_ips axis_data_fifo_0]

generate_target all [get_files $ipDir/axis_data_fifo_0/axis_data_fifo_0.xci] -quiet

export_ip_user_files -of_objects [get_files $ipDir/axis_data_fifo_0/axis_data_fifo_0.xci] -no_script -ip_user_files_dir ./vivado/ip_user_files -sync -force

create_ip_run [get_files -of_objects [get_fileset sources_1] [get_files $ipDir/axis_data_fifo_0/axis_data_fifo_0.xci]]

launch_runs -jobs 16 axis_data_fifo_0_synth_1

export_simulation -of_objects [get_files $ipDir/axis_data_fifo_0/axis_data_fifo_0.xci] -directory ./vivado/ip_user_files/sim_scripts -ip_user_files_dir ./vivado/ip_user_files -ipstatic_source_dir ./vivado/ip_user_files/ipstatic -use_ip_compiled_libs -force -quiet

#############

wait_on_run axis_data_fifo_0_synth_1 -quiet

close_project


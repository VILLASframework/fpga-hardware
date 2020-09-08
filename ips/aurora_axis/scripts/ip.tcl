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
set_property "target_language" "Verilog" $obj
set_property "enable_core_container" "1" $obj
set_property "target_simulator" "XSim" [current_project]

# Aurora 8B/10B
create_ip -vendor xilinx.com -library ip -name aurora_8b10b -module_name aurora_8b10b_0 -dir $ipDir

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

generate_target all [get_files $ipDir/aurora_8b10b_0/aurora_8b10b_0.xci]

export_ip_user_files -of_objects [get_files $ipDir/aurora_8b10b_0/aurora_8b10b_0.xci] -no_script -ip_user_files_dir ./vivado/ip_user_files -sync -force

create_ip_run [get_files -of_objects [get_fileset sources_1] [get_files $ipDir/aurora_8b10b_0/aurora_8b10b_0.xci]] 

launch_runs -jobs 16 aurora_8b10b_0_synth_1

export_simulation -of_objects [get_files $ipDir/aurora_8b10b_0/aurora_8b10b_0.xci] -directory ./vivado/ip_user_files/sim_scripts -ip_user_files_dir ./vivado/ip_user_files -ipstatic_source_dir ./vivado/ip_user_files/ipstatic -use_ip_compiled_libs -force

#############

# FIFO for loopback
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

generate_target all [get_files $ipDir/fifo_loop/fifo_loop.xci]

export_ip_user_files -of_objects [get_files $ipDir/fifo_loop/fifo_loop.xci] -no_script -ip_user_files_dir ./vivado/ip_user_files -sync -force

create_ip_run [get_files -of_objects [get_fileset sources_1] [get_files $ipDir/fifo_loop/fifo_loop.xci]] -quiet

launch_runs -jobs 16 fifo_loop_synth_1

export_simulation -of_objects [get_files $ipDir/fifo_loop/fifo_loop.xci] -directory ./vivado/ip_user_files/sim_scripts -ip_user_files_dir ./vivado/ip_user_files -ipstatic_source_dir ./vivado/ip_user_files/ipstatic -use_ip_compiled_libs -force

#############

wait_on_run aurora_8b10b_0_synth_1 -quiet
wait_on_run fifo_loop_synth_1 -quiet

close_project


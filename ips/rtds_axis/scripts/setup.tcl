# Get the directory where this script resides
set thisDir [file dirname [info script]]

set hdlRoot ./hdl
set simRoot ./tb
set xdcRoot ./xdc
set ipRoot ./ips
set miscRoot ./misc

# Create project
create_project -force rtds_axis ./vivado/rtds_axis -part xc7vx485tffg1761-2

# Set project properties
set obj [get_projects rtds_axis]
set_property "board_part" "xilinx.com:vc707:part0:1.4" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj
set_property "coreContainer.enable" "1" $obj

# Include custom IP in Vivado repo path
set_property "ip_repo_paths" "$ipRoot" $obj

check_ip_cache -disable_cache
update_ip_catalog

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 [file normalize "$hdlRoot/two_flop_synchronizer.vhd"] \
 [file normalize "$hdlRoot/rtds_axis_fsm_axis2rtds.vhd"] \
 [file normalize "$hdlRoot/rtds_axis_fsm_rtds2axis.vhd"] \
 [file normalize "$hdlRoot/rtds_axis_axi_slv.vhd"] \
 [file normalize "$hdlRoot/rtds_axis.vhd"] \
 [file normalize "./component.xml"] \
 [file normalize "./netlist/RTDS_InterfaceModule.ngc"] \
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset properties
set_property "file_type" "IP-XACT" [get_files "*component.xml"]
set_property "file_type" "NGC" [get_files "*RTDS_InterfaceModule.ngc"]

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]
set files [list \
 [file normalize "$xdcRoot/rtds_axis_ooc.xdc"] \
 [file normalize "$xdcRoot/rtds_axis_clocks.xdc"] \
 [file normalize "$xdcRoot/rtds_axis.xdc"] \
]
add_files -norecurse -fileset $obj $files

# Set 'constrs_1' fileset properties
set_property "processing_order" "EARLY" [get_files "*rtds_axis_clocks.xdc"]
set_property "used_in" "synthesis implementation out_of_context" [get_files "*rtds_axis_clocks.xdc"]
set_property "processing_order" "EARLY" [get_files "*rtds_axis_clocks.xdc"]
set_property "processing_order" "LATE" [get_files "*rtds_axis.xdc"]

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
set files [list \
 "[file normalize "$simRoot/villas.vhd"]"\
 "[file normalize "$simRoot/helpers.vhd"]"\
 "[file normalize "$simRoot/RTDS_InterfaceModule.vhd"]"\
 "[file normalize "$simRoot/top_tb.vhd"]"\
 "[file normalize "$miscRoot/receive.txt"]"\
 "[file normalize "$miscRoot/send.txt"]"\
 "[file normalize "$miscRoot/top_tb_behav.wcfg"]"\
 "[file normalize "$simRoot/axis_delay.vhd"]"\
 "[file normalize "$simRoot/axis_delay_tb.vhd"]"\
 "[file normalize "$simRoot/txt_util.vhd"]"\
 "[file normalize "$ipRoot/axis_data_fifo_0.xcix"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
# set_property "modelsim.use_explicit_decl" "1" $obj
# set_property "modelsim.vhdl_syntax" "93" $obj
# set_property "modelsim.log_all_signals" "0" $obj
set_property "top" "top_tb" $obj
set_property "transport_int_delay" "0" $obj
set_property "transport_path_delay" "0" $obj
set_property "xsim.elaborate.debug_level" "all" $obj
set_property "xsim.simulate.runtime" "200 us" $obj
set_property "library" "acs" [get_files "*villas.vhd"]
set_property "library" "acs" [get_files "*helpers.vhd"]
set_property "used_in_synthesis" "false" [get_files "*axis_data_fifo_0.xci"]
set_property "used_in_implementation" "false" [get_files "*axis_data_fifo_0.xci"]

set_property "top" "rtds_axis" [get_filesets sources_1]

update_compile_order -fileset sources_1

# Need raw bit file to generate memory configuration for VC707's BPI flash
set_property STEPS.WRITE_BITSTREAM.ARGS.RAW_BITFILE true [get_runs impl_1]

puts "INFO: Project created:rtds_axis"


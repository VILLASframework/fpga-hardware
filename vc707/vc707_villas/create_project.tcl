#
# Vivado (TM) v2016.1 (64-bit)
#
# create_project.tcl: Tcl script for re-creating project 'vc707_villas'
#
# Generated by Vivado on Sun Jun 26 16:35:11 +0200 2016
# IP Build 1537824 on Fri Apr  8 04:28:57 MDT 2016
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#
#*****************************************************************************************
# NOTE: In order to use this script for source control purposes, please make sure that the
#       following files are added to the source control system:-
#
# 1. This project restoration tcl script (create_project2.tcl) that was generated.
#
# 2. The following source(s) files that were local or imported into the original project.
#    (Please see the '$orig_proj_dir' and '$origin_dir' variable setting below at the start of the script)
#
#    <none>
#
# 3. The following remote source files that were added to the original project:-
#
#    "D:/svo/gtfpga/vc707/vc707_villas/bd/top/top.bd"
#    "D:/svo/gtfpga/vc707/vc707_villas/bd/top/hdl/top_wrapper.vhd"
#    "D:/svo/gtfpga/vc707/vc707_villas/constraints/vc707_pins.xdc"
#    "D:/svo/gtfpga/vc707/vc707_villas/constraints/vc707_pins_rtds.xdc"
#    "D:/svo/gtfpga/vc707/vc707_villas/constraints/timing.xdc"
#    "D:/svo/gtfpga/vc707/vc707_villas/constraints/debug.xdc"
#    "D:/svo/gtfpga/vc707/vc707_villas/constraints/bitstream.xdc"
#
#*****************************************************************************************

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Use origin directory path location variable, if specified in the tcl shell
if { [info exists ::origin_dir_loc] } {
  set origin_dir $::origin_dir_loc
}

variable script_file
set script_file "create_project.tcl"

# Help information for this script
proc help {} {
  variable script_file
  puts "\nDescription:"
  puts "Recreate a Vivado project from this script. The created project will be"
  puts "functionally equivalent to the original project for which this script was"
  puts "generated. The script contains commands for creating a project, filesets,"
  puts "runs, adding/importing sources and setting properties on various objects.\n"
  puts "Syntax:"
  puts "$script_file"
  puts "$script_file -tclargs \[--origin_dir <path>\]"
  puts "$script_file -tclargs \[--help\]\n"
  puts "Usage:"
  puts "Name                   Description"
  puts "-------------------------------------------------------------------------"
  puts "\[--origin_dir <path>\]  Determine source file paths wrt this path. Default"
  puts "                       origin_dir path value is \".\", otherwise, the value"
  puts "                       that was set with the \"-paths_relative_to\" switch"
  puts "                       when this script was generated.\n"
  puts "\[--help\]               Print help information for this script"
  puts "-------------------------------------------------------------------------\n"
  exit 0
}

if { $::argc > 0 } {
  for {set i 0} {$i < [llength $::argc]} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--origin_dir" { incr i; set origin_dir [lindex $::argv $i] }
      "--help"       { help }
      default {
        if { [regexp {^-} $option] } {
          puts "ERROR: Unknown option '$option' specified, please type '$script_file -tclargs --help' for usage info.\n"
          return 1
        }
      }
    }
  }
}

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/work"]"

# Create project
create_project vc707_villas "work" -part xc7vx485tffg1761-2

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Reconstruct message rules
set_msg_config  -ruleid {1}  -id {IP_Flow 19-1663}  -suppress  -source 16
set_msg_config  -ruleid {2}  -id {IP_Flow 19-1663}  -new_severity {INFO}  -source 2
set_msg_config  -ruleid {3}  -id {IP_Flow 19-3656}  -suppress  -source 16
set_msg_config  -ruleid {4}  -id {IP_Flow 19-2207}  -suppress  -source 16
set_msg_config  -ruleid {5}  -id {IP_Flow 19-3664}  -suppress  -source 16


# Set project properties
set obj [get_projects vc707_villas]
set_property "board_part" "xilinx.com:vc707:part0:1.2" $obj
set_property "corecontainer.enable" "1" $obj
set_property "default_lib" "xil_defaultlib" $obj
set_property "ip_cache_permissions" "read write" $obj
set_property "ip_output_repo" "D:/svo/gtfpga/vc707/vc707_villas/work/vc707_villas.cache/ip" $obj
set_property "sim.ip.auto_export_scripts" "1" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj
set_property "target_simulator" "ModelSim" $obj
set_property "xpm_libraries" "XPM_CDC XPM_MEMORY" $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
set_property "ip_repo_paths" "[file normalize "$origin_dir/../../"] [file normalize "$origin_dir/work/vc707_villas.cache/ip"]" $obj

# Rebuild user ip_repo's index before adding any source files
update_ip_catalog -rebuild

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/bd/top/top.bd"]"\
 "[file normalize "$origin_dir/bd/top/hdl/top_wrapper.vhd"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/bd/top/top.bd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Hierarchical" $file_obj
}

set file "$origin_dir/bd/top/hdl/top_wrapper.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "VHDL" $file_obj


# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property "top" "top_wrapper" $obj

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constraints/vc707_pins.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/constraints/vc707_pins.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj
set_property "used_in" "implementation" $file_obj
set_property "used_in_synthesis" "0" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constraints/vc707_pins_rtds.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/constraints/vc707_pins_rtds.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj
set_property "used_in" "implementation" $file_obj
set_property "used_in_synthesis" "0" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constraints/timing.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/constraints/timing.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constraints/debug.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/constraints/debug.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj
set_property "used_in" "implementation" $file_obj
set_property "used_in_synthesis" "0" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constraints/bitstream.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/constraints/bitstream.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property "target_constrs_file" "[file normalize "$origin_dir/constraints/debug.xdc"]" $obj

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "modelsim.log_all_signals" "0" $obj
set_property "modelsim.use_explicit_decl" "1" $obj
set_property "modelsim.vhdl_syntax" "93" $obj
set_property "top" "top_wrapper" $obj
set_property "transport_int_delay" "0" $obj
set_property "transport_path_delay" "0" $obj

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part xc7vx485tffg1761-2 -flow {Vivado Synthesis 2015} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2015" [get_runs synth_1]
}
set obj [get_runs synth_1]

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part xc7vx485tffg1761-2 -flow {Vivado Implementation 2015} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2015" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "steps.write_bitstream.args.readback_file" "0" $obj
set_property "steps.write_bitstream.args.verbose" "0" $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:vc707_villas"

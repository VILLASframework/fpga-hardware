# Get the directory where this script resides
set thisDir [file dirname [info script]]

set hdlRoot ./hdl
set xdcRoot ./xdc
set ipRoot ./ips

# Create project
create_project -force aurora_axis ./vivado/aurora_axis -part xc7vx485tffg1761-2

# Set project properties
set obj [get_projects aurora_axis]
set_property "board_part" "xilinx.com:vc707:part0:1.4" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "Verilog" $obj
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
 [file normalize "$hdlRoot/defines.vh"] \
 [file normalize "$hdlRoot/top.v"] \
 [file normalize "$hdlRoot/aurora.v"] \
 [file normalize "$hdlRoot/pre.v"] \
 [file normalize "$hdlRoot/post.v"] \
 [file normalize "$ipRoot/aurora_8b10b_0.xcix"] \
 [file normalize "$ipRoot/fifo_loop.xcix"] \
 [file normalize "./component.xml"] \
]
add_files -norecurse -fileset $obj $files

set_property "file_type" "IP-XACT" [get_files "*component.xml"]

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]
set files [list \
 [file normalize "$xdcRoot/top.xdc"] \
]
add_files -norecurse -fileset $obj $files

set_property "top" "aurora" [get_filesets sources_1]

update_compile_order -fileset sources_1

# Need raw bit file to generate memory configuration for VC707's BPI flash
set_property STEPS.WRITE_BITSTREAM.ARGS.RAW_BITFILE true [get_runs impl_1]

puts "INFO: Project created:aurora_axis"


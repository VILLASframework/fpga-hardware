# Get the directory where this script resides
set thisDir [file dirname [info script]]

set hdlRoot ./hdl
set simRoot ./tb

# Create project
create_project -force pcie_msi_requester ./vivado/pcie_msi_requester -part xc7vx485tffg1761-2

# Set project properties
set obj [get_projects pcie_msi_requester]
set_property "board_part" "xilinx.com:vc707:part0:1.4" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj
set_property "coreContainer.enable" "1" $obj

check_ip_cache -disable_cache
update_ip_catalog

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 [file normalize "$hdlRoot/pcie_msi_requester_axi_slv.vhd"] \
 [file normalize "$hdlRoot/pcie_msi_requester.vhd"] \
 [file normalize "./component.xml"] \
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset properties
set_property "file_type" "IP-XACT" [get_files "*component.xml"]

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
set files [list \
 "[file normalize "$simRoot/pcie_msi_requester_tb.vhd"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "top" "pcie_msi_requester_tb" $obj

set_property "top" "pcie_msi_requester" [get_filesets sources_1]

update_compile_order -fileset sources_1

# Need raw bit file to generate memory configuration for VC707's BPI flash
set_property STEPS.WRITE_BITSTREAM.ARGS.RAW_BITFILE true [get_runs impl_1]

puts "INFO: Project created:pcie_msi_requester"


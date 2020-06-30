# Get the directory where this script resides
set thisDir [file dirname [info script]]

set hdlRoot ./hdl
set ipRoot ./ips

# Create project
create_project -force axi_pcie_intc ./vivado/axi_pcie_intc -part xc7vx485tffg1761-2

# Set project properties
set obj [get_projects axi_pcie_intc]
set_property "board_part" "xilinx.com:vc707:part0:1.4" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj
set_property "target_simulator" "XSim" $obj
set_property "enable_vhdl_2008" "1" $obj

check_ip_cache -disable_cache
update_ip_catalog

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 [file normalize "$hdlRoot/axi_pcie_intc.vhd"] \
 [file normalize "$ipRoot/axi_intc_0/axi_intc_0.xci"] \
 [file normalize "./component.xml"] \
]
add_files -norecurse -fileset $obj $files

set_property "file_type" "VHDL" [get_files "*axi_pcie_intc.vhd"]
set_property "file_type" "IP-XACT" [get_files "*component.xml"]

set_property "top" "axi_pcie_intc" [get_filesets sources_1]

update_compile_order -fileset sources_1
# Need raw bit file to generate memory configuration for VC707's BPI flash
set_property STEPS.WRITE_BITSTREAM.ARGS.RAW_BITFILE true [get_runs impl_1]

puts "INFO: Project created:axi_pcie_intc"


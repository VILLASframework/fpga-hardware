# Get the directory where this script resides
set thisDir [file dirname [info script]]

# Source common utilities
source -notrace $thisDir/utils.tcl

set hdlRoot ./hdl
set ipRoot ./ip
set miscRoot ./misc

# Set project name
set projName axi_pcie_intc

# Create project
create_project -force $projName ./vivado/proj -part xc7vx485tffg1761-2

# Set project properties
set obj [get_projects $projName]
set_property "board_part" "xilinx.com:vc707:part0:1.3" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj
set_property "target_simulator" "XSim" $obj
set_property "enable_vhdl_2008" "1" $obj
check_ip_cache -disable_cache
update_ip_catalog

add_files -norecurse $hdlRoot/axi_pcie_intc.vhd
set_property "file_type" "VHDL" [get_files "*axi_pcie_intc.vhd"]

add_files -norecurse $ipRoot/axi_intc_0/axi_intc_0.xci

add_files -norecurse $miscRoot/component.xml
set_property "file_type" "IP-XACT" [get_files "*component.xml"] 

set_property "top" "axi_pcie_intc" [get_filesets sources_1]

update_compile_order -fileset sources_1

# If successful, "touch" a file so Make will know it's done
touch {./vivado/.setup_vivado.done}


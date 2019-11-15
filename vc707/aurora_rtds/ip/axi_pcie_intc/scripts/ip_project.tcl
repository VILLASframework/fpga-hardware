# Get the directory where this script resides
set thisDir [file dirname [info script]]

# Source common utilities
source -notrace $thisDir/utils.tcl

# Create "Manage IP" project - hub for generating and configuring 
# all IP used in the Vivado project
create_project -force managed_ip ./vivado/managed_ip -part xc7vx485tffg1761-2 -ip

# Set project properties
set obj [get_projects managed_ip]
set_property "board_part" "xilinx.com:vc707:part0:1.3" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj
set_property "target_simulator" "XSim" $obj

close_project

# If successful, "touch" a file so Make will know it's done 
touch {./vivado/.ip_top_vivado.done}


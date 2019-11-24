# Get the directory where this script resides
set thisDir [file dirname [info script]]

# Source common utilities
source -notrace $thisDir/utils.tcl

set hdlRoot ./hdl
set xdcRoot ./xdc
set ipRoot ./ip

# Create project
create_project -force top ./vivado/top -part xc7vx485tffg1761-2

# Set project properties
set obj [get_projects top]
set_property "board_part" "xilinx.com:vc707:part0:1.3" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "Verilog" $obj

# Include custom IP in Vivado repo path
set_property "ip_repo_paths" "$ipRoot" $obj

check_ip_cache -disable_cache
update_ip_catalog

add_files -norecurse $hdlRoot/top.v
add_files -norecurse $hdlRoot/pre.v

add_files -norecurse $ipRoot/aurora_8b10b_0/aurora_8b10b_0.xci
add_files -norecurse $ipRoot/fifo_loop/fifo_loop.xci
add_files -norecurse $ipRoot/ila_0/ila_0.xci

update_compile_order -fileset sources_1

add_files -fileset constrs_1 -norecurse $xdcRoot/top.xdc

# Need raw bit file to generate memory configuration for VC707's BPI flash
set_property STEPS.WRITE_BITSTREAM.ARGS.RAW_BITFILE true [get_runs impl_1]

# If successful, "touch" a file so Make will know it's done
touch {./vivado/.setup_vivado.done}


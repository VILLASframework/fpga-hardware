# Get the directory where this script resides
set thisDir [file dirname [info script]]

# Source common utilities
source -notrace $thisDir/utils.tcl

open_project ./vivado/top/top.xpr

# Reset runs
reset_run synth_1
reset_run impl_1

# Launch Implementation
launch_runs impl_1 -jobs 16 -verbose
wait_on_run impl_1

# Generate bitstream
open_run impl_1
write_bitstream -verbose ./build/top.bit -force

# Generate configuration memory for VC707 BPI flash mt28gu01gaax1e-bpi-x16
write_cfgmem -format mcs -size 128 -interface BPIx16 -loadbit {up 0x00000000 "./build/top.bit" } -force -file "./build/top.mcs"

# Generate Hardware Definition file
write_hwdef -force -file "./build/top.hdf"

# If successful, "touch" a file so Make will know it's done
touch {./build/.bitstream.done}


# Get the directory where this script resides
set thisDir [file dirname [info script]]

# Source common utilities
source -notrace $thisDir/utils.tcl

open_project ./vivado/vc707_villas/vc707_villas.xpr

reset_run synth_1
reset_run impl_1
launch_runs impl_1 -jobs 16 -verbose
wait_on_run impl_1

# Generate bitstream
open_run impl_1
write_bitstream -verbose ./build/vc707_villas.bit -force

# Generate configuration memory for VC707 BPI flash mt28gu01gaax1e-bpi-x16
write_cfgmem -format mcs -size 128 -interface BPIx16 -loadbit {up 0x00000000 "./build/vc707_villas.bit" } -force -file "./build/vc707_villas.mcs"

# Generate Hardware Definition file
write_hwdef -force -file "./build/vc707_villas.hdf"

# If successful, "touch" a file so Make will know it's done
touch {./build/.bitstream.done}


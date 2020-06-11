open_project ./vivado/vc707_villas/vc707_villas.xpr

# Generate Hardware Definition file
write_hwdef -force -file "./build/vc707_villas.hdf"

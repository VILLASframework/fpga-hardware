PROJECT=ibufds_gte2

RTL=$(wildcard ./hdl/*.v) $(wildcard ./hdl/*.vh) $(wildcard ./hdl/*.vhd)
TCL=$(wildcard ./scripts/*.tcl)

PROJECT_DIR=vivado/$(PROJECT)
PROJECT_FILE=$(PROJECT_DIR)/$(PROJECT).xpr

.PHONY: clean vivado

vivado: $(PROJECT_FILE)

$(PROJECT_FILE): ./scripts/setup.tcl 
	mkdir -p $(PROJECT_DIR)
	vivado -mode batch -source ./scripts/setup.tcl -log $(PROJECT_DIR)/setup.log -jou $(PROJECT_DIR)/setup.jou

clean:
	rm -rf ./vivado .Xil ./build *.jou *.log vivado*.str

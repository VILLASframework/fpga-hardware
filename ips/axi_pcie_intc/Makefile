PROJECT=axi_pcie_intc

RTL=$(wildcard ./hdl/*.v) $(wildcard ./hdl/*.vh)
XDC=$(wildcard ./xdc/*.xdc)
TCL=$(wildcard ./scripts/*.tcl)

PROJECT_DIR=vivado/$(PROJECT)
PROJECT_FILE=$(PROJECT_DIR)/$(PROJECT).xpr

IP_PROJECT_FILE=vivado/ips/ips.xpr

.PHONY: clean vivado

vivado: $(IP_PROJECT_FILE) $(PROJECT_FILE)

$(PROJECT_FILE): ./scripts/setup.tcl
	mkdir -p $(PROJECT_DIR)
	vivado -mode batch -source ./scripts/setup.tcl -log $(PROJECT_DIR)/setup.log -jou $(PROJECT_DIR)/setup.jou

$(IP_PROJECT_FILE): ./scripts/ip.tcl
	mkdir -p ./ips
	mkdir -p ./vivado/ips
	vivado -mode batch -source ./scripts/ip.tcl -nolog -nojournal

clean:
	rm -rf ./vivado ./ips .Xil ./build *.jou *.log vivado*.str

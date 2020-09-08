PROJECT=vc707_villas

RTL=$(wildcard ./hdl/*.v) $(wildcard ./hdl/*.vh) $(wildcard ./hdl/*.vhd)
XDC=$(wildcard ./constraints/*.xdc)
TCL=$(wildcard ./scripts/*.tcl)

PROJECT_DIR=vivado/$(PROJECT)
PROJECT_FILE=$(PROJECT_DIR)/$(PROJECT).xpr

BITSTREAM=build/$(PROJECT).bit
HWDEF=build/$(PROJECT).hdf
VILLAS_CONFIG=build/$(PROJECT).json

.PHONY: clean vivado bitstream villas_config

vivado: $(PROJECT_FILE)

bitstream: $(BITSTREAM)

villas_config: $(VILLAS_CONFIG)


$(PROJECT_FILE): ./scripts/setup.tcl
	mkdir -p $(PROJECT_DIR)
	vivado -mode batch -source ./scripts/setup.tcl -log $(PROJECT_DIR)/setup.log -jou $(PROJECT_DIR)/setup.jou

$(BITSTREAM): ./scripts/bitstream.tcl $(PROJECT_FILE) $(RTL) $(XDC)
	mkdir -p ./build
	vivado -mode batch -source ./scripts/bitstream.tcl -nolog -nojournal

$(HWDEF): ./scripts/hwdef.tcl $(PROJECT_FILE)
	mkdir -p ./build
	vivado -mode batch -source ./scripts/hwdef.tcl -nolog -nojournal

$(VILLAS_CONFIG): $(HWDEF)
	python3 ../../scripts/hwdef-parse.py $(HWDEF) > ./etc/main.json
	cat ./etc/pre.json ./etc/main.json ./etc/post.json > $(VILLAS_CONFIG)
	rm -rf ./etc/main.json

clean:
	rm -rf ./vivado .Xil vivado.jou vivado.log vivado*.str ./build *.log *.jou

PROJECT=vc707_villas

RTL=$(wildcard ./hdl/*.v) $(wildcard ./hdl/*.vhd)
XDC=$(wildcard ./constraints/*.xdc)
TCL=$(wildcard ./scripts/*.tcl)

PROJECT_FILE=vivado/$(PROJECT)/$(PROJECT).xpr

BITSTREAM=build/$(PROJECT).bit
HWDEF=build/$(PROJECT).hdf
VILLAS_CONFIG=build/$(PROJECT).json

.PHONY: clean vivado bitstream villas_config

vivado: $(PROJECT_FILE)

bitstream: $(BITSTREAM)

villas_config: $(VILLAS_CONFIG)


$(PROJECT_FILE): ./scripts/setup.tcl
	mkdir -p ./vivado/vc707_villas
	vivado -mode batch -source ./scripts/setup.tcl -log ./vivado/vc707_villas/setup.log -jou ./vivado/vc707_villas/setup.jou

$(BITSTREAM): ./scripts/bitstream.tcl $(PROJECT_FILE) $(RTL) $(XDC)
	mkdir -p ./build
	vivado -mode batch -source ./scripts/bitstream.tcl -nolog -nojournal

$(HWDEF): ./scripts/hwdef.tcl $(PROJECT_FILE)
	mkdir -p ./build
	vivado -mode batch -source ./scripts/hwdef.tcl -nolog -nojournal

$(VILLAS_CONFIG): $(HWDEF)
	python3 ../../scripts/hwdef-parse.py $(HWDEF) > ./etc/main.json
	cat ./etc/pre.json ./etc/main.json ./etc/post.json > $(VILLAS_CONFIG)

clean:
	rm -rf ./vivado .Xil vivado.jou vivado.log vivado*.str ./bd/top/ip* ./bd/top/sim ./bd/top/synth ./bd/top/top* ./bd/top/ui ./bd/top/hw_handoff ./build ./etc/main.json

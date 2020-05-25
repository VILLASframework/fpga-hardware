RTL=./hdl/aurora_reset.v ./hdl/concat.v ./bd/top/hdl/top_wrapper.v
XDC=./constraints/vc707_pins.xdc ./constraints/vc707_pins_rtds.xdc ./constraints/timing.xdc ./constraints/bitstream.xdc

vivado: setup_vivado

setup_vivado: ./vivado/.setup_vivado.done
./vivado/.setup_vivado.done: $(RTL) $(XDC)
	mkdir -p ./vivado/vc707_villas
	vivado -mode batch -source ./scripts/setup.tcl -log ./vivado/vc707_villas/setup.log -jou ./vivado/vc707_villas/setup.jou

bitstream: ./build/.bitstream.done
./build/.bitstream.done: ./vivado/.setup_vivado.done
	mkdir -p ./build
	vivado -mode batch -source ./scripts/bitstream.tcl -nolog -nojournal

.PHONY: clean
clean:
	rm -rf ./vivado .Xil vivado.jou vivado.log vivado*.str ./bd/top/ip* ./bd/top/sim ./bd/top/synth ./bd/top/top* ./bd/top/ui ./bd/top/hw_handoff ./build 

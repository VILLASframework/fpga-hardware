RTL=./hdl/top.v

IP=./ip/aurora_8b10b_0.xci ./ip/fifo_loop.xci ./ip/ila_0.xci

vivado: ip_vivado setup_vivado

setup_vivado: ./vivado/.setup_vivado.done
./vivado/.setup_vivado.done: $(RTL) ./vivado/.ip_top_vivado.done
	mkdir -p ./vivado/top
	vivado -mode batch -source ./scripts/setup.tcl -log ./vivado/top/setup.log -jou ./vivado/top/setup.jou

ip_vivado: ./vivado/.ip_top_vivado.done $(IP)
./vivado/.ip_top_vivado.done:
	$(MAKE) -C ./ip/axi_pcie_intc vivado
	mkdir -p ./vivado/ip
	vivado -mode batch -source ./scripts/ip_project.tcl -nolog -nojournal
$(IP): ./vivado/.ip_top_vivado.done
	vivado -mode batch -source ./scripts/$(@:.xci=.tcl) -nolog -nojournal

bitstream: vivado ./build/.bitstream.done
./build/.bitstream.done:
	mkdir -p ./build
	vivado -mode batch -source ./scripts/bitstream.tcl -nolog -nojournal

.PHONY: clean
clean:
	$(MAKE) -C ./ip/axi_pcie_intc clean
	rm -rf ./vivado ./ip/aurora_8b10b_0 ./ip/fifo_loop ./ip/ila_0 .Xil ./ip/.Xil ./build vivado.jou vivado.log

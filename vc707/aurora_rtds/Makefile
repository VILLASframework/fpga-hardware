RTL=./hdl/top.v ./hdl/pre.v ./hdl/aurora.v ./hdl/post.v ./hdl/defines.vh

vivado: ip_vivado setup_vivado

setup_vivado: ./vivado/.setup_vivado.done
./vivado/.setup_vivado.done: $(RTL) ./vivado/.ip_top_vivado.done
	mkdir -p ./vivado/top
	vivado -mode batch -source ./scripts/setup.tcl -log ./vivado/top/setup.log -jou ./vivado/top/setup.jou

ip_vivado: ./vivado/.ip_top_vivado.done ./scripts/ip.tcl
./vivado/.ip_top_vivado.done:
	mkdir -p ./vivado/ip
	vivado -mode batch -source ./scripts/ip.tcl -log ./vivado/ip/ip.log -jou ./vivado/ip/ip.jou

bitstream: vivado ./build/.bitstream.done
./build/.bitstream.done:
	mkdir -p ./build
	vivado -mode batch -source ./scripts/bitstream.tcl -nolog -nojournal

.PHONY: clean
clean:
	$(MAKE) -C ./ip/axi_pcie_intc clean
	rm -rf ./vivado ./ip/aurora_8b10b_0 ./ip/fifo_loop ./ip/ila_aurora ./ip/ila_pre ./ip/ila_post ./ip/vio_aurora .Xil ./ip/.Xil ./build vivado.jou vivado.log vivado*.str

RTL=./hdl/axi_pcie_intc.vhd

MISC=./misc/component.xml

vivado: ip_vivado setup_vivado

setup_vivado: ./vivado/.setup_vivado.done
./vivado/.setup_vivado.done: $(RTL) $(MISC) ./vivado/.ip_top_vivado.done
	mkdir -p ./vivado/proj
	vivado -mode batch -source ./scripts/setup.tcl -log ./vivado/proj/setup.log -jou ./vivado/proj/setup.jou

ip_vivado: ./vivado/.ip_top_vivado.done
./vivado/.ip_top_vivado.done:
	mkdir -p ./vivado/managed_ip
	mkdir -p ./ip
	vivado -mode batch -source ./scripts/ip.tcl -log ./vivado/managed_ip/ip.log -jou ./vivado/managed_ip/ip.jou

.PHONY: clean
clean:
	rm -rf ./vivado ./ip/* .Xil ./ip/.Xil vivado.jou vivado.log

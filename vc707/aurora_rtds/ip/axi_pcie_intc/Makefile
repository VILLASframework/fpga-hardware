RTL=./hdl/axi_pcie_intc.vhd

MISC=./misc/component.xml

IP=./ip/axi_intc_0.xci

vivado: ip_vivado setup_vivado

setup_vivado: ./vivado/.setup_vivado.done
./vivado/.setup_vivado.done: $(RTL) $(MISC) ./vivado/.ip_top_vivado.done
	mkdir -p ./vivado/proj
	vivado -mode batch -source ./scripts/setup.tcl -log ./vivado/proj/setup.log -jou ./vivado/proj/setup.jou

ip_vivado: ./vivado/.ip_top_vivado.done $(IP)

./vivado/.ip_top_vivado.done:
	mkdir -p ./vivado/managed_ip
	mkdir -p ./ip
	vivado -mode batch -source ./scripts/ip_project.tcl -nolog -nojournal

$(IP): ./vivado/.ip_top_vivado.done
	vivado -mode batch -source ./scripts/$(@:.xci=.tcl) -nolog -nojournal

.PHONY: clean
clean:
	rm -rf ./vivado ./ip/* .Xil ./ip/.Xil vivado.jou vivado.log

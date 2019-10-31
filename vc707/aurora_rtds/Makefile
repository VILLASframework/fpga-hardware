RTL=./hdl/top.v

IP=./ip/aurora_8b10b_0.xcix ./ip/fifo_loop.xcix ./ip/ila_0.xcix

vivado: ip_vivado setup_vivado

setup_vivado: ./vivado/.setup_vivado.done
./vivado/.setup_vivado.done: $(RTL) ./vivado/.ip_top_vivado.done
	mkdir -p ./vivado/top
	vivado -mode batch -source ./scripts/setup.tcl -log ./vivado/top/setup.log -jou ./vivado/top/setup.jou

ip_vivado: ./vivado/.ip_top_vivado.done $(IP)

./vivado/.ip_top_vivado.done:
	mkdir -p ./vivado/ip
	mkdir -p ./ip
	vivado -mode batch -source ./scripts/ip_project.tcl -log ./vivado/ip/ip.log -jou ./vivado/ip/ip.jou

$(IP): ./vivado/.ip_top_vivado.done
	vivado -mode batch -source ./scripts/$(@:.xcix=.tcl) -log ./vivado/$(@:.xcix=.log) -jou ./vivado/$(@:.xcix=.jou)

.PHONY: clean
clean:
	rm -rf ./vivado ./ip/* .Xil ./ip/.Xil vivado.jou vivado.log

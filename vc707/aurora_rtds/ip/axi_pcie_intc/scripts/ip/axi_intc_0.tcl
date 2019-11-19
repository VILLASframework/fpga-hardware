set ipDir ./ip

open_project ./vivado/managed_ip/managed_ip.xpr

# Create IP
create_ip -vendor xilinx.com -library ip -name axi_intc -module_name axi_intc_0 -dir $ipDir -quiet

set_property -dict [list \
	CONFIG.C_NUM_INTR_INPUTS {8} \
	CONFIG.C_NUM_SW_INTR {8} \
	CONFIG.C_IRQ_IS_LEVEL {0} \
	CONFIG.C_HAS_FAST {1} \
	CONFIG.C_IVAR_RESET_VALUE {0x0000000000000000} \
	CONFIG.C_S_AXI_ACLK_FREQ_MHZ {125.0} \
	CONFIG.C_PROCESSOR_CLK_FREQ_MHZ {125.0} \
] [get_ips axi_intc_0]

generate_target all [get_files axi_intc_0.xci] -quiet

export_ip_user_files -of_objects [get_files axi_intc_0.xci] -no_script -ip_user_files_dir ./vivado/ip_user_files -sync -force -quiet

create_ip_run [get_files -of_objects [get_fileset sources_1] [get_files */axi_intc_0.xci]] -quiet

launch_runs -jobs 16 axi_intc_0_synth_1 -quiet
wait_on_run axi_intc_0_synth_1 -quiet

export_simulation -of_objects [get_files axi_intc_0.xci] -directory ./vivado/ip_user_files/sim_scripts -ip_user_files_dir ./vivado/ip_user_files -ipstatic_source_dir ./vivado/ip_user_files/ipstatic -use_ip_compiled_libs -force -quiet

close_project


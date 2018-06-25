
################################################################
# This is a generated script based on design: pcie
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source pcie_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7vx485tffg1761-2
#    set_property BOARD_PART xilinx.com:vc707:part0:1.2 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name pcie

# This script was generated for a remote BD.
set str_bd_folder D:/msv/02_msv-svo/gtfpga/vc707_pcie/bd
set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

# Check if remote design exists on disk
if { [file exists $str_bd_filepath ] == 1 } {
   puts "ERROR: The remote BD file path <$str_bd_filepath> already exists!\n"

   puts "INFO: Please modify the variable <str_bd_folder> to another path or modify the variable <design_name>."

   return 1
}

# Check if design exists in memory
set list_existing_designs [get_bd_designs -quiet $design_name]
if { $list_existing_designs ne "" } {
   puts "ERROR: The design <$design_name> already exists in this project!"
   puts "ERROR: Will not create the remote BD <$design_name> at the folder <$str_bd_folder>.\n"

   puts "INFO: Please modify the variable <design_name>."

   return 1
}

# Check if design exists on disk within project
set list_existing_designs [get_files */${design_name}.bd]
if { $list_existing_designs ne "" } {
   puts "ERROR: The design <$design_name> already exists in this project at location:"
   puts "   $list_existing_designs"
   puts "ERROR: Will not create the remote BD <$design_name> at the folder <$str_bd_folder>.\n"

   puts "INFO: Please modify the variable <design_name>."

   return 1
}

# Now can create the remote BD
create_bd_design -dir $str_bd_folder $design_name
current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {32} \
CONFIG.DATA_WIDTH {128} \
CONFIG.HAS_QOS {0} \
CONFIG.HAS_REGION {0} \
CONFIG.NUM_READ_OUTSTANDING {4} \
CONFIG.NUM_WRITE_OUTSTANDING {4} \
CONFIG.PROTOCOL {AXI4} \
 ] $M_AXI
  set PCIE_MGT [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 PCIE_MGT ]
  set PCIE_REFCLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 PCIE_REFCLK ]
  set S_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {32} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.DATA_WIDTH {128} \
CONFIG.HAS_BRESP {1} \
CONFIG.HAS_BURST {1} \
CONFIG.HAS_CACHE {0} \
CONFIG.HAS_LOCK {0} \
CONFIG.HAS_PROT {0} \
CONFIG.HAS_QOS {0} \
CONFIG.HAS_REGION {1} \
CONFIG.HAS_RRESP {1} \
CONFIG.HAS_WSTRB {1} \
CONFIG.ID_WIDTH {2} \
CONFIG.MAX_BURST_LENGTH {256} \
CONFIG.NUM_READ_OUTSTANDING {8} \
CONFIG.NUM_WRITE_OUTSTANDING {2} \
CONFIG.PROTOCOL {AXI4} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {1} \
CONFIG.WUSER_WIDTH {0} \
 ] $S_AXI
  set S_AXI_CTL [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CTL ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {28} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.DATA_WIDTH {32} \
CONFIG.HAS_BRESP {1} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_CACHE {0} \
CONFIG.HAS_LOCK {0} \
CONFIG.HAS_PROT {0} \
CONFIG.HAS_QOS {0} \
CONFIG.HAS_REGION {0} \
CONFIG.HAS_RRESP {1} \
CONFIG.HAS_WSTRB {1} \
CONFIG.ID_WIDTH {0} \
CONFIG.MAX_BURST_LENGTH {1} \
CONFIG.NUM_READ_OUTSTANDING {4} \
CONFIG.NUM_WRITE_OUTSTANDING {4} \
CONFIG.PHASE {0.000} \
CONFIG.PROTOCOL {AXI4LITE} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {0} \
CONFIG.WUSER_WIDTH {0} \
 ] $S_AXI_CTL
  set S_AXI_CTL_IRQ [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CTL_IRQ ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {16} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.DATA_WIDTH {32} \
CONFIG.HAS_BRESP {1} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_CACHE {0} \
CONFIG.HAS_LOCK {0} \
CONFIG.HAS_PROT {1} \
CONFIG.HAS_QOS {0} \
CONFIG.HAS_REGION {0} \
CONFIG.HAS_RRESP {1} \
CONFIG.HAS_WSTRB {1} \
CONFIG.ID_WIDTH {0} \
CONFIG.MAX_BURST_LENGTH {1} \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
CONFIG.PROTOCOL {AXI4LITE} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {0} \
CONFIG.WUSER_WIDTH {0} \
 ] $S_AXI_CTL_IRQ

  # Create ports
  set axi_aclk_out [ create_bd_port -dir O -type clk axi_aclk_out ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_BUSIF {M_AXI:S_AXI:S_AXI_CTL_IRQ} \
CONFIG.ASSOCIATED_RESET {peripheral_aresetn:interconnect_aresetn} \
 ] $axi_aclk_out
  set axi_ctl_aclk_out [ create_bd_port -dir O -type clk axi_ctl_aclk_out ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_BUSIF {S_AXI_CTL} \
 ] $axi_ctl_aclk_out
  set interconnect_aresetn [ create_bd_port -dir O -from 0 -to 0 -type rst interconnect_aresetn ]
  set msi_irq [ create_bd_port -dir I -from 7 -to 0 msi_irq ]
  set peripheral_aresetn [ create_bd_port -dir O -from 0 -to 0 -type rst peripheral_aresetn ]
  set perstn [ create_bd_port -dir I -type rst perstn ]
  set reset [ create_bd_port -dir I -type rst reset ]

  # Create instance: axi_pcie_0, and set properties
  set axi_pcie_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_pcie:2.7 axi_pcie_0 ]
  set_property -dict [ list \
CONFIG.AXIBAR2PCIEBAR_0 {0x00000000} \
CONFIG.BAR0_SCALE {Kilobytes} \
CONFIG.BAR0_SIZE {64} \
CONFIG.BAR1_ENABLED {false} \
CONFIG.BAR1_SCALE {N/A} \
CONFIG.BAR1_SIZE {8} \
CONFIG.BAR1_TYPE {N/A} \
CONFIG.CLASS_CODE {0x070101} \
CONFIG.COMP_TIMEOUT {50ms} \
CONFIG.DEVICE_ID {0x7022} \
CONFIG.ENABLE_CLASS_CODE {false} \
CONFIG.INTERRUPT_PIN {false} \
CONFIG.MAX_LINK_SPEED {5.0_GT/s} \
CONFIG.M_AXI_DATA_WIDTH {128} \
CONFIG.NO_OF_LANES {X4} \
CONFIG.NUM_MSI_REQ {3} \
CONFIG.PCIEBAR2AXIBAR_1 {0xFFFFFFFF} \
CONFIG.PCIE_BLK_LOCN {X1Y0} \
CONFIG.SUB_CLASS_INTERFACE_MENU {Bi_directional_parallel_port} \
CONFIG.S_AXI_DATA_WIDTH {128} \
CONFIG.XLNX_REF_BOARD {VC707} \
CONFIG.en_transceiver_status_ports {false} \
 ] $axi_pcie_0

  # Create instance: pcie_msi_requester_0, and set properties
  set pcie_msi_requester_0 [ create_bd_cell -type ip -vlnv acs.eonerc.rwth-aachen.de:user:pcie_msi_requester:1.1 pcie_msi_requester_0 ]
  set_property -dict [ list \
CONFIG.NUM_IRQS {8} \
 ] $pcie_msi_requester_0

  # Create instance: rst_axi_pcie_0_125M, and set properties
  set rst_axi_pcie_0_125M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_axi_pcie_0_125M ]
  set_property -dict [ list \
CONFIG.C_AUX_RESET_HIGH {0} \
CONFIG.C_AUX_RST_WIDTH {1} \
CONFIG.C_EXT_RST_WIDTH {16} \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_axi_pcie_0_125M

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf_0

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_ports S_AXI] [get_bd_intf_pins axi_pcie_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_ports S_AXI_CTL] [get_bd_intf_pins axi_pcie_0/S_AXI_CTL]
  connect_bd_intf_net -intf_net axi_pcie_0_M_AXI [get_bd_intf_ports M_AXI] [get_bd_intf_pins axi_pcie_0/M_AXI]
  connect_bd_intf_net -intf_net axi_pcie_0_pcie_7x_mgt [get_bd_intf_ports PCIE_MGT] [get_bd_intf_pins axi_pcie_0/pcie_7x_mgt]
  connect_bd_intf_net -intf_net pcie_ref_1 [get_bd_intf_ports PCIE_REFCLK] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net s_axi_ctl_1_1 [get_bd_intf_ports S_AXI_CTL_IRQ] [get_bd_intf_pins pcie_msi_requester_0/s_axi_ctl]

  # Create port connections
  connect_bd_net -net S00_ARESETN_1 [get_bd_ports interconnect_aresetn] [get_bd_pins axi_pcie_0/axi_aresetn] [get_bd_pins rst_axi_pcie_0_125M/interconnect_aresetn]
  connect_bd_net -net aux_reset_in_1 [get_bd_ports perstn] [get_bd_pins rst_axi_pcie_0_125M/aux_reset_in]
  connect_bd_net -net axi_pcie_0_INTX_MSI_Grant [get_bd_pins axi_pcie_0/INTX_MSI_Grant] [get_bd_pins pcie_msi_requester_0/i_granted]
  connect_bd_net -net axi_pcie_0_MSI_Vector_Width [get_bd_pins axi_pcie_0/MSI_Vector_Width] [get_bd_pins pcie_msi_requester_0/i_vector_width]
  connect_bd_net -net axi_pcie_0_MSI_enable [get_bd_pins axi_pcie_0/MSI_enable] [get_bd_pins pcie_msi_requester_0/i_msi_enabled]
  connect_bd_net -net axi_pcie_0_axi_aclk_out1 [get_bd_ports axi_aclk_out] [get_bd_pins axi_pcie_0/axi_aclk_out] [get_bd_pins pcie_msi_requester_0/clk] [get_bd_pins rst_axi_pcie_0_125M/slowest_sync_clk]
  connect_bd_net -net axi_pcie_0_axi_ctl_aclk_out [get_bd_ports axi_ctl_aclk_out] [get_bd_pins axi_pcie_0/axi_ctl_aclk_out]
  connect_bd_net -net axi_pcie_0_mmcm_lock [get_bd_pins axi_pcie_0/mmcm_lock] [get_bd_pins rst_axi_pcie_0_125M/dcm_locked]
  connect_bd_net -net i_irq_1 [get_bd_ports msi_irq] [get_bd_pins pcie_msi_requester_0/i_irq]
  connect_bd_net -net pcie_msi_requester_0_o_irq [get_bd_pins axi_pcie_0/INTX_MSI_Request] [get_bd_pins pcie_msi_requester_0/o_irq]
  connect_bd_net -net pcie_msi_requester_0_o_vector_num [get_bd_pins axi_pcie_0/MSI_Vector_Num] [get_bd_pins pcie_msi_requester_0/o_vector_num]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins rst_axi_pcie_0_125M/ext_reset_in]
  connect_bd_net -net rst_axi_pcie_0_125M_peripheral_aresetn [get_bd_ports peripheral_aresetn] [get_bd_pins pcie_msi_requester_0/aresetn] [get_bd_pins rst_axi_pcie_0_125M/peripheral_aresetn]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins axi_pcie_0/REFCLK] [get_bd_pins util_ds_buf_0/IBUF_OUT]

  # Create address segments
  create_bd_addr_seg -range 0x100000000 -offset 0x0 [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs M_AXI/Reg] SEG_M_AXI_Reg
  create_bd_addr_seg -range 0x100000000 -offset 0x0 [get_bd_addr_spaces S_AXI] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR0] SEG_axi_pcie_0_BAR0
  create_bd_addr_seg -range 0x10000000 -offset 0x0 [get_bd_addr_spaces S_AXI_CTL] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0] SEG_axi_pcie_0_CTL0
  create_bd_addr_seg -range 0x10000 -offset 0x0 [get_bd_addr_spaces S_AXI_CTL_IRQ] [get_bd_addr_segs pcie_msi_requester_0/s_axi_ctl/Reg] SEG_pcie_msi_requester_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port S_AXI_CTL_IRQ -pg 1 -y 350 -defaultsOSRD
preplace port axi_ctl_aclk_out -pg 1 -y 100 -defaultsOSRD
preplace port perstn -pg 1 -y 590 -defaultsOSRD
preplace port axi_aclk_out -pg 1 -y 80 -defaultsOSRD
preplace port S_AXI -pg 1 -y 70 -defaultsOSRD
preplace port PCIE_MGT -pg 1 -y 60 -defaultsOSRD
preplace port M_AXI -pg 1 -y 40 -defaultsOSRD
preplace port PCIE_REFCLK -pg 1 -y 180 -defaultsOSRD
preplace port reset -pg 1 -y 570 -defaultsOSRD
preplace port S_AXI_CTL -pg 1 -y 90 -defaultsOSRD
preplace portBus msi_irq -pg 1 -y 410 -defaultsOSRD
preplace portBus peripheral_aresetn -pg 1 -y 320 -defaultsOSRD
preplace portBus interconnect_aresetn -pg 1 -y 300 -defaultsOSRD
preplace inst axi_pcie_0 -pg 1 -lvl 2 -y 120 -defaultsOSRD
preplace inst rst_axi_pcie_0_125M -pg 1 -lvl 1 -y 590 -defaultsOSRD
preplace inst pcie_msi_requester_0 -pg 1 -lvl 1 -y 410 -defaultsOSRD
preplace inst util_ds_buf_0 -pg 1 -lvl 1 -y 180 -defaultsOSRD
preplace netloc S_AXI_1 1 0 2 NJ 70 NJ
preplace netloc axi_pcie_0_INTX_MSI_Grant 1 0 3 20 250 NJ 250 760
preplace netloc axi_pcie_0_axi_aclk_out1 1 0 3 40 280 NJ 280 790
preplace netloc axi_pcie_0_pcie_7x_mgt 1 2 1 NJ
preplace netloc s_axi_ctl_1_1 1 0 1 NJ
preplace netloc axi_pcie_0_axi_ctl_aclk_out 1 2 1 NJ
preplace netloc i_irq_1 1 0 1 NJ
preplace netloc axi_pcie_0_MSI_Vector_Width 1 0 3 30 260 NJ 260 750
preplace netloc util_ds_buf_0_IBUF_OUT 1 1 1 NJ
preplace netloc axi_pcie_0_mmcm_lock 1 0 3 50 290 NJ 290 780
preplace netloc pcie_msi_requester_0_o_irq 1 1 1 390
preplace netloc axi_pcie_0_M_AXI 1 2 1 NJ
preplace netloc axi_interconnect_0_M05_AXI 1 0 2 NJ 90 NJ
preplace netloc pcie_ref_1 1 0 1 NJ
preplace netloc rst_axi_pcie_0_125M_peripheral_aresetn 1 0 3 70 300 400 320 NJ
preplace netloc axi_pcie_0_MSI_enable 1 0 3 60 270 NJ 270 770
preplace netloc reset_1 1 0 1 NJ
preplace netloc pcie_msi_requester_0_o_vector_num 1 1 1 420
preplace netloc aux_reset_in_1 1 0 1 NJ
preplace netloc S00_ARESETN_1 1 1 2 410 300 NJ
levelinfo -pg 1 0 230 590 810 -top 0 -bot 680
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""



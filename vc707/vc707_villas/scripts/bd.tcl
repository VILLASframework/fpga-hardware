
################################################################
# This is a generated script based on design: top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source top_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# concat, aresetn_cdc, aurora_reset

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1761-2
   set_property BOARD_PART xilinx.com:vc707:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name top

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./vivado/vc707_villas/vc707_villas.bd

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:util_ds_buf:2.1\
acs.eonerc.rwth-aachen.de:user:aurora_axis:1.14\
xilinx.com:ip:axi_fifo_mm_s:4.2\
xilinx.com:ip:axis_data_fifo:2.0\
xilinx.com:ip:util_vector_logic:2.0\
xilinx.com:ip:axi_pcie:2.9\
acs.eonerc.rwth-aachen.de:user:axi_pcie_intc:1.4\
xilinx.com:ip:axi_gpio:2.0\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:axi_timer:2.0\
xilinx.com:ip:axi_dma:7.1\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
concat\
aresetn_cdc\
aurora_reset\
"

   set list_mods_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_msg_id "BD_TCL-008" "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: axis_interconnect_0
proc create_hier_cell_axis_interconnect_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_axis_interconnect_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M00_AXIS
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M01_AXIS
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M02_AXIS
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M03_AXIS
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M04_AXIS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S00_AXIS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S01_AXIS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S02_AXIS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S03_AXIS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S04_AXIS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CTRL

  # Create pins
  create_bd_pin -dir I -type clk S00_AXIS_ACLK
  create_bd_pin -dir I -type clk S00_AXIS_ACLK1
  create_bd_pin -dir I -from 0 -to 0 -type rst S00_AXIS_ARESETN
  create_bd_pin -dir I -from 0 -to 0 -type rst S_AXI_CTRL_ARESETN

  # Create instance: axis_interconnect_0, and set properties
  set axis_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 axis_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.NUM_MI {5} \
   CONFIG.NUM_SI {5} \
   CONFIG.ROUTING_MODE {1} \
 ] $axis_interconnect_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M03_AXIS] [get_bd_intf_pins axis_interconnect_0/M03_AXIS]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S03_AXIS] [get_bd_intf_pins axis_interconnect_0/S03_AXIS]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins M04_AXIS] [get_bd_intf_pins axis_interconnect_0/M04_AXIS]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins S04_AXIS] [get_bd_intf_pins axis_interconnect_0/S04_AXIS]
  connect_bd_intf_net -intf_net S00_AXIS_1 [get_bd_intf_pins S00_AXIS] [get_bd_intf_pins axis_interconnect_0/S00_AXIS]
  connect_bd_intf_net -intf_net S01_AXIS_1 [get_bd_intf_pins S01_AXIS] [get_bd_intf_pins axis_interconnect_0/S01_AXIS]
  connect_bd_intf_net -intf_net S02_AXIS_1 [get_bd_intf_pins S02_AXIS] [get_bd_intf_pins axis_interconnect_0/S02_AXIS]
  connect_bd_intf_net -intf_net S_AXI_CTRL_1 [get_bd_intf_pins S_AXI_CTRL] [get_bd_intf_pins axis_interconnect_0/S_AXI_CTRL]
  connect_bd_intf_net -intf_net axis_interconnect_0_M00_AXIS [get_bd_intf_pins M00_AXIS] [get_bd_intf_pins axis_interconnect_0/M00_AXIS]
  connect_bd_intf_net -intf_net axis_interconnect_0_M01_AXIS [get_bd_intf_pins M01_AXIS] [get_bd_intf_pins axis_interconnect_0/M01_AXIS]
  connect_bd_intf_net -intf_net axis_interconnect_0_M02_AXIS [get_bd_intf_pins M02_AXIS] [get_bd_intf_pins axis_interconnect_0/M02_AXIS]

  # Create port connections
  connect_bd_net -net S00_AXIS_ACLK_1 [get_bd_pins S00_AXIS_ACLK1] [get_bd_pins axis_interconnect_0/M00_AXIS_ACLK] [get_bd_pins axis_interconnect_0/S00_AXIS_ACLK]
  connect_bd_net -net S00_AXIS_ARESETN_1 [get_bd_pins S00_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/M00_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/S00_AXIS_ARESETN]
  connect_bd_net -net s_axi_aclk_2 [get_bd_pins S00_AXIS_ACLK] [get_bd_pins axis_interconnect_0/ACLK] [get_bd_pins axis_interconnect_0/M01_AXIS_ACLK] [get_bd_pins axis_interconnect_0/M02_AXIS_ACLK] [get_bd_pins axis_interconnect_0/M03_AXIS_ACLK] [get_bd_pins axis_interconnect_0/M04_AXIS_ACLK] [get_bd_pins axis_interconnect_0/S01_AXIS_ACLK] [get_bd_pins axis_interconnect_0/S02_AXIS_ACLK] [get_bd_pins axis_interconnect_0/S03_AXIS_ACLK] [get_bd_pins axis_interconnect_0/S04_AXIS_ACLK] [get_bd_pins axis_interconnect_0/S_AXI_CTRL_ACLK]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins S_AXI_CTRL_ARESETN] [get_bd_pins axis_interconnect_0/ARESETN] [get_bd_pins axis_interconnect_0/M01_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/M02_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/M03_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/M04_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/S01_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/S02_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/S03_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/S04_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/S_AXI_CTRL_ARESETN]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: axi_interconnect_mm_0
proc create_hier_cell_axi_interconnect_mm_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_axi_interconnect_mm_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M03_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M04_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M05_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  # Create pins
  create_bd_pin -dir I -type clk M04_ACLK
  create_bd_pin -dir I -from 0 -to 0 -type rst M04_ARESETN
  create_bd_pin -dir I -type clk S00_ACLK
  create_bd_pin -dir I -from 0 -to 0 -type rst S00_ARESETN

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {6} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_interconnect_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M04_AXI] [get_bd_intf_pins axi_interconnect_0/M04_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins M05_AXI] [get_bd_intf_pins axi_interconnect_0/M05_AXI]
  connect_bd_intf_net -intf_net S_AXI_CTRL_1 [get_bd_intf_pins M02_AXI] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins M01_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins M03_AXI] [get_bd_intf_pins axi_interconnect_0/M03_AXI]

  # Create port connections
  connect_bd_net -net M04_ACLK_1 [get_bd_pins M04_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK]
  connect_bd_net -net M04_ARESETN_1 [get_bd_pins M04_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN]
  connect_bd_net -net pcie_0_peripheral_aresetn [get_bd_pins S00_ARESETN] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins S00_ACLK] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: axi_dma
proc create_hier_cell_axi_dma { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_axi_dma() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_MM2S
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_S2MM
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 -type rst axi_resetn
  create_bd_pin -dir I -type clk m_axi_sg_aclk
  create_bd_pin -dir O -from 0 -to 0 -type intr mm2s_introut
  create_bd_pin -dir O -from 0 -to 0 -type intr s2mm_introut

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s_dre {1} \
   CONFIG.c_include_s2mm_dre {1} \
   CONFIG.c_include_sg {0} \
   CONFIG.c_m_axi_mm2s_data_width {128} \
   CONFIG.c_m_axi_s2mm_data_width {128} \
   CONFIG.c_mm2s_burst_size {64} \
   CONFIG.c_s2mm_burst_size {64} \
   CONFIG.c_sg_include_stscntrl_strm {0} \
 ] $axi_dma_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_interconnect_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins M00_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net S01_AXIS_1 [get_bd_intf_pins M_AXIS_MM2S] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_interconnect_0/S01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_mm_M03_AXI [get_bd_intf_pins S_AXI_LITE] [get_bd_intf_pins axi_dma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net axis_interconnect_M01_AXIS [get_bd_intf_pins S_AXIS_S2MM] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]

  # Create port connections
  connect_bd_net -net axi_dma_0_mm2s_introut [get_bd_pins mm2s_introut] [get_bd_pins axi_dma_0/mm2s_introut]
  connect_bd_net -net axi_dma_0_s2mm_introut [get_bd_pins s2mm_introut] [get_bd_pins axi_dma_0/s2mm_introut]
  connect_bd_net -net pcie_0_peripheral_aresetn [get_bd_pins axi_resetn] [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins m_axi_sg_aclk] [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: timer_0
proc create_hier_cell_timer_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_timer_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  # Create pins
  create_bd_pin -dir O irq_timer_0
  create_bd_pin -dir O irq_timer_1
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -from 0 -to 0 -type rst s_axi_aresetn

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_timer_0/S_AXI]

  # Create port connections
  connect_bd_net -net axi_pcie_0_axi_aclk_out1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk]
  connect_bd_net -net axi_timer_0_generateout0 [get_bd_pins irq_timer_0] [get_bd_pins axi_timer_0/generateout0]
  connect_bd_net -net axi_timer_0_generateout1 [get_bd_pins irq_timer_1] [get_bd_pins axi_timer_0/generateout1]
  connect_bd_net -net rst_axi_pcie_0_125M_peripheral_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: pcie_0
proc create_hier_cell_pcie_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_pcie_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 PCIE_MGT
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 PCIE_REFCLK
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CTL

  # Create pins
  create_bd_pin -dir O -type clk axi_aclk_out
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir I -from 3 -to 0 msi_irq
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir I -type rst perstn

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_interconnect_0

  # Create instance: axi_pcie_0, and set properties
  set axi_pcie_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_pcie:2.9 axi_pcie_0 ]
  set_property -dict [ list \
   CONFIG.AXIBAR2PCIEBAR_0 {0x00000000} \
   CONFIG.AXIBAR_AS_0 {false} \
   CONFIG.AXIBAR_NUM {1} \
   CONFIG.BAR0_SCALE {Megabytes} \
   CONFIG.BAR0_SIZE {4} \
   CONFIG.BAR1_ENABLED {false} \
   CONFIG.BAR1_SCALE {N/A} \
   CONFIG.BAR1_SIZE {8} \
   CONFIG.BAR1_TYPE {N/A} \
   CONFIG.BASE_CLASS_MENU {Memory_controller} \
   CONFIG.CLASS_CODE {0x050000} \
   CONFIG.COMP_TIMEOUT {50ms} \
   CONFIG.DEVICE_ID {0x7022} \
   CONFIG.ENABLE_CLASS_CODE {false} \
   CONFIG.HIGHADDR {0x10000FFF} \
   CONFIG.INTERRUPT_PIN {false} \
   CONFIG.MAX_LINK_SPEED {5.0_GT/s} \
   CONFIG.M_AXI_DATA_WIDTH {128} \
   CONFIG.NO_OF_LANES {X4} \
   CONFIG.NUM_MSI_REQ {4} \
   CONFIG.PCIEBAR2AXIBAR_1 {0xFFFFFFFF} \
   CONFIG.PCIE_BLK_LOCN {X1Y0} \
   CONFIG.SUB_CLASS_INTERFACE_MENU {RAM} \
   CONFIG.S_AXI_DATA_WIDTH {128} \
   CONFIG.S_AXI_SUPPORTS_NARROW_BURST {true} \
   CONFIG.XLNX_REF_BOARD {VC707} \
   CONFIG.en_transceiver_status_ports {false} \
 ] $axi_pcie_0

  # Create instance: axi_pcie_intc_0, and set properties
  set axi_pcie_intc_0 [ create_bd_cell -type ip -vlnv acs.eonerc.rwth-aachen.de:user:axi_pcie_intc:1.4 axi_pcie_intc_0 ]

  # Create instance: axi_reset_0, and set properties
  set axi_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_reset_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0x00000000} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_INTERRUPT_PRESENT {0} \
 ] $axi_reset_0

  # Create instance: rst_axi_pcie_0_125M, and set properties
  set rst_axi_pcie_0_125M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_axi_pcie_0_125M ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {8} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_axi_pcie_0_125M

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_pcie_0/S_AXI]
  connect_bd_intf_net -intf_net S_AXI_CTL_1 [get_bd_intf_pins S_AXI_CTL] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins axi_pcie_0/S_AXI_CTL]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_interconnect_0/M01_AXI] [get_bd_intf_pins axi_pcie_intc_0/s_axi]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_interconnect_0/M02_AXI] [get_bd_intf_pins axi_reset_0/S_AXI]
  connect_bd_intf_net -intf_net axi_pcie_0_M_AXI [get_bd_intf_pins M_AXI] [get_bd_intf_pins axi_pcie_0/M_AXI]
  connect_bd_intf_net -intf_net axi_pcie_0_pcie_7x_mgt [get_bd_intf_pins PCIE_MGT] [get_bd_intf_pins axi_pcie_0/pcie_7x_mgt]
  connect_bd_intf_net -intf_net pcie_ref_1 [get_bd_intf_pins PCIE_REFCLK] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]

  # Create port connections
  connect_bd_net -net S00_ARESETN_1 [get_bd_pins interconnect_aresetn] [get_bd_pins axi_pcie_0/axi_aresetn] [get_bd_pins rst_axi_pcie_0_125M/interconnect_aresetn]
  connect_bd_net -net aux_reset_in_1 [get_bd_pins perstn] [get_bd_pins rst_axi_pcie_0_125M/aux_reset_in]
  connect_bd_net -net axi_pcie_0_INTX_MSI_Grant [get_bd_pins axi_pcie_0/INTX_MSI_Grant] [get_bd_pins axi_pcie_intc_0/INTX_MSI_Grant]
  connect_bd_net -net axi_pcie_0_MSI_Vector_Width [get_bd_pins axi_pcie_0/MSI_Vector_Width] [get_bd_pins axi_pcie_intc_0/MSI_Vector_Width]
  connect_bd_net -net axi_pcie_0_MSI_enable [get_bd_pins axi_pcie_0/MSI_enable] [get_bd_pins axi_pcie_intc_0/MSI_Enable]
  connect_bd_net -net axi_pcie_0_axi_aclk_out1 [get_bd_pins axi_aclk_out] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_pcie_0/axi_aclk_out] [get_bd_pins axi_pcie_intc_0/s_axi_aclk] [get_bd_pins axi_reset_0/s_axi_aclk] [get_bd_pins rst_axi_pcie_0_125M/slowest_sync_clk]
  connect_bd_net -net axi_pcie_0_axi_ctl_aclk_out [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_pcie_0/axi_ctl_aclk_out]
  connect_bd_net -net axi_pcie_0_mmcm_lock [get_bd_pins axi_pcie_0/mmcm_lock] [get_bd_pins rst_axi_pcie_0_125M/dcm_locked]
  connect_bd_net -net axi_pcie_intc_0_INTX_MSI_Request [get_bd_pins axi_pcie_0/INTX_MSI_Request] [get_bd_pins axi_pcie_intc_0/INTX_MSI_Request]
  connect_bd_net -net axi_pcie_intc_0_MSI_Vector_Num [get_bd_pins axi_pcie_0/MSI_Vector_Num] [get_bd_pins axi_pcie_intc_0/MSI_Vector_Num]
  connect_bd_net -net axi_reset_0_gpio_io_o [get_bd_pins axi_reset_0/gpio_io_o] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net msi_irq_1 [get_bd_pins msi_irq] [get_bd_pins axi_pcie_intc_0/intr]
  connect_bd_net -net rst_axi_pcie_0_125M_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_pcie_intc_0/s_axi_aresetn] [get_bd_pins axi_reset_0/s_axi_aresetn] [get_bd_pins rst_axi_pcie_0_125M/peripheral_aresetn]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins axi_pcie_0/REFCLK] [get_bd_pins util_ds_buf_0/IBUF_OUT]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins rst_axi_pcie_0_125M/ext_reset_in] [get_bd_pins util_vector_logic_0/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: mm_interconnect_0
proc create_hier_cell_mm_interconnect_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_mm_interconnect_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M03_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M04_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 -type rst M01_ARESETN
  create_bd_pin -dir I -type clk S00_ACLK

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.NUM_MI {5} \
   CONFIG.NUM_SI {1} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_interconnect_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins M01_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins M02_AXI] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins M03_AXI] [get_bd_intf_pins axi_interconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins M04_AXI] [get_bd_intf_pins axi_interconnect_0/M04_AXI]

  # Create port connections
  connect_bd_net -net S00_ARESETN_1 [get_bd_pins M01_ARESETN] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN]
  connect_bd_net -net axi_pcie_0_axi_aclk_out1 [get_bd_pins S00_ACLK] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_0
proc create_hier_cell_hier_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_hier_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_DMA_PCIE
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_FULL
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_LITE
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 clkbuf
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sfp_rtl:1.0 sfp

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 -type rst aresetn
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 0 -to 0 -type intr irq_dma_mm2s
  create_bd_pin -dir O -from 0 -to 0 -type intr irq_dma_s2mm
  create_bd_pin -dir O -type intr irq_fifo
  create_bd_pin -dir I -from 0 -to 0 user_clk

  # Create instance: aresetn_cdc_0, and set properties
  set block_name aresetn_cdc
  set block_cell_name aresetn_cdc_0
  if { [catch {set aresetn_cdc_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $aresetn_cdc_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: aurora_axis_0, and set properties
  set aurora_axis_0 [ create_bd_cell -type ip -vlnv acs.eonerc.rwth-aachen.de:user:aurora_axis:1.14 aurora_axis_0 ]

  # Create instance: aurora_reset_0, and set properties
  set block_name aurora_reset
  set block_cell_name aurora_reset_0
  if { [catch {set aurora_reset_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $aurora_reset_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_dma
  create_hier_cell_axi_dma $hier_obj axi_dma

  # Create instance: axi_fifo_mm_s_0, and set properties
  set axi_fifo_mm_s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.2 axi_fifo_mm_s_0 ]
  set_property -dict [ list \
   CONFIG.C_AXIS_TUSER_WIDTH {4} \
   CONFIG.C_DATA_INTERFACE_TYPE {1} \
   CONFIG.C_RX_FIFO_DEPTH {4096} \
   CONFIG.C_RX_FIFO_PF_THRESHOLD {4090} \
   CONFIG.C_S_AXI4_DATA_WIDTH {32} \
   CONFIG.C_TX_FIFO_DEPTH {4096} \
   CONFIG.C_TX_FIFO_PF_THRESHOLD {4090} \
   CONFIG.C_USE_RX_CUT_THROUGH {true} \
   CONFIG.C_USE_TX_CTRL {0} \
   CONFIG.C_USE_TX_CUT_THROUGH {1} \
 ] $axi_fifo_mm_s_0

  # Create instance: axi_interconnect_mm_0
  create_hier_cell_axi_interconnect_mm_0 $hier_obj axi_interconnect_mm_0

  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 axis_data_fifo_0 ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {1024} \
   CONFIG.HAS_RD_DATA_COUNT {1} \
   CONFIG.HAS_WR_DATA_COUNT {1} \
   CONFIG.SYNCHRONIZATION_STAGES {3} \
 ] $axis_data_fifo_0

  # Create instance: axis_data_fifo_1, and set properties
  set axis_data_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 axis_data_fifo_1 ]
  set_property -dict [ list \
   CONFIG.FIFO_DEPTH {1024} \
   CONFIG.HAS_RD_DATA_COUNT {1} \
   CONFIG.HAS_WR_DATA_COUNT {1} \
   CONFIG.SYNCHRONIZATION_STAGES {3} \
 ] $axis_data_fifo_1

  # Create instance: axis_interconnect_0
  create_hier_cell_axis_interconnect_0 $hier_obj axis_interconnect_0

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
   CONFIG.C_SIZE {1} \
   CONFIG.DIFF_CLK_IN_BOARD_INTERFACE {Custom} \
 ] $util_ds_buf_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI_LITE] [get_bd_intf_pins axi_interconnect_mm_0/S00_AXI]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins M_AXI_DMA_PCIE] [get_bd_intf_pins axi_dma/M00_AXI]
  connect_bd_intf_net -intf_net S00_AXIS_1 [get_bd_intf_pins aurora_axis_0/m_axis] [get_bd_intf_pins axis_interconnect_0/S00_AXIS]
  connect_bd_intf_net -intf_net S01_AXIS_1 [get_bd_intf_pins axi_dma/M_AXIS_MM2S] [get_bd_intf_pins axis_interconnect_0/S01_AXIS]
set_property HDL_ATTRIBUTE.DEBUG_IN_BD {true} [get_bd_intf_nets S01_AXIS_1]
set_property HDL_ATTRIBUTE.MARK_DEBUG {true} [get_bd_intf_nets S01_AXIS_1]
  connect_bd_intf_net -intf_net S02_AXIS_1 [get_bd_intf_pins axi_fifo_mm_s_0/AXI_STR_TXD] [get_bd_intf_pins axis_interconnect_0/S02_AXIS]
set_property HDL_ATTRIBUTE.DEBUG_IN_BD {true} [get_bd_intf_nets S02_AXIS_1]
set_property HDL_ATTRIBUTE.MARK_DEBUG {true} [get_bd_intf_nets S02_AXIS_1]
  connect_bd_intf_net -intf_net S_AXI_CTRL_1 [get_bd_intf_pins axi_interconnect_mm_0/M00_AXI] [get_bd_intf_pins axis_interconnect_0/S_AXI_CTRL]
  connect_bd_intf_net -intf_net S_AXI_FULL_1 [get_bd_intf_pins S_AXI_FULL] [get_bd_intf_pins axi_fifo_mm_s_0/S_AXI_FULL]
  connect_bd_intf_net -intf_net aurora_axis_0_SFP [get_bd_intf_pins sfp] [get_bd_intf_pins aurora_axis_0/SFP]
  connect_bd_intf_net -intf_net axi_interconnect_mm_0_M04_AXI [get_bd_intf_pins aurora_axis_0/S_AXI] [get_bd_intf_pins axi_interconnect_mm_0/M04_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_mm_M02_AXI [get_bd_intf_pins axi_fifo_mm_s_0/S_AXI] [get_bd_intf_pins axi_interconnect_mm_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_mm_M03_AXI [get_bd_intf_pins axi_dma/S_AXI_LITE] [get_bd_intf_pins axi_interconnect_mm_0/M03_AXI]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins axis_data_fifo_0/M_AXIS] [get_bd_intf_pins axis_interconnect_0/S03_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_1_M_AXIS [get_bd_intf_pins axis_data_fifo_1/M_AXIS] [get_bd_intf_pins axis_interconnect_0/S04_AXIS]
  connect_bd_intf_net -intf_net axis_interconnect_0_M00_AXIS [get_bd_intf_pins aurora_axis_0/s_axis] [get_bd_intf_pins axis_interconnect_0/M00_AXIS]
  connect_bd_intf_net -intf_net axis_interconnect_0_M04_AXIS [get_bd_intf_pins axis_data_fifo_1/S_AXIS] [get_bd_intf_pins axis_interconnect_0/M04_AXIS]
  connect_bd_intf_net -intf_net axis_interconnect_M01_AXIS [get_bd_intf_pins axi_dma/S_AXIS_S2MM] [get_bd_intf_pins axis_interconnect_0/M01_AXIS]
set_property HDL_ATTRIBUTE.DEBUG_IN_BD {true} [get_bd_intf_nets axis_interconnect_M01_AXIS]
set_property HDL_ATTRIBUTE.MARK_DEBUG {true} [get_bd_intf_nets axis_interconnect_M01_AXIS]
  connect_bd_intf_net -intf_net axis_interconnect_M02_AXIS [get_bd_intf_pins axi_fifo_mm_s_0/AXI_STR_RXD] [get_bd_intf_pins axis_interconnect_0/M02_AXIS]
set_property HDL_ATTRIBUTE.DEBUG_IN_BD {true} [get_bd_intf_nets axis_interconnect_M02_AXIS]
set_property HDL_ATTRIBUTE.MARK_DEBUG {true} [get_bd_intf_nets axis_interconnect_M02_AXIS]
  connect_bd_intf_net -intf_net axis_interconnect_M03_AXIS [get_bd_intf_pins axis_data_fifo_0/S_AXIS] [get_bd_intf_pins axis_interconnect_0/M03_AXIS]
  connect_bd_intf_net -intf_net clkbuf_1 [get_bd_intf_pins clkbuf] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]

  # Create port connections
  connect_bd_net -net S00_AXIS_ACLK1_1 [get_bd_pins aresetn_cdc_0/aclk] [get_bd_pins aurora_axis_0/S_AXI_ACLK] [get_bd_pins aurora_axis_0/user_clk_out] [get_bd_pins axi_interconnect_mm_0/M04_ACLK] [get_bd_pins axis_interconnect_0/S00_AXIS_ACLK1]
  connect_bd_net -net S00_AXIS_ARESETN_1 [get_bd_pins axis_interconnect_0/S00_AXIS_ARESETN] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net aresetn_cdc_0_aresetn [get_bd_pins aresetn_cdc_0/aresetn] [get_bd_pins aurora_axis_0/S_AXI_ARESETN]
  connect_bd_net -net aurora_axis_0_sys_reset_out [get_bd_pins aurora_axis_0/sys_reset_out] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net aurora_reset_0_reset [get_bd_pins aurora_axis_0/reset] [get_bd_pins aurora_reset_0/reset]
  connect_bd_net -net axi_dma_0_mm2s_introut [get_bd_pins irq_dma_mm2s] [get_bd_pins axi_dma/mm2s_introut]
  connect_bd_net -net axi_dma_0_s2mm_introut [get_bd_pins irq_dma_s2mm] [get_bd_pins axi_dma/s2mm_introut]
  connect_bd_net -net pcie_0_peripheral_aresetn [get_bd_pins aresetn] [get_bd_pins aresetn_cdc_0/aresetn_in] [get_bd_pins axi_dma/axi_resetn] [get_bd_pins axi_fifo_mm_s_0/s_axi_aresetn] [get_bd_pins axi_interconnect_mm_0/M04_ARESETN] [get_bd_pins axi_interconnect_mm_0/S00_ARESETN] [get_bd_pins axis_data_fifo_0/s_axis_aresetn] [get_bd_pins axis_data_fifo_1/s_axis_aresetn] [get_bd_pins axis_interconnect_0/S_AXI_CTRL_ARESETN]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins clk] [get_bd_pins axi_dma/m_axi_sg_aclk] [get_bd_pins axi_fifo_mm_s_0/s_axi_aclk] [get_bd_pins axi_interconnect_mm_0/S00_ACLK] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins axis_data_fifo_1/s_axis_aclk] [get_bd_pins axis_interconnect_0/S00_AXIS_ACLK]
  connect_bd_net -net user_clk_1 [get_bd_pins user_clk] [get_bd_pins aurora_axis_0/free_clk_in] [get_bd_pins aurora_reset_0/clk156]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins aurora_axis_0/gt_refclk1] [get_bd_pins util_ds_buf_0/IBUF_OUT]
  connect_bd_net -net xsg_pio_interrupt [get_bd_pins irq_fifo] [get_bd_pins axi_fifo_mm_s_0/interrupt]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set clkbuf [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 clkbuf ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   ] $clkbuf
  set pcie_mgt [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pcie_mgt ]
  set pcie_ref [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 pcie_ref ]
  set sfp [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sfp_rtl:1.0 sfp ]
  set user_clk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 user_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156000000} \
   ] $user_clk

  # Create ports
  set perstn [ create_bd_port -dir I -type rst perstn ]

  # Create instance: concat_0, and set properties
  set block_name concat
  set block_cell_name concat_0
  if { [catch {set concat_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $concat_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: hier_0
  create_hier_cell_hier_0 [current_bd_instance .] hier_0

  # Create instance: mm_interconnect_0
  create_hier_cell_mm_interconnect_0 [current_bd_instance .] mm_interconnect_0

  # Create instance: pcie_0
  create_hier_cell_pcie_0 [current_bd_instance .] pcie_0

  # Create instance: timer_0
  create_hier_cell_timer_0 [current_bd_instance .] timer_0

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net clkbuf_1 [get_bd_intf_ports clkbuf] [get_bd_intf_pins hier_0/clkbuf]
  connect_bd_intf_net -intf_net hier_0_M_AXI_DMA_PCIE [get_bd_intf_pins hier_0/M_AXI_DMA_PCIE] [get_bd_intf_pins pcie_0/S_AXI]
set_property HDL_ATTRIBUTE.MARK_DEBUG {true} [get_bd_intf_nets hier_0_M_AXI_DMA_PCIE]
  connect_bd_intf_net -intf_net hier_0_sfp [get_bd_intf_ports sfp] [get_bd_intf_pins hier_0/sfp]
  connect_bd_intf_net -intf_net mm_interconnect_0_M04_AXI [get_bd_intf_pins hier_0/S_AXI_FULL] [get_bd_intf_pins mm_interconnect_0/M04_AXI]
  connect_bd_intf_net -intf_net mm_interconnect_M00_AXI [get_bd_intf_pins mm_interconnect_0/M00_AXI] [get_bd_intf_pins timer_0/S_AXI]
  connect_bd_intf_net -intf_net mm_interconnect_M03_AXI [get_bd_intf_pins hier_0/S_AXI_LITE] [get_bd_intf_pins mm_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net mm_interconnect_M04_AXI1 [get_bd_intf_pins mm_interconnect_0/M03_AXI] [get_bd_intf_pins pcie_0/S_AXI_CTL]
  connect_bd_intf_net -intf_net pcie_M_AXI [get_bd_intf_pins mm_interconnect_0/S00_AXI] [get_bd_intf_pins pcie_0/M_AXI]
set_property HDL_ATTRIBUTE.MARK_DEBUG {true} [get_bd_intf_nets pcie_M_AXI]
  connect_bd_intf_net -intf_net pcie_PCIE_MGT [get_bd_intf_ports pcie_mgt] [get_bd_intf_pins pcie_0/PCIE_MGT]
  connect_bd_intf_net -intf_net pcie_ref_1 [get_bd_intf_ports pcie_ref] [get_bd_intf_pins pcie_0/PCIE_REFCLK]
  connect_bd_intf_net -intf_net user_clk_2 [get_bd_intf_ports user_clk] [get_bd_intf_pins util_ds_buf_1/CLK_IN_D]

  # Create port connections
  connect_bd_net -net hier_0_irq_dma_mm2s [get_bd_pins concat_0/in2] [get_bd_pins hier_0/irq_dma_mm2s]
  connect_bd_net -net hier_0_irq_dma_s2mm [get_bd_pins concat_0/in3] [get_bd_pins hier_0/irq_dma_s2mm]
  connect_bd_net -net hier_0_irq_fifo [get_bd_pins concat_0/in1] [get_bd_pins hier_0/irq_fifo]
  connect_bd_net -net msi_irq_1 [get_bd_pins concat_0/concated] [get_bd_pins pcie_0/msi_irq]
  connect_bd_net -net pcie_0_interconnect_aresetn [get_bd_pins mm_interconnect_0/M01_ARESETN] [get_bd_pins pcie_0/interconnect_aresetn]
  connect_bd_net -net pcie_0_peripheral_aresetn [get_bd_pins hier_0/aresetn] [get_bd_pins pcie_0/peripheral_aresetn] [get_bd_pins timer_0/s_axi_aresetn]
  connect_bd_net -net perstn_1 [get_bd_ports perstn] [get_bd_pins pcie_0/perstn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins hier_0/clk] [get_bd_pins mm_interconnect_0/S00_ACLK] [get_bd_pins pcie_0/axi_aclk_out] [get_bd_pins timer_0/s_axi_aclk]
  connect_bd_net -net timer_0_irq_timer_0 [get_bd_pins concat_0/in0] [get_bd_pins timer_0/irq_timer_0]
  connect_bd_net -net user_clk_1 [get_bd_pins hier_0/user_clk] [get_bd_pins util_ds_buf_1/IBUF_OUT]

  # Create address segments
  create_bd_addr_seg -range 0x00001000 -offset 0x00002000 [get_bd_addr_spaces pcie_0/axi_pcie_0/M_AXI] [get_bd_addr_segs hier_0/aurora_axis_0/S_AXI/reg0] SEG_aurora_axis_0_reg0
  create_bd_addr_seg -range 0x00001000 -offset 0x00003000 [get_bd_addr_spaces pcie_0/axi_pcie_0/M_AXI] [get_bd_addr_segs hier_0/axi_dma/axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0x00008000 [get_bd_addr_spaces pcie_0/axi_pcie_0/M_AXI] [get_bd_addr_segs hier_0/axi_fifo_mm_s_0/S_AXI/Mem0] SEG_axi_fifo_mm_s_0_Mem0
  create_bd_addr_seg -range 0x00002000 -offset 0x0000C000 [get_bd_addr_spaces pcie_0/axi_pcie_0/M_AXI] [get_bd_addr_segs hier_0/axi_fifo_mm_s_0/S_AXI_FULL/Mem1] SEG_axi_fifo_mm_s_0_Mem1
  create_bd_addr_seg -range 0x10000000 -offset 0x10000000 [get_bd_addr_spaces pcie_0/axi_pcie_0/M_AXI] [get_bd_addr_segs pcie_0/axi_pcie_0/S_AXI_CTL/CTL0] SEG_axi_pcie_0_CTL0
  create_bd_addr_seg -range 0x00001000 -offset 0x00001000 [get_bd_addr_spaces pcie_0/axi_pcie_0/M_AXI] [get_bd_addr_segs pcie_0/axi_pcie_intc_0/s_axi/reg0] SEG_axi_pcie_intc_0_reg0
  create_bd_addr_seg -range 0x00001000 -offset 0x00007000 [get_bd_addr_spaces pcie_0/axi_pcie_0/M_AXI] [get_bd_addr_segs pcie_0/axi_reset_0/S_AXI/Reg] SEG_axi_reset_0_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00004000 [get_bd_addr_spaces pcie_0/axi_pcie_0/M_AXI] [get_bd_addr_segs timer_0/axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00005000 [get_bd_addr_spaces pcie_0/axi_pcie_0/M_AXI] [get_bd_addr_segs hier_0/axis_interconnect_0/axis_interconnect_0/xbar/S_AXI_CTRL/Reg] SEG_xbar_Reg
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces hier_0/axi_dma/axi_dma_0/Data_MM2S] [get_bd_addr_segs pcie_0/axi_pcie_0/S_AXI/BAR0] SEG_axi_pcie_0_BAR0
  create_bd_addr_seg -range 0x000100000000 -offset 0x00000000 [get_bd_addr_spaces hier_0/axi_dma/axi_dma_0/Data_S2MM] [get_bd_addr_segs pcie_0/axi_pcie_0/S_AXI/BAR0] SEG_axi_pcie_0_BAR0

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   "ExpandedHierarchyInLayout":"",
   "guistr":"# # String gsaved with Nlview 6.8.11  2018-08-07 bk=1.4403 VDI=40 GEI=35 GUI=JA:9.0 TLS
#  -string -flagsOSRD
preplace port pcie_ref -pg 1 -y 460 -defaultsOSRD
preplace port perstn -pg 1 -y 480 -defaultsOSRD
preplace port clkbuf -pg 1 -y 170 -defaultsOSRD
preplace port user_clk -pg 1 -y 400 -defaultsOSRD
preplace port pcie_mgt -pg 1 -y 410 -defaultsOSRD
preplace port sfp -pg 1 -y 280 -defaultsOSRD
preplace inst util_ds_buf_1 -pg 1 -lvl 1 -y 400 -defaultsOSRD
preplace inst timer_0 -pg 1 -lvl 2 -y 630 -defaultsOSRD
preplace inst hier_0 -pg 1 -lvl 2 -y 320 -defaultsOSRD
preplace inst concat_0 -pg 1 -lvl 2 -y 110 -defaultsOSRD
preplace inst mm_interconnect_0 -pg 1 -lvl 1 -y 270 -defaultsOSRD
preplace inst pcie_0 -pg 1 -lvl 3 -y 430 -defaultsOSRD
preplace netloc pcie_PCIE_MGT 1 3 1 NJ
preplace netloc timer_0_irq_timer_0 1 1 2 410 440 720
preplace netloc mm_interconnect_0_M04_AXI 1 1 1 360
preplace netloc s_axi_aclk_1 1 0 4 30 470 390 530 NJ 530 1180
preplace netloc msi_irq_1 1 2 1 760
preplace netloc hier_0_irq_dma_mm2s 1 1 2 420 200 730
preplace netloc hier_0_sfp 1 2 2 750J 280 NJ
preplace netloc user_clk_1 1 1 1 380J
preplace netloc mm_interconnect_M03_AXI 1 1 1 350
preplace netloc user_clk_2 1 0 1 NJ
preplace netloc pcie_0_interconnect_aresetn 1 0 4 30 20 NJ 20 NJ 20 1170
preplace netloc hier_0_M_AXI_DMA_PCIE 1 2 1 740
preplace netloc clkbuf_1 1 0 2 NJ 170 380J
preplace netloc mm_interconnect_M00_AXI 1 1 1 370
preplace netloc mm_interconnect_M04_AXI1 1 1 2 340 430 NJ
preplace netloc pcie_ref_1 1 0 3 NJ 460 NJ 460 770J
preplace netloc pcie_M_AXI 1 0 4 20 10 NJ 10 NJ 10 1180
preplace netloc hier_0_irq_fifo 1 1 2 400 420 720
preplace netloc pcie_0_peripheral_aresetn 1 1 3 420 520 NJ 520 1170
preplace netloc perstn_1 1 0 3 NJ 480 410J 470 NJ
preplace netloc hier_0_irq_dma_s2mm 1 1 2 390 210 720
levelinfo -pg 1 0 200 570 990 1220 -top 0 -bot 700
"
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


common::send_msg_id "BD_TCL-1000" "WARNING" "This Tcl script was generated from a block design that has not been validated. It is possible that design <$design_name> may result in errors during validation."


# Default values
set library     {sysgen}
set ip_repo     $target_dir

# Some helper variables
set top         [get_property top [current_fileset]]
set script_dir  [file dirname [info script]]

# Include some Tcl libs
source [file join $script_dir "try.tcl"]

# This script packages the project using the IP Package (IP-XACT)
ipx::package_project

set cc          [ipx::current_core]

# Include RTDS_InterfaceModule specifics of used
if {[get_files -quiet */RTDS_InterfaceModule.ngc] ne ""} {
    source [file join $script_dir "rtds.tcl"]
}

# IP Identification
set_property library                $library                $cc
set_property name                   $top                    $cc
set_property vendor                 $vendor                 $cc
set_property vendor_display_name    $vendor_display_name    $cc
set_property version                $version                $cc
set_property description            $desc                   $cc
set_property company_url            $company_url            $cc

set_property supported_families     {{virtex7} {Production}} $cc
set_property taxonomy {{/System Generator for DSP} {/Embedded_Processing/AXI_Peripheral}} $cc

# Filegroup handles
ipx::add_file_group -type product_guide {} $cc

set fg_ug    [ipx::get_file_groups xilinx_productguide                    -of_objects $cc]
set fg_synth [ipx::get_file_groups xilinx_anylanguagesynthesis            -of_objects $cc]
set fg_behav [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects $cc]

# Add product guide

ipx::add_file sysgen/${top}.htm [ipx::get_file_groups xilinx_productguide -of_objects $cc]
set_property type html [ipx::get_files sysgen/$top.htm -of_objects $fg_ug]

# Workaround for System Generator Bug
try {
    ipx::remove_file ${top}_blk_mem_gen_v8_3_i0_vivado.coe $fg_synth
    ipx::remove_file ${top}_blk_mem_gen_v8_3_i0_vivado.coe $fg_behav
}

# We have to remove the create_clock constraint here.
# The clock_create constraint will be provided by the parent project.
try {
    ipx::remove_file package/${top}.srcs/constrs_1/imports/sysgen/${top}_clock.xdc $fg_synth
}

ipx::update_checksums $cc
ipx::save_core        $cc
ipx::check_integrity  $cc

set zip "${vendor}_${library}_${top}_${version}.zip"
ipx::archive_core "${ip_repo}/${zip}" $cc
# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FACTOR" -parent ${Page_0}


}

proc update_PARAM_VALUE.FACTOR { PARAM_VALUE.FACTOR } {
	# Procedure called to update FACTOR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FACTOR { PARAM_VALUE.FACTOR } {
	# Procedure called to validate FACTOR
	return true
}


proc update_MODELPARAM_VALUE.FACTOR { MODELPARAM_VALUE.FACTOR PARAM_VALUE.FACTOR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FACTOR}] ${MODELPARAM_VALUE.FACTOR}
}

proc update_MODELPARAM_VALUE.OFFSET { MODELPARAM_VALUE.OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "OFFSET". Setting updated value from the model parameter.
set_property value 1.2 ${MODELPARAM_VALUE.OFFSET}
}


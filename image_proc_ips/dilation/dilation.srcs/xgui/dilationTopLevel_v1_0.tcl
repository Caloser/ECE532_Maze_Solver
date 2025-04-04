# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "LINE_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROW_SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.LINE_SIZE { PARAM_VALUE.LINE_SIZE } {
	# Procedure called to update LINE_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LINE_SIZE { PARAM_VALUE.LINE_SIZE } {
	# Procedure called to validate LINE_SIZE
	return true
}

proc update_PARAM_VALUE.ROW_SIZE { PARAM_VALUE.ROW_SIZE } {
	# Procedure called to update ROW_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROW_SIZE { PARAM_VALUE.ROW_SIZE } {
	# Procedure called to validate ROW_SIZE
	return true
}


proc update_MODELPARAM_VALUE.LINE_SIZE { MODELPARAM_VALUE.LINE_SIZE PARAM_VALUE.LINE_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LINE_SIZE}] ${MODELPARAM_VALUE.LINE_SIZE}
}

proc update_MODELPARAM_VALUE.ROW_SIZE { MODELPARAM_VALUE.ROW_SIZE PARAM_VALUE.ROW_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROW_SIZE}] ${MODELPARAM_VALUE.ROW_SIZE}
}


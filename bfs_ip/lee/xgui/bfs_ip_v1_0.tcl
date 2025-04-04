# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MAZE_COLS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAZE_ROWS" -parent ${Page_0}


}

proc update_PARAM_VALUE.MAZE_COLS { PARAM_VALUE.MAZE_COLS } {
	# Procedure called to update MAZE_COLS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAZE_COLS { PARAM_VALUE.MAZE_COLS } {
	# Procedure called to validate MAZE_COLS
	return true
}

proc update_PARAM_VALUE.MAZE_ROWS { PARAM_VALUE.MAZE_ROWS } {
	# Procedure called to update MAZE_ROWS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAZE_ROWS { PARAM_VALUE.MAZE_ROWS } {
	# Procedure called to validate MAZE_ROWS
	return true
}


proc update_MODELPARAM_VALUE.MAZE_ROWS { MODELPARAM_VALUE.MAZE_ROWS PARAM_VALUE.MAZE_ROWS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAZE_ROWS}] ${MODELPARAM_VALUE.MAZE_ROWS}
}

proc update_MODELPARAM_VALUE.MAZE_COLS { MODELPARAM_VALUE.MAZE_COLS PARAM_VALUE.MAZE_COLS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAZE_COLS}] ${MODELPARAM_VALUE.MAZE_COLS}
}


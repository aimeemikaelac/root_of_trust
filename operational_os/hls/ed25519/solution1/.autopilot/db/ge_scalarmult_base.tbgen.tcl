set moduleName ge_scalarmult_base
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ge_scalarmult_base}
set C_modelType { int 960 }
set C_modelArgList {
	{ a int 8 regular {array 64 { 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 960} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_address0 sc_out sc_lv 6 signal 0 } 
	{ a_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_q0 sc_in sc_lv 8 signal 0 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
	{ ap_return_8 sc_out sc_lv 32 signal -1 } 
	{ ap_return_9 sc_out sc_lv 32 signal -1 } 
	{ ap_return_10 sc_out sc_lv 32 signal -1 } 
	{ ap_return_11 sc_out sc_lv 32 signal -1 } 
	{ ap_return_12 sc_out sc_lv 32 signal -1 } 
	{ ap_return_13 sc_out sc_lv 32 signal -1 } 
	{ ap_return_14 sc_out sc_lv 32 signal -1 } 
	{ ap_return_15 sc_out sc_lv 32 signal -1 } 
	{ ap_return_16 sc_out sc_lv 32 signal -1 } 
	{ ap_return_17 sc_out sc_lv 32 signal -1 } 
	{ ap_return_18 sc_out sc_lv 32 signal -1 } 
	{ ap_return_19 sc_out sc_lv 32 signal -1 } 
	{ ap_return_20 sc_out sc_lv 32 signal -1 } 
	{ ap_return_21 sc_out sc_lv 32 signal -1 } 
	{ ap_return_22 sc_out sc_lv 32 signal -1 } 
	{ ap_return_23 sc_out sc_lv 32 signal -1 } 
	{ ap_return_24 sc_out sc_lv 32 signal -1 } 
	{ ap_return_25 sc_out sc_lv 32 signal -1 } 
	{ ap_return_26 sc_out sc_lv 32 signal -1 } 
	{ ap_return_27 sc_out sc_lv 32 signal -1 } 
	{ ap_return_28 sc_out sc_lv 32 signal -1 } 
	{ ap_return_29 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "9", "11", "12", "18"],
		"CDFG" : "ge_scalarmult_base",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p3_fu_1756"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p3_fu_1756"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p3_fu_1756"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1757"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1757"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1757"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p2_dbl_fu_1757"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p2_fu_1758"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p2_fu_1758"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_p1p1_to_p2_fu_1758"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_madd_fu_3257"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ge_madd_fu_3257"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_select_r_fu_3411"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_select_r_fu_3411"}],
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "base_yplusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_select_r_fu_3411", "Port" : "base_yplusx"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_select_r_fu_3411", "Port" : "base_yminusx"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_select_r_fu_3411", "Port" : "base_xy2d"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.e_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ge_p1p1_to_p3_fu_1756", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "ge_p1p1_to_p3",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"}],
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_p1p1_to_p3_fu_1756.grp_fe_mul_fu_348", "Parent" : "2",
		"CDFG" : "fe_mul",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ge_p2_dbl_fu_1757", "Parent" : "0", "Child" : ["5", "6", "7", "8"],
		"CDFG" : "ge_p2_dbl",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_add_fu_402"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_add_fu_402"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sub_fu_495"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_545"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_545"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq_fu_545"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sq2_fu_602"}],
		"Port" : [
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read142", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read243", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read344", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read445", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read546", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read647", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read748", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read849", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read950", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1051", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1152", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1253", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1354", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1455", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1556", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1657", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1758", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1859", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1960", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2040", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2141", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2242", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2343", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2444", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2545", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2646", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2747", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2848", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2949", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_p2_dbl_fu_1757.grp_fe_add_fu_402", "Parent" : "4",
		"CDFG" : "fe_add",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_p2_dbl_fu_1757.grp_fe_sub_fu_495", "Parent" : "4",
		"CDFG" : "fe_sub",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_p2_dbl_fu_1757.grp_fe_sq_fu_545", "Parent" : "4",
		"CDFG" : "fe_sq",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_p2_dbl_fu_1757.grp_fe_sq2_fu_602", "Parent" : "4",
		"CDFG" : "fe_sq2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ge_p1p1_to_p2_fu_1758", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "ge_p1p1_to_p2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_348"}],
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_p1p1_to_p2_fu_1758.grp_fe_mul_fu_348", "Parent" : "9",
		"CDFG" : "fe_mul",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fe_copy_fu_3213", "Parent" : "0",
		"CDFG" : "fe_copy",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ge_madd_fu_3257", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17"],
		"CDFG" : "ge_madd",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_add_fu_707"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_add_fu_707"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sub_fu_708"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_sub_fu_708"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_867"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_fu_1026"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_mul_1_fu_1309"}],
		"Port" : [
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read141", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read242", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read343", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read444", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read545", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read646", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read747", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read848", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read949", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1040", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1141", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1242", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1343", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1444", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1545", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1646", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1747", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1848", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1949", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2050", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2151", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2252", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2353", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2454", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2555", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2656", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2757", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2858", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2959", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3050", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3151", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3252", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3353", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3454", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3555", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3656", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3757", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3858", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3959", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4060", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_madd_fu_3257.grp_fe_add_fu_707", "Parent" : "12",
		"CDFG" : "fe_add",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_madd_fu_3257.grp_fe_sub_fu_708", "Parent" : "12",
		"CDFG" : "fe_sub",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_madd_fu_3257.grp_fe_mul_fu_867", "Parent" : "12",
		"CDFG" : "fe_mul",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_madd_fu_3257.grp_fe_mul_fu_1026", "Parent" : "12",
		"CDFG" : "fe_mul",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ge_madd_fu_3257.grp_fe_mul_1_fu_1309", "Parent" : "12",
		"CDFG" : "fe_mul_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_select_r_fu_3411", "Parent" : "0", "Child" : ["19", "24", "25", "26", "27"],
		"CDFG" : "select_r",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_fu_223"}],
		"Port" : [
			{"Name" : "pos_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_yplusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_cmov_fu_223", "Port" : "base_yplusx"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_cmov_fu_223", "Port" : "base_yminusx"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_cmov_fu_223", "Port" : "base_xy2d"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_r_fu_3411.grp_cmov_fu_223", "Parent" : "18", "Child" : ["20", "21", "22", "23"],
		"CDFG" : "cmov",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_cmov_fu_336"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_cmov_fu_336"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fe_cmov_fu_336"}],
		"Port" : [
			{"Name" : "t_yplusx_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yplusx_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_yminusx_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_xy2d_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_756", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_yplusx_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_7561", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_yminusx_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_7562", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_xy2d_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "base_yplusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]},
			{"Name" : "base_yminusx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]},
			{"Name" : "base_xy2d", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_fe_cmov_fu_336", "Port" : "g"}]}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_select_r_fu_3411.grp_cmov_fu_223.base_yplusx_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_select_r_fu_3411.grp_cmov_fu_223.base_yminusx_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_select_r_fu_3411.grp_cmov_fu_223.base_xy2d_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_select_r_fu_3411.grp_cmov_fu_223.grp_fe_cmov_fu_336", "Parent" : "19",
		"CDFG" : "fe_cmov",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "g", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_7562", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_xy2d_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_r_fu_3411.grp_fe_copy_fu_455", "Parent" : "18",
		"CDFG" : "fe_copy",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_r_fu_3411.call_ret_i_fe_cmov_1_fu_469", "Parent" : "18",
		"CDFG" : "fe_cmov_1",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_r_fu_3411.call_ret33_i_fe_cmov_1_fu_494", "Parent" : "18",
		"CDFG" : "fe_cmov_1",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_r_fu_3411.call_ret32_i_fe_cmov_1_fu_519", "Parent" : "18",
		"CDFG" : "fe_cmov_1",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "f_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	ge_scalarmult_base {
		a {Type I LastRead 1 FirstWrite -1}
		base_yplusx {Type I LastRead -1 FirstWrite -1}
		base_yminusx {Type I LastRead -1 FirstWrite -1}
		base_xy2d {Type I LastRead -1 FirstWrite -1}}
	ge_p1p1_to_p3 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 1 FirstWrite -1}
		p_read11 {Type I LastRead 1 FirstWrite -1}
		p_read12 {Type I LastRead 1 FirstWrite -1}
		p_read13 {Type I LastRead 1 FirstWrite -1}
		p_read14 {Type I LastRead 1 FirstWrite -1}
		p_read15 {Type I LastRead 1 FirstWrite -1}
		p_read16 {Type I LastRead 1 FirstWrite -1}
		p_read17 {Type I LastRead 1 FirstWrite -1}
		p_read18 {Type I LastRead 1 FirstWrite -1}
		p_read19 {Type I LastRead 1 FirstWrite -1}
		p_read20 {Type I LastRead 1 FirstWrite -1}
		p_read21 {Type I LastRead 1 FirstWrite -1}
		p_read22 {Type I LastRead 1 FirstWrite -1}
		p_read23 {Type I LastRead 1 FirstWrite -1}
		p_read24 {Type I LastRead 1 FirstWrite -1}
		p_read25 {Type I LastRead 1 FirstWrite -1}
		p_read26 {Type I LastRead 1 FirstWrite -1}
		p_read27 {Type I LastRead 1 FirstWrite -1}
		p_read28 {Type I LastRead 1 FirstWrite -1}
		p_read29 {Type I LastRead 1 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}}
	fe_mul {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	ge_p2_dbl {
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read142 {Type I LastRead 0 FirstWrite -1}
		p_read243 {Type I LastRead 0 FirstWrite -1}
		p_read344 {Type I LastRead 0 FirstWrite -1}
		p_read445 {Type I LastRead 0 FirstWrite -1}
		p_read546 {Type I LastRead 0 FirstWrite -1}
		p_read647 {Type I LastRead 0 FirstWrite -1}
		p_read748 {Type I LastRead 0 FirstWrite -1}
		p_read849 {Type I LastRead 0 FirstWrite -1}
		p_read950 {Type I LastRead 0 FirstWrite -1}
		p_read1051 {Type I LastRead 0 FirstWrite -1}
		p_read1152 {Type I LastRead 0 FirstWrite -1}
		p_read1253 {Type I LastRead 0 FirstWrite -1}
		p_read1354 {Type I LastRead 0 FirstWrite -1}
		p_read1455 {Type I LastRead 0 FirstWrite -1}
		p_read1556 {Type I LastRead 0 FirstWrite -1}
		p_read1657 {Type I LastRead 0 FirstWrite -1}
		p_read1758 {Type I LastRead 0 FirstWrite -1}
		p_read1859 {Type I LastRead 0 FirstWrite -1}
		p_read1960 {Type I LastRead 0 FirstWrite -1}
		p_read2040 {Type I LastRead 0 FirstWrite -1}
		p_read2141 {Type I LastRead 0 FirstWrite -1}
		p_read2242 {Type I LastRead 0 FirstWrite -1}
		p_read2343 {Type I LastRead 0 FirstWrite -1}
		p_read2444 {Type I LastRead 0 FirstWrite -1}
		p_read2545 {Type I LastRead 0 FirstWrite -1}
		p_read2646 {Type I LastRead 0 FirstWrite -1}
		p_read2747 {Type I LastRead 0 FirstWrite -1}
		p_read2848 {Type I LastRead 0 FirstWrite -1}
		p_read2949 {Type I LastRead 0 FirstWrite -1}}
	fe_add {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 1 FirstWrite -1}
		f_2_read {Type I LastRead 2 FirstWrite -1}
		f_3_read {Type I LastRead 3 FirstWrite -1}
		f_4_read {Type I LastRead 4 FirstWrite -1}
		f_5_read {Type I LastRead 5 FirstWrite -1}
		f_6_read {Type I LastRead 6 FirstWrite -1}
		f_7_read {Type I LastRead 7 FirstWrite -1}
		f_8_read {Type I LastRead 8 FirstWrite -1}
		f_9_read {Type I LastRead 9 FirstWrite -1}
		g_0_read {Type I LastRead 0 FirstWrite -1}
		g_1_read {Type I LastRead 1 FirstWrite -1}
		g_2_read {Type I LastRead 2 FirstWrite -1}
		g_3_read {Type I LastRead 3 FirstWrite -1}
		g_4_read {Type I LastRead 4 FirstWrite -1}
		g_5_read {Type I LastRead 5 FirstWrite -1}
		g_6_read {Type I LastRead 6 FirstWrite -1}
		g_7_read {Type I LastRead 7 FirstWrite -1}
		g_8_read {Type I LastRead 8 FirstWrite -1}
		g_9_read {Type I LastRead 9 FirstWrite -1}}
	fe_sub {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 1 FirstWrite -1}
		f_2_read {Type I LastRead 2 FirstWrite -1}
		f_3_read {Type I LastRead 3 FirstWrite -1}
		f_4_read {Type I LastRead 4 FirstWrite -1}
		f_5_read {Type I LastRead 5 FirstWrite -1}
		f_6_read {Type I LastRead 6 FirstWrite -1}
		f_7_read {Type I LastRead 7 FirstWrite -1}
		f_8_read {Type I LastRead 8 FirstWrite -1}
		f_9_read {Type I LastRead 9 FirstWrite -1}
		g_0_read {Type I LastRead 0 FirstWrite -1}
		g_1_read {Type I LastRead 1 FirstWrite -1}
		g_2_read {Type I LastRead 2 FirstWrite -1}
		g_3_read {Type I LastRead 3 FirstWrite -1}
		g_4_read {Type I LastRead 4 FirstWrite -1}
		g_5_read {Type I LastRead 5 FirstWrite -1}
		g_6_read {Type I LastRead 6 FirstWrite -1}
		g_7_read {Type I LastRead 7 FirstWrite -1}
		g_8_read {Type I LastRead 8 FirstWrite -1}
		g_9_read {Type I LastRead 9 FirstWrite -1}}
	fe_sq {
		f_0_read {Type I LastRead 5 FirstWrite -1}
		f_1_read {Type I LastRead 6 FirstWrite -1}
		f_2_read {Type I LastRead 7 FirstWrite -1}
		f_3_read {Type I LastRead 8 FirstWrite -1}
		f_4_read {Type I LastRead 9 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 1 FirstWrite -1}
		f_7_read {Type I LastRead 2 FirstWrite -1}
		f_8_read {Type I LastRead 3 FirstWrite -1}
		f_9_read {Type I LastRead 4 FirstWrite -1}}
	fe_sq2 {
		f_0_read {Type I LastRead 5 FirstWrite -1}
		f_1_read {Type I LastRead 6 FirstWrite -1}
		f_2_read {Type I LastRead 7 FirstWrite -1}
		f_3_read {Type I LastRead 8 FirstWrite -1}
		f_4_read {Type I LastRead 9 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 1 FirstWrite -1}
		f_7_read {Type I LastRead 2 FirstWrite -1}
		f_8_read {Type I LastRead 3 FirstWrite -1}
		f_9_read {Type I LastRead 4 FirstWrite -1}}
	ge_p1p1_to_p2 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 1 FirstWrite -1}
		p_read11 {Type I LastRead 1 FirstWrite -1}
		p_read12 {Type I LastRead 1 FirstWrite -1}
		p_read13 {Type I LastRead 1 FirstWrite -1}
		p_read14 {Type I LastRead 1 FirstWrite -1}
		p_read15 {Type I LastRead 1 FirstWrite -1}
		p_read16 {Type I LastRead 1 FirstWrite -1}
		p_read17 {Type I LastRead 1 FirstWrite -1}
		p_read18 {Type I LastRead 1 FirstWrite -1}
		p_read19 {Type I LastRead 1 FirstWrite -1}
		p_read20 {Type I LastRead 1 FirstWrite -1}
		p_read21 {Type I LastRead 1 FirstWrite -1}
		p_read22 {Type I LastRead 1 FirstWrite -1}
		p_read23 {Type I LastRead 1 FirstWrite -1}
		p_read24 {Type I LastRead 1 FirstWrite -1}
		p_read25 {Type I LastRead 1 FirstWrite -1}
		p_read26 {Type I LastRead 1 FirstWrite -1}
		p_read27 {Type I LastRead 1 FirstWrite -1}
		p_read28 {Type I LastRead 1 FirstWrite -1}
		p_read29 {Type I LastRead 1 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}}
	fe_mul {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	fe_copy {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 0 FirstWrite -1}
		f_2_read {Type I LastRead 0 FirstWrite -1}
		f_3_read {Type I LastRead 0 FirstWrite -1}
		f_4_read {Type I LastRead 0 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 0 FirstWrite -1}
		f_7_read {Type I LastRead 0 FirstWrite -1}
		f_8_read {Type I LastRead 0 FirstWrite -1}
		f_9_read {Type I LastRead 0 FirstWrite -1}}
	ge_madd {
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read141 {Type I LastRead 0 FirstWrite -1}
		p_read242 {Type I LastRead 0 FirstWrite -1}
		p_read343 {Type I LastRead 0 FirstWrite -1}
		p_read444 {Type I LastRead 0 FirstWrite -1}
		p_read545 {Type I LastRead 0 FirstWrite -1}
		p_read646 {Type I LastRead 0 FirstWrite -1}
		p_read747 {Type I LastRead 0 FirstWrite -1}
		p_read848 {Type I LastRead 0 FirstWrite -1}
		p_read949 {Type I LastRead 0 FirstWrite -1}
		p_read1040 {Type I LastRead 0 FirstWrite -1}
		p_read1141 {Type I LastRead 0 FirstWrite -1}
		p_read1242 {Type I LastRead 0 FirstWrite -1}
		p_read1343 {Type I LastRead 0 FirstWrite -1}
		p_read1444 {Type I LastRead 0 FirstWrite -1}
		p_read1545 {Type I LastRead 0 FirstWrite -1}
		p_read1646 {Type I LastRead 0 FirstWrite -1}
		p_read1747 {Type I LastRead 0 FirstWrite -1}
		p_read1848 {Type I LastRead 0 FirstWrite -1}
		p_read1949 {Type I LastRead 0 FirstWrite -1}
		p_read2050 {Type I LastRead 2 FirstWrite -1}
		p_read2151 {Type I LastRead 3 FirstWrite -1}
		p_read2252 {Type I LastRead 4 FirstWrite -1}
		p_read2353 {Type I LastRead 5 FirstWrite -1}
		p_read2454 {Type I LastRead 6 FirstWrite -1}
		p_read2555 {Type I LastRead 7 FirstWrite -1}
		p_read2656 {Type I LastRead 8 FirstWrite -1}
		p_read2757 {Type I LastRead 9 FirstWrite -1}
		p_read2858 {Type I LastRead 9 FirstWrite -1}
		p_read2959 {Type I LastRead 9 FirstWrite -1}
		p_read3050 {Type I LastRead 0 FirstWrite -1}
		p_read3151 {Type I LastRead 0 FirstWrite -1}
		p_read3252 {Type I LastRead 0 FirstWrite -1}
		p_read3353 {Type I LastRead 0 FirstWrite -1}
		p_read3454 {Type I LastRead 0 FirstWrite -1}
		p_read3555 {Type I LastRead 0 FirstWrite -1}
		p_read3656 {Type I LastRead 0 FirstWrite -1}
		p_read3757 {Type I LastRead 0 FirstWrite -1}
		p_read3858 {Type I LastRead 0 FirstWrite -1}
		p_read3959 {Type I LastRead 0 FirstWrite -1}
		p_read4060 {Type I LastRead 2 FirstWrite -1}
		p_read41 {Type I LastRead 2 FirstWrite -1}
		p_read42 {Type I LastRead 2 FirstWrite -1}
		p_read43 {Type I LastRead 2 FirstWrite -1}
		p_read44 {Type I LastRead 2 FirstWrite -1}
		p_read45 {Type I LastRead 2 FirstWrite -1}
		p_read46 {Type I LastRead 2 FirstWrite -1}
		p_read47 {Type I LastRead 2 FirstWrite -1}
		p_read48 {Type I LastRead 2 FirstWrite -1}
		p_read49 {Type I LastRead 2 FirstWrite -1}
		p_read50 {Type I LastRead 2 FirstWrite -1}
		p_read51 {Type I LastRead 2 FirstWrite -1}
		p_read52 {Type I LastRead 2 FirstWrite -1}
		p_read53 {Type I LastRead 2 FirstWrite -1}
		p_read54 {Type I LastRead 2 FirstWrite -1}
		p_read55 {Type I LastRead 2 FirstWrite -1}
		p_read56 {Type I LastRead 2 FirstWrite -1}
		p_read57 {Type I LastRead 2 FirstWrite -1}
		p_read58 {Type I LastRead 2 FirstWrite -1}
		p_read59 {Type I LastRead 2 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}}
	fe_add {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 1 FirstWrite -1}
		f_2_read {Type I LastRead 2 FirstWrite -1}
		f_3_read {Type I LastRead 3 FirstWrite -1}
		f_4_read {Type I LastRead 4 FirstWrite -1}
		f_5_read {Type I LastRead 5 FirstWrite -1}
		f_6_read {Type I LastRead 6 FirstWrite -1}
		f_7_read {Type I LastRead 7 FirstWrite -1}
		f_8_read {Type I LastRead 8 FirstWrite -1}
		f_9_read {Type I LastRead 9 FirstWrite -1}
		g_0_read {Type I LastRead 0 FirstWrite -1}
		g_1_read {Type I LastRead 1 FirstWrite -1}
		g_2_read {Type I LastRead 2 FirstWrite -1}
		g_3_read {Type I LastRead 3 FirstWrite -1}
		g_4_read {Type I LastRead 4 FirstWrite -1}
		g_5_read {Type I LastRead 5 FirstWrite -1}
		g_6_read {Type I LastRead 6 FirstWrite -1}
		g_7_read {Type I LastRead 7 FirstWrite -1}
		g_8_read {Type I LastRead 8 FirstWrite -1}
		g_9_read {Type I LastRead 9 FirstWrite -1}}
	fe_sub {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 1 FirstWrite -1}
		f_2_read {Type I LastRead 2 FirstWrite -1}
		f_3_read {Type I LastRead 3 FirstWrite -1}
		f_4_read {Type I LastRead 4 FirstWrite -1}
		f_5_read {Type I LastRead 5 FirstWrite -1}
		f_6_read {Type I LastRead 6 FirstWrite -1}
		f_7_read {Type I LastRead 7 FirstWrite -1}
		f_8_read {Type I LastRead 8 FirstWrite -1}
		f_9_read {Type I LastRead 9 FirstWrite -1}
		g_0_read {Type I LastRead 0 FirstWrite -1}
		g_1_read {Type I LastRead 1 FirstWrite -1}
		g_2_read {Type I LastRead 2 FirstWrite -1}
		g_3_read {Type I LastRead 3 FirstWrite -1}
		g_4_read {Type I LastRead 4 FirstWrite -1}
		g_5_read {Type I LastRead 5 FirstWrite -1}
		g_6_read {Type I LastRead 6 FirstWrite -1}
		g_7_read {Type I LastRead 7 FirstWrite -1}
		g_8_read {Type I LastRead 8 FirstWrite -1}
		g_9_read {Type I LastRead 9 FirstWrite -1}}
	fe_mul {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	fe_mul {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	fe_mul_1 {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 19 FirstWrite -1}
		f_2_read {Type I LastRead 29 FirstWrite -1}
		f_3_read {Type I LastRead 39 FirstWrite -1}
		f_4_read {Type I LastRead 49 FirstWrite -1}
		f_5_read {Type I LastRead 59 FirstWrite -1}
		f_6_read {Type I LastRead 69 FirstWrite -1}
		f_7_read {Type I LastRead 79 FirstWrite -1}
		f_8_read {Type I LastRead 89 FirstWrite -1}
		f_9_read {Type I LastRead 99 FirstWrite -1}
		g_0_read {Type I LastRead 9 FirstWrite -1}
		g_1_read {Type I LastRead 0 FirstWrite -1}
		g_2_read {Type I LastRead 1 FirstWrite -1}
		g_3_read {Type I LastRead 2 FirstWrite -1}
		g_4_read {Type I LastRead 3 FirstWrite -1}
		g_5_read {Type I LastRead 4 FirstWrite -1}
		g_6_read {Type I LastRead 5 FirstWrite -1}
		g_7_read {Type I LastRead 6 FirstWrite -1}
		g_8_read {Type I LastRead 7 FirstWrite -1}
		g_9_read {Type I LastRead 8 FirstWrite -1}}
	select_r {
		pos_r {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		base_yplusx {Type I LastRead -1 FirstWrite -1}
		base_yminusx {Type I LastRead -1 FirstWrite -1}
		base_xy2d {Type I LastRead -1 FirstWrite -1}}
	cmov {
		t_yplusx_0_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_1_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_2_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_3_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_4_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_5_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_6_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_7_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_8_read {Type I LastRead 0 FirstWrite -1}
		t_yplusx_9_read {Type I LastRead 0 FirstWrite -1}
		t_yminusx_0_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_1_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_2_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_3_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_4_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_5_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_6_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_7_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_8_read {Type I LastRead 1 FirstWrite -1}
		t_yminusx_9_read {Type I LastRead 1 FirstWrite -1}
		t_xy2d_0_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_1_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_2_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_3_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_4_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_5_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_6_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_7_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_8_read {Type I LastRead 2 FirstWrite -1}
		t_xy2d_9_read {Type I LastRead 2 FirstWrite -1}
		tmp_756 {Type I LastRead 0 FirstWrite -1}
		u_yplusx_offset {Type I LastRead 0 FirstWrite -1}
		tmp_7561 {Type I LastRead 1 FirstWrite -1}
		u_yminusx_offset {Type I LastRead 1 FirstWrite -1}
		tmp_7562 {Type I LastRead 2 FirstWrite -1}
		u_xy2d_offset {Type I LastRead 2 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		base_yplusx {Type I LastRead -1 FirstWrite -1}
		base_yminusx {Type I LastRead -1 FirstWrite -1}
		base_xy2d {Type I LastRead -1 FirstWrite -1}}
	fe_cmov {
		f_0_read {Type I LastRead 9 FirstWrite -1}
		f_1_read {Type I LastRead 9 FirstWrite -1}
		f_2_read {Type I LastRead 9 FirstWrite -1}
		f_3_read {Type I LastRead 9 FirstWrite -1}
		f_4_read {Type I LastRead 9 FirstWrite -1}
		f_5_read {Type I LastRead 9 FirstWrite -1}
		f_6_read {Type I LastRead 9 FirstWrite -1}
		f_7_read {Type I LastRead 9 FirstWrite -1}
		f_8_read {Type I LastRead 9 FirstWrite -1}
		f_9_read {Type I LastRead 9 FirstWrite -1}
		g {Type I LastRead 9 FirstWrite -1}
		tmp_7562 {Type I LastRead 0 FirstWrite -1}
		u_xy2d_offset {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 9 FirstWrite -1}}
	fe_copy {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 0 FirstWrite -1}
		f_2_read {Type I LastRead 0 FirstWrite -1}
		f_3_read {Type I LastRead 0 FirstWrite -1}
		f_4_read {Type I LastRead 0 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 0 FirstWrite -1}
		f_7_read {Type I LastRead 0 FirstWrite -1}
		f_8_read {Type I LastRead 0 FirstWrite -1}
		f_9_read {Type I LastRead 0 FirstWrite -1}}
	fe_cmov_1 {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 0 FirstWrite -1}
		f_2_read {Type I LastRead 0 FirstWrite -1}
		f_3_read {Type I LastRead 0 FirstWrite -1}
		f_4_read {Type I LastRead 0 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 0 FirstWrite -1}
		f_7_read {Type I LastRead 0 FirstWrite -1}
		f_8_read {Type I LastRead 0 FirstWrite -1}
		f_9_read {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fe_cmov_1 {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 0 FirstWrite -1}
		f_2_read {Type I LastRead 0 FirstWrite -1}
		f_3_read {Type I LastRead 0 FirstWrite -1}
		f_4_read {Type I LastRead 0 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 0 FirstWrite -1}
		f_7_read {Type I LastRead 0 FirstWrite -1}
		f_8_read {Type I LastRead 0 FirstWrite -1}
		f_9_read {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	fe_cmov_1 {
		f_0_read {Type I LastRead 0 FirstWrite -1}
		f_1_read {Type I LastRead 0 FirstWrite -1}
		f_2_read {Type I LastRead 0 FirstWrite -1}
		f_3_read {Type I LastRead 0 FirstWrite -1}
		f_4_read {Type I LastRead 0 FirstWrite -1}
		f_5_read {Type I LastRead 0 FirstWrite -1}
		f_6_read {Type I LastRead 0 FirstWrite -1}
		f_7_read {Type I LastRead 0 FirstWrite -1}
		f_8_read {Type I LastRead 0 FirstWrite -1}
		f_9_read {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "101237", "Max" : "101237"}
	, {"Name" : "Interval", "Min" : "101237", "Max" : "101237"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { ap_memory {  { a_address0 mem_address 1 6 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 } } }
}

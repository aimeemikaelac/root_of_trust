set moduleName cmult
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {cmult}
set C_modelType { void 0 }
set C_modelArgList {
	{ resultx int 64 regular {array 10 { 0 3 } 0 1 }  }
	{ resultz int 64 regular {array 11 { 0 3 } 0 1 }  }
	{ n int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ q int 26 regular {array 10 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "resultx", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resultz", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "n", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "q", "interface" : "memory", "bitwidth" : 26, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ resultx_address0 sc_out sc_lv 4 signal 0 } 
	{ resultx_ce0 sc_out sc_logic 1 signal 0 } 
	{ resultx_we0 sc_out sc_logic 1 signal 0 } 
	{ resultx_d0 sc_out sc_lv 64 signal 0 } 
	{ resultz_address0 sc_out sc_lv 4 signal 1 } 
	{ resultz_ce0 sc_out sc_logic 1 signal 1 } 
	{ resultz_we0 sc_out sc_logic 1 signal 1 } 
	{ resultz_d0 sc_out sc_lv 64 signal 1 } 
	{ n_address0 sc_out sc_lv 5 signal 2 } 
	{ n_ce0 sc_out sc_logic 1 signal 2 } 
	{ n_q0 sc_in sc_lv 8 signal 2 } 
	{ q_address0 sc_out sc_lv 4 signal 3 } 
	{ q_ce0 sc_out sc_logic 1 signal 3 } 
	{ q_q0 sc_in sc_lv 26 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "resultx_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "resultx", "role": "address0" }} , 
 	{ "name": "resultx_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resultx", "role": "ce0" }} , 
 	{ "name": "resultx_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resultx", "role": "we0" }} , 
 	{ "name": "resultx_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "resultx", "role": "d0" }} , 
 	{ "name": "resultz_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "resultz", "role": "address0" }} , 
 	{ "name": "resultz_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resultz", "role": "ce0" }} , 
 	{ "name": "resultz_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resultz", "role": "we0" }} , 
 	{ "name": "resultz_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "resultz", "role": "d0" }} , 
 	{ "name": "n_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "n", "role": "address0" }} , 
 	{ "name": "n_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n", "role": "ce0" }} , 
 	{ "name": "n_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n", "role": "q0" }} , 
 	{ "name": "q_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "q", "role": "address0" }} , 
 	{ "name": "q_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q", "role": "ce0" }} , 
 	{ "name": "q_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "q", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "33", "34", "35"],
		"CDFG" : "cmult",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fmonty_fu_896"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_swap_conditional_fu_910"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_swap_conditional_fu_910"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_swap_conditional_fu_910"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_swap_conditional_fu_917"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"},
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_1_fu_924"}],
		"Port" : [
			{"Name" : "resultx", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "resultz", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "n", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "q", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_fmonty_fu_896", "Port" : "qmqp"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nqpqx_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nqpqz_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nqx_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nqz_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nqpqx2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nqpqz2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nqx2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nqz2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896", "Parent" : "0", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "23", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "fmonty",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_fu_331"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_fu_331"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_fu_331"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_fu_338"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fproduct_fu_345"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fproduct_fu_345"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fproduct_fu_345"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fproduct_fu_345"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fproduct_1_fu_358"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_degree_fu_366"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_degree_fu_366"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_degree_fu_366"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_degree_fu_366"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_degree_fu_366"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsum_fu_380"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsum_fu_380"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsum_fu_380"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsum_fu_380"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fdifference_1_fu_390"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fdifference_1_fu_390"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fdifference_1_fu_390"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_fu_398"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_fu_398"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_fu_398"}],
		"Port" : [
			{"Name" : "x2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_fproduct_fu_345", "Port" : "output_r"},
					{"ID" : "28", "SubInstance" : "grp_freduce_degree_fu_366", "Port" : "output_r"},
					{"ID" : "29", "SubInstance" : "grp_freduce_coefficients_fu_373", "Port" : "output_r"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_fproduct_fu_345", "Port" : "output_r"},
					{"ID" : "28", "SubInstance" : "grp_freduce_degree_fu_366", "Port" : "output_r"},
					{"ID" : "29", "SubInstance" : "grp_freduce_coefficients_fu_373", "Port" : "output_r"}]},
			{"Name" : "x3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_fproduct_fu_345", "Port" : "in2"},
					{"ID" : "30", "SubInstance" : "grp_fsum_fu_380", "Port" : "output_r"},
					{"ID" : "32", "SubInstance" : "grp_p_memcpy_fu_398", "Port" : "src"},
					{"ID" : "20", "SubInstance" : "grp_fsquare_fu_331", "Port" : "in_r"}]},
			{"Name" : "z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_fsquare_fu_338", "Port" : "in_r"},
					{"ID" : "26", "SubInstance" : "grp_fproduct_fu_345", "Port" : "in_r"},
					{"ID" : "30", "SubInstance" : "grp_fsum_fu_380", "Port" : "in_r"},
					{"ID" : "31", "SubInstance" : "grp_fdifference_1_fu_390", "Port" : "output_r"}]},
			{"Name" : "xprime", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_fproduct_fu_345", "Port" : "in2"},
					{"ID" : "30", "SubInstance" : "grp_fsum_fu_380", "Port" : "output_r"},
					{"ID" : "32", "SubInstance" : "grp_p_memcpy_fu_398", "Port" : "src"}]},
			{"Name" : "zprime", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_fproduct_fu_345", "Port" : "in_r"},
					{"ID" : "30", "SubInstance" : "grp_fsum_fu_380", "Port" : "in_r"},
					{"ID" : "31", "SubInstance" : "grp_fdifference_1_fu_390", "Port" : "output_r"}]},
			{"Name" : "qmqp", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_fproduct_1_fu_358", "Port" : "in_r"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.origx_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.origxprime_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.zzz_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.xx_U", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.zz_U", "Parent" : "10"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.xxprime_U", "Parent" : "10"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.zzprime_U", "Parent" : "10"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.zzzprime_U", "Parent" : "10"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.xxxprime_U", "Parent" : "10"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_fsquare_fu_331", "Parent" : "10", "Child" : ["21", "22"],
		"CDFG" : "fsquare",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_inner_2_fu_469"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_fsquare_inner_2_fu_469", "Port" : "in_r"}]}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_fsquare_fu_331.t_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_fsquare_fu_331.grp_fsquare_inner_2_fu_469", "Parent" : "20",
		"CDFG" : "fsquare_inner_2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_fsquare_fu_338", "Parent" : "10", "Child" : ["24", "25"],
		"CDFG" : "fsquare",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_inner_2_fu_469"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_fsquare_inner_2_fu_469", "Port" : "in_r"}]}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_fsquare_fu_338.t_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_fsquare_fu_338.grp_fsquare_inner_2_fu_469", "Parent" : "23",
		"CDFG" : "fsquare_inner_2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_fproduct_fu_345", "Parent" : "10",
		"CDFG" : "fproduct",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_fproduct_1_fu_358", "Parent" : "10",
		"CDFG" : "fproduct_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_freduce_degree_fu_366", "Parent" : "10",
		"CDFG" : "freduce_degree",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_freduce_coefficients_fu_373", "Parent" : "10",
		"CDFG" : "freduce_coefficients",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_fsum_fu_380", "Parent" : "10",
		"CDFG" : "fsum",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_fdifference_1_fu_390", "Parent" : "10",
		"CDFG" : "fdifference_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fmonty_fu_896.grp_p_memcpy_fu_398", "Parent" : "10",
		"CDFG" : "p_memcpy",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_swap_conditional_fu_910", "Parent" : "0",
		"CDFG" : "swap_conditional",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iswap", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_swap_conditional_fu_917", "Parent" : "0",
		"CDFG" : "swap_conditional",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iswap", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_memcpy_1_fu_924", "Parent" : "0",
		"CDFG" : "p_memcpy_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	cmult {
		resultx {Type O LastRead -1 FirstWrite 17}
		resultz {Type O LastRead -1 FirstWrite 18}
		n {Type I LastRead 15 FirstWrite -1}
		q {Type I LastRead 53 FirstWrite -1}}
	fmonty {
		x2 {Type IO LastRead 9 FirstWrite 0}
		z2 {Type IO LastRead 9 FirstWrite 0}
		x3 {Type O LastRead -1 FirstWrite 27}
		z3 {Type O LastRead -1 FirstWrite 28}
		x {Type IO LastRead 54 FirstWrite -1}
		z {Type IO LastRead 53 FirstWrite -1}
		xprime {Type IO LastRead 54 FirstWrite -1}
		zprime {Type IO LastRead 53 FirstWrite -1}
		qmqp {Type I LastRead 53 FirstWrite -1}}
	fsquare {
		output_r {Type O LastRead -1 FirstWrite 37}
		in_r {Type I LastRead 29 FirstWrite -1}}
	fsquare_inner_2 {
		output_r {Type O LastRead -1 FirstWrite 1}
		in_r {Type I LastRead 29 FirstWrite -1}}
	fsquare {
		output_r {Type O LastRead -1 FirstWrite 37}
		in_r {Type I LastRead 29 FirstWrite -1}}
	fsquare_inner_2 {
		output_r {Type O LastRead -1 FirstWrite 1}
		in_r {Type I LastRead 29 FirstWrite -1}}
	fproduct {
		output_r {Type O LastRead -1 FirstWrite 1}
		in2 {Type I LastRead 54 FirstWrite -1}
		in_r {Type I LastRead 53 FirstWrite -1}}
	fproduct_1 {
		output_r {Type O LastRead -1 FirstWrite 1}
		in2 {Type I LastRead 54 FirstWrite -1}
		in_r {Type I LastRead 53 FirstWrite -1}}
	freduce_degree {
		output_r {Type IO LastRead 9 FirstWrite 9}}
	freduce_coefficients {
		output_r {Type IO LastRead 3 FirstWrite 0}}
	fsum {
		output_r {Type IO LastRead 2 FirstWrite 2}
		in_r {Type I LastRead 2 FirstWrite -1}}
	fdifference_1 {
		output_r {Type IO LastRead 1 FirstWrite 2}
		in_r {Type I LastRead 1 FirstWrite -1}}
	p_memcpy {
		dst {Type O LastRead -1 FirstWrite 2}
		src {Type I LastRead 1 FirstWrite -1}}
	swap_conditional {
		a {Type IO LastRead 1 FirstWrite 2}
		b {Type IO LastRead 1 FirstWrite 2}
		iswap {Type I LastRead 0 FirstWrite -1}}
	swap_conditional {
		a {Type IO LastRead 1 FirstWrite 2}
		b {Type IO LastRead 1 FirstWrite 2}
		iswap {Type I LastRead 0 FirstWrite -1}}
	p_memcpy_1 {
		dst {Type O LastRead -1 FirstWrite 2}
		src {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "464719", "Max" : "464719"}
	, {"Name" : "Interval", "Min" : "464719", "Max" : "464719"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	resultx { ap_memory {  { resultx_address0 mem_address 1 4 }  { resultx_ce0 mem_ce 1 1 }  { resultx_we0 mem_we 1 1 }  { resultx_d0 mem_din 1 64 } } }
	resultz { ap_memory {  { resultz_address0 mem_address 1 4 }  { resultz_ce0 mem_ce 1 1 }  { resultz_we0 mem_we 1 1 }  { resultz_d0 mem_din 1 64 } } }
	n { ap_memory {  { n_address0 mem_address 1 5 }  { n_ce0 mem_ce 1 1 }  { n_q0 mem_dout 0 8 } } }
	q { ap_memory {  { q_address0 mem_address 1 4 }  { q_ce0 mem_ce 1 1 }  { q_q0 mem_dout 0 26 } } }
}

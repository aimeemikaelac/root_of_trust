set moduleName crypto_sign_ed25519_15
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {crypto_sign_ed25519_.15}
set C_modelType { void 0 }
set C_modelArgList {
	{ r_v int 32 regular {array 32 { 2 3 } 1 1 }  }
	{ y_v int 32 regular {array 32 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "y_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_v_address0 sc_out sc_lv 5 signal 0 } 
	{ r_v_ce0 sc_out sc_logic 1 signal 0 } 
	{ r_v_we0 sc_out sc_logic 1 signal 0 } 
	{ r_v_d0 sc_out sc_lv 32 signal 0 } 
	{ r_v_q0 sc_in sc_lv 32 signal 0 } 
	{ y_v_address0 sc_out sc_lv 5 signal 1 } 
	{ y_v_ce0 sc_out sc_logic 1 signal 1 } 
	{ y_v_q0 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "r_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_v", "role": "address0" }} , 
 	{ "name": "r_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_v", "role": "ce0" }} , 
 	{ "name": "r_v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_v", "role": "we0" }} , 
 	{ "name": "r_v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_v", "role": "d0" }} , 
 	{ "name": "r_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_v", "role": "q0" }} , 
 	{ "name": "y_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y_v", "role": "address0" }} , 
 	{ "name": "y_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_v", "role": "ce0" }} , 
 	{ "name": "y_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_v", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "crypto_sign_ed25519_15",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_barrett_reduce_fu_153"}],
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_barrett_reduce_fu_153", "Port" : "r_v"}]},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mu", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_barrett_reduce_fu_153", "Port" : "mu"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_barrett_reduce_fu_153", "Port" : "m"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_153", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8"],
		"CDFG" : "barrett_reduce",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_reduce_add_sub_fu_355"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_reduce_add_sub_fu_355"}],
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_reduce_add_sub_fu_355", "Port" : "r_v"}]},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mu", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_reduce_add_sub_fu_355", "Port" : "m"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_153.mu_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_153.m_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_153.q2_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_153.r1_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_153.r2_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_153.grp_reduce_add_sub_fu_355", "Parent" : "2", "Child" : ["9", "10"],
		"CDFG" : "reduce_add_sub",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_153.grp_reduce_add_sub_fu_355.m_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_barrett_reduce_fu_153.grp_reduce_add_sub_fu_355.t_U", "Parent" : "8"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign_ed25519_15 {
		r_v {Type IO LastRead 2 FirstWrite 3}
		y_v {Type I LastRead 4 FirstWrite -1}
		mu {Type I LastRead -1 FirstWrite -1}
		m {Type I LastRead -1 FirstWrite -1}}
	barrett_reduce {
		r_v {Type IO LastRead 2 FirstWrite 3}
		x {Type I LastRead 6 FirstWrite -1}
		mu {Type I LastRead -1 FirstWrite -1}
		m {Type I LastRead -1 FirstWrite -1}}
	reduce_add_sub {
		r_v {Type IO LastRead 2 FirstWrite 3}
		m {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8412", "Max" : "10557"}
	, {"Name" : "Interval", "Min" : "8412", "Max" : "10557"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_v { ap_memory {  { r_v_address0 mem_address 1 5 }  { r_v_ce0 mem_ce 1 1 }  { r_v_we0 mem_we 1 1 }  { r_v_d0 mem_din 1 32 }  { r_v_q0 mem_dout 0 32 } } }
	y_v { ap_memory {  { y_v_address0 mem_address 1 5 }  { y_v_ce0 mem_ce 1 1 }  { y_v_q0 mem_dout 0 32 } } }
}

set moduleName crypto_sign_ed25519_19
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {crypto_sign_ed25519_.19}
set C_modelType { void 0 }
set C_modelArgList {
	{ r_v int 32 regular {array 32 { 2 2 } 1 1 }  }
	{ x_v int 32 regular {array 32 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "x_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
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
	{ r_v_address1 sc_out sc_lv 5 signal 0 } 
	{ r_v_ce1 sc_out sc_logic 1 signal 0 } 
	{ r_v_we1 sc_out sc_logic 1 signal 0 } 
	{ r_v_d1 sc_out sc_lv 32 signal 0 } 
	{ r_v_q1 sc_in sc_lv 32 signal 0 } 
	{ x_v_address0 sc_out sc_lv 5 signal 1 } 
	{ x_v_ce0 sc_out sc_logic 1 signal 1 } 
	{ x_v_q0 sc_in sc_lv 32 signal 1 } 
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
 	{ "name": "r_v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_v", "role": "address1" }} , 
 	{ "name": "r_v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_v", "role": "ce1" }} , 
 	{ "name": "r_v_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_v", "role": "we1" }} , 
 	{ "name": "r_v_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_v", "role": "d1" }} , 
 	{ "name": "r_v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_v", "role": "q1" }} , 
 	{ "name": "x_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_v", "role": "address0" }} , 
 	{ "name": "x_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_v", "role": "ce0" }} , 
 	{ "name": "x_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_v", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "14"],
		"CDFG" : "crypto_sign_ed25519_19",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state80", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150"}],
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150", "Port" : "r_v"}]},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_150", "Port" : "y_v"},
					{"ID" : "11", "SubInstance" : "grp_crypto_sign_ed25519_10_fu_142", "Port" : "x_v"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_v_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z9_v_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z11_v_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_5_0_v_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_10_0_v_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_20_0_v_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_50_0_v_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z2_100_0_v_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t0_v_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_v_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_10_fu_142", "Parent" : "0", "Child" : ["12", "13"],
		"CDFG" : "crypto_sign_ed25519_10",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_10_fu_142.t_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_10_fu_142.crypto_sign_mac_mpcA_x_U89", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_150", "Parent" : "0", "Child" : ["15", "16"],
		"CDFG" : "crypto_sign_ed25519_18",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_150.t_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_150.crypto_sign_mac_mpcA_x_U63", "Parent" : "14"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign_ed25519_19 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		x_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_10 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		x_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_18 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		x_v {Type I LastRead 2 FirstWrite -1}
		y_v {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "917164", "Max" : "917164"}
	, {"Name" : "Interval", "Min" : "917164", "Max" : "917164"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_v { ap_memory {  { r_v_address0 mem_address 1 5 }  { r_v_ce0 mem_ce 1 1 }  { r_v_we0 mem_we 1 1 }  { r_v_d0 mem_din 1 32 }  { r_v_q0 mem_dout 0 32 }  { r_v_address1 mem_address 1 5 }  { r_v_ce1 mem_ce 1 1 }  { r_v_we1 mem_we 1 1 }  { r_v_d1 mem_din 1 32 }  { r_v_q1 mem_dout 0 32 } } }
	x_v { ap_memory {  { x_v_address0 mem_address 1 5 }  { x_v_ce0 mem_ce 1 1 }  { x_v_q0 mem_dout 0 32 } } }
}

set moduleName choose_t
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {choose_t}
set C_modelType { void 0 }
set C_modelArgList {
	{ t_x_v int 32 regular {array 32 { 2 2 } 1 1 }  }
	{ t_y_v int 32 regular {array 32 { 2 0 } 1 1 }  }
	{ pos_r int 7 regular  }
	{ b int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t_x_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "t_y_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pos_r", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t_x_v_address0 sc_out sc_lv 5 signal 0 } 
	{ t_x_v_ce0 sc_out sc_logic 1 signal 0 } 
	{ t_x_v_we0 sc_out sc_logic 1 signal 0 } 
	{ t_x_v_d0 sc_out sc_lv 32 signal 0 } 
	{ t_x_v_q0 sc_in sc_lv 32 signal 0 } 
	{ t_x_v_address1 sc_out sc_lv 5 signal 0 } 
	{ t_x_v_ce1 sc_out sc_logic 1 signal 0 } 
	{ t_x_v_we1 sc_out sc_logic 1 signal 0 } 
	{ t_x_v_d1 sc_out sc_lv 32 signal 0 } 
	{ t_x_v_q1 sc_in sc_lv 32 signal 0 } 
	{ t_y_v_address0 sc_out sc_lv 5 signal 1 } 
	{ t_y_v_ce0 sc_out sc_logic 1 signal 1 } 
	{ t_y_v_we0 sc_out sc_logic 1 signal 1 } 
	{ t_y_v_d0 sc_out sc_lv 32 signal 1 } 
	{ t_y_v_q0 sc_in sc_lv 32 signal 1 } 
	{ t_y_v_address1 sc_out sc_lv 5 signal 1 } 
	{ t_y_v_ce1 sc_out sc_logic 1 signal 1 } 
	{ t_y_v_we1 sc_out sc_logic 1 signal 1 } 
	{ t_y_v_d1 sc_out sc_lv 32 signal 1 } 
	{ pos_r sc_in sc_lv 7 signal 2 } 
	{ b sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t_x_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "t_x_v", "role": "address0" }} , 
 	{ "name": "t_x_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_x_v", "role": "ce0" }} , 
 	{ "name": "t_x_v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_x_v", "role": "we0" }} , 
 	{ "name": "t_x_v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_x_v", "role": "d0" }} , 
 	{ "name": "t_x_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_x_v", "role": "q0" }} , 
 	{ "name": "t_x_v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "t_x_v", "role": "address1" }} , 
 	{ "name": "t_x_v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_x_v", "role": "ce1" }} , 
 	{ "name": "t_x_v_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_x_v", "role": "we1" }} , 
 	{ "name": "t_x_v_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_x_v", "role": "d1" }} , 
 	{ "name": "t_x_v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_x_v", "role": "q1" }} , 
 	{ "name": "t_y_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "t_y_v", "role": "address0" }} , 
 	{ "name": "t_y_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_y_v", "role": "ce0" }} , 
 	{ "name": "t_y_v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_y_v", "role": "we0" }} , 
 	{ "name": "t_y_v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_y_v", "role": "d0" }} , 
 	{ "name": "t_y_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_y_v", "role": "q0" }} , 
 	{ "name": "t_y_v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "t_y_v", "role": "address1" }} , 
 	{ "name": "t_y_v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_y_v", "role": "ce1" }} , 
 	{ "name": "t_y_v_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_y_v", "role": "we1" }} , 
 	{ "name": "t_y_v_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t_y_v", "role": "d1" }} , 
 	{ "name": "pos_r", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pos_r", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "8"],
		"CDFG" : "choose_t",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_7_fu_1424"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"}],
		"Port" : [
			{"Name" : "t_x_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "r_x_v"}]},
			{"Name" : "t_y_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "r_y_v"}]},
			{"Name" : "pos_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "ge25519_base_multipl_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "p_x_v"}]},
			{"Name" : "ge25519_base_multipl", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "p_y_v"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ge25519_base_multipl_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ge25519_base_multipl_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_v_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.v_v_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_7_fu_1424", "Parent" : "0", "Child" : ["6", "7"],
		"CDFG" : "crypto_sign_ed25519_7",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_7_fu_1424.t_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_7_fu_1424.crypto_sign_mac_mpcA_U51", "Parent" : "5"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cmov_aff_fu_1430", "Parent" : "0",
		"CDFG" : "cmov_aff",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_x_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "r_y_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_919", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_9191", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	choose_t {
		t_x_v {Type IO LastRead 28 FirstWrite 1}
		t_y_v {Type IO LastRead 2 FirstWrite 1}
		pos_r {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 17 FirstWrite -1}
		ge25519_base_multipl_1 {Type I LastRead -1 FirstWrite -1}
		ge25519_base_multipl {Type I LastRead -1 FirstWrite -1}}
	crypto_sign_ed25519_7 {
		r_v {Type IO LastRead 7 FirstWrite 4}
		y_v {Type I LastRead 3 FirstWrite -1}}
	cmov_aff {
		r_x_v {Type IO LastRead 1 FirstWrite 2}
		r_y_v {Type IO LastRead 2 FirstWrite 3}
		p_x_v {Type I LastRead 1 FirstWrite -1}
		tmp_919 {Type I LastRead 0 FirstWrite -1}
		p_y_v {Type I LastRead 2 FirstWrite -1}
		tmp_9191 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1096", "Max" : "1096"}
	, {"Name" : "Interval", "Min" : "1096", "Max" : "1096"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t_x_v { ap_memory {  { t_x_v_address0 mem_address 1 5 }  { t_x_v_ce0 mem_ce 1 1 }  { t_x_v_we0 mem_we 1 1 }  { t_x_v_d0 mem_din 1 32 }  { t_x_v_q0 mem_dout 0 32 }  { t_x_v_address1 mem_address 1 5 }  { t_x_v_ce1 mem_ce 1 1 }  { t_x_v_we1 mem_we 1 1 }  { t_x_v_d1 mem_din 1 32 }  { t_x_v_q1 mem_dout 0 32 } } }
	t_y_v { ap_memory {  { t_y_v_address0 mem_address 1 5 }  { t_y_v_ce0 mem_ce 1 1 }  { t_y_v_we0 mem_we 1 1 }  { t_y_v_d0 mem_din 1 32 }  { t_y_v_q0 mem_dout 0 32 }  { t_y_v_address1 mem_address 1 5 }  { t_y_v_ce1 mem_ce 1 1 }  { t_y_v_we1 mem_we 1 1 }  { t_y_v_d1 mem_din 1 32 } } }
	pos_r { ap_none {  { pos_r in_data 0 7 } } }
	b { ap_none {  { b in_data 0 8 } } }
}

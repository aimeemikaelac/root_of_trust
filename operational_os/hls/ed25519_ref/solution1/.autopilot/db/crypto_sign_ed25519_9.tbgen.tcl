set moduleName crypto_sign_ed25519_9
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {crypto_sign_ed25519_.9}
set C_modelType { void 0 }
set C_modelArgList {
	{ r int 8 regular {array 64 { 0 } 0 1 }  }
	{ x_v int 32 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_address0 sc_out sc_lv 6 signal 0 } 
	{ r_ce0 sc_out sc_logic 1 signal 0 } 
	{ r_we0 sc_out sc_logic 1 signal 0 } 
	{ r_d0 sc_out sc_lv 8 signal 0 } 
	{ x_v_address0 sc_out sc_lv 5 signal 1 } 
	{ x_v_ce0 sc_out sc_logic 1 signal 1 } 
	{ x_v_q0 sc_in sc_lv 32 signal 1 } 
	{ x_v_address1 sc_out sc_lv 5 signal 1 } 
	{ x_v_ce1 sc_out sc_logic 1 signal 1 } 
	{ x_v_q1 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "r", "role": "address0" }} , 
 	{ "name": "r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "ce0" }} , 
 	{ "name": "r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "we0" }} , 
 	{ "name": "r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "r", "role": "d0" }} , 
 	{ "name": "x_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_v", "role": "address0" }} , 
 	{ "name": "x_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_v", "role": "ce0" }} , 
 	{ "name": "x_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_v", "role": "q0" }} , 
 	{ "name": "x_v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x_v", "role": "address1" }} , 
 	{ "name": "x_v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_v", "role": "ce1" }} , 
 	{ "name": "x_v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_v", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "crypto_sign_ed25519_9",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_21_fu_682"}],
		"Port" : [
			{"Name" : "r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_v_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_21_fu_682", "Parent" : "0",
		"CDFG" : "crypto_sign_ed25519_21",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign_ed25519_9 {
		r {Type O LastRead -1 FirstWrite 20}
		x_v {Type I LastRead 16 FirstWrite -1}}
	crypto_sign_ed25519_21 {
		r_v {Type IO LastRead 5 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "208", "Max" : "208"}
	, {"Name" : "Interval", "Min" : "208", "Max" : "208"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r { ap_memory {  { r_address0 mem_address 1 6 }  { r_ce0 mem_ce 1 1 }  { r_we0 mem_we 1 1 }  { r_d0 mem_din 1 8 } } }
	x_v { ap_memory {  { x_v_address0 mem_address 1 5 }  { x_v_ce0 mem_ce 1 1 }  { x_v_q0 mem_dout 0 32 }  { x_v_address1 mem_address 1 5 }  { x_v_ce1 mem_ce 1 1 }  { x_v_q1 mem_dout 0 32 } } }
}

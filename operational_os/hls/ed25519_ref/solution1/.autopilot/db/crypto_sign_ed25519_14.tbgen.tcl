set moduleName crypto_sign_ed25519_14
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {crypto_sign_ed25519_.14}
set C_modelType { void 0 }
set C_modelArgList {
	{ r int 8 regular {array 85 { 2 2 } 1 1 }  }
	{ s_v int 32 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "s_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_address0 sc_out sc_lv 7 signal 0 } 
	{ r_ce0 sc_out sc_logic 1 signal 0 } 
	{ r_we0 sc_out sc_logic 1 signal 0 } 
	{ r_d0 sc_out sc_lv 8 signal 0 } 
	{ r_q0 sc_in sc_lv 8 signal 0 } 
	{ r_address1 sc_out sc_lv 7 signal 0 } 
	{ r_ce1 sc_out sc_logic 1 signal 0 } 
	{ r_we1 sc_out sc_logic 1 signal 0 } 
	{ r_d1 sc_out sc_lv 8 signal 0 } 
	{ r_q1 sc_in sc_lv 8 signal 0 } 
	{ s_v_address0 sc_out sc_lv 5 signal 1 } 
	{ s_v_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_v_q0 sc_in sc_lv 32 signal 1 } 
	{ s_v_address1 sc_out sc_lv 5 signal 1 } 
	{ s_v_ce1 sc_out sc_logic 1 signal 1 } 
	{ s_v_q1 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "r", "role": "address0" }} , 
 	{ "name": "r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "ce0" }} , 
 	{ "name": "r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "we0" }} , 
 	{ "name": "r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "r", "role": "d0" }} , 
 	{ "name": "r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "r", "role": "q0" }} , 
 	{ "name": "r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "r", "role": "address1" }} , 
 	{ "name": "r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "ce1" }} , 
 	{ "name": "r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "we1" }} , 
 	{ "name": "r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "r", "role": "d1" }} , 
 	{ "name": "r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "r", "role": "q1" }} , 
 	{ "name": "s_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s_v", "role": "address0" }} , 
 	{ "name": "s_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_v", "role": "ce0" }} , 
 	{ "name": "s_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_v", "role": "q0" }} , 
 	{ "name": "s_v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s_v", "role": "address1" }} , 
 	{ "name": "s_v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_v", "role": "ce1" }} , 
 	{ "name": "s_v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_v", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "crypto_sign_ed25519_14",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_v", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign_ed25519_14 {
		r {Type IO LastRead 6 FirstWrite 2}
		s_v {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "224", "Max" : "224"}
	, {"Name" : "Interval", "Min" : "224", "Max" : "224"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r { ap_memory {  { r_address0 mem_address 1 7 }  { r_ce0 mem_ce 1 1 }  { r_we0 mem_we 1 1 }  { r_d0 mem_din 1 8 }  { r_q0 mem_dout 0 8 }  { r_address1 mem_address 1 7 }  { r_ce1 mem_ce 1 1 }  { r_we1 mem_we 1 1 }  { r_d1 mem_din 1 8 }  { r_q1 mem_dout 0 8 } } }
	s_v { ap_memory {  { s_v_address0 mem_address 1 5 }  { s_v_ce0 mem_ce 1 1 }  { s_v_q0 mem_dout 0 32 }  { s_v_address1 mem_address 1 5 }  { s_v_ce1 mem_ce 1 1 }  { s_v_q1 mem_dout 0 32 } } }
}

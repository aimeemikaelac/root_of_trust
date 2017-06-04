set moduleName cmov_aff
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {cmov_aff}
set C_modelType { void 0 }
set C_modelArgList {
	{ r_x_v int 32 regular {array 32 { 2 3 } 1 1 }  }
	{ r_y_v int 32 regular {array 32 { 2 3 } 1 1 }  }
	{ p_x_v int 32 regular {array 13600 { 1 3 } 1 1 }  }
	{ tmp_919 int 9 regular  }
	{ p_y_v int 32 regular {array 13600 { 1 3 } 1 1 }  }
	{ tmp_9191 int 9 regular  }
	{ b int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r_x_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "r_y_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "p_x_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_919", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_y_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_9191", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ r_x_v_address0 sc_out sc_lv 5 signal 0 } 
	{ r_x_v_ce0 sc_out sc_logic 1 signal 0 } 
	{ r_x_v_we0 sc_out sc_logic 1 signal 0 } 
	{ r_x_v_d0 sc_out sc_lv 32 signal 0 } 
	{ r_x_v_q0 sc_in sc_lv 32 signal 0 } 
	{ r_y_v_address0 sc_out sc_lv 5 signal 1 } 
	{ r_y_v_ce0 sc_out sc_logic 1 signal 1 } 
	{ r_y_v_we0 sc_out sc_logic 1 signal 1 } 
	{ r_y_v_d0 sc_out sc_lv 32 signal 1 } 
	{ r_y_v_q0 sc_in sc_lv 32 signal 1 } 
	{ p_x_v_address0 sc_out sc_lv 14 signal 2 } 
	{ p_x_v_ce0 sc_out sc_logic 1 signal 2 } 
	{ p_x_v_q0 sc_in sc_lv 32 signal 2 } 
	{ tmp_919 sc_in sc_lv 9 signal 3 } 
	{ p_y_v_address0 sc_out sc_lv 14 signal 4 } 
	{ p_y_v_ce0 sc_out sc_logic 1 signal 4 } 
	{ p_y_v_q0 sc_in sc_lv 32 signal 4 } 
	{ tmp_9191 sc_in sc_lv 9 signal 5 } 
	{ b sc_in sc_lv 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "r_x_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_x_v", "role": "address0" }} , 
 	{ "name": "r_x_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_x_v", "role": "ce0" }} , 
 	{ "name": "r_x_v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_x_v", "role": "we0" }} , 
 	{ "name": "r_x_v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_x_v", "role": "d0" }} , 
 	{ "name": "r_x_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_x_v", "role": "q0" }} , 
 	{ "name": "r_y_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_y_v", "role": "address0" }} , 
 	{ "name": "r_y_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_y_v", "role": "ce0" }} , 
 	{ "name": "r_y_v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_y_v", "role": "we0" }} , 
 	{ "name": "r_y_v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_y_v", "role": "d0" }} , 
 	{ "name": "r_y_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_y_v", "role": "q0" }} , 
 	{ "name": "p_x_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "p_x_v", "role": "address0" }} , 
 	{ "name": "p_x_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_x_v", "role": "ce0" }} , 
 	{ "name": "p_x_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_x_v", "role": "q0" }} , 
 	{ "name": "tmp_919", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tmp_919", "role": "default" }} , 
 	{ "name": "p_y_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "p_y_v", "role": "address0" }} , 
 	{ "name": "p_y_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_y_v", "role": "ce0" }} , 
 	{ "name": "p_y_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_y_v", "role": "q0" }} , 
 	{ "name": "tmp_9191", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "tmp_9191", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	{"Name" : "Latency", "Min" : "130", "Max" : "130"}
	, {"Name" : "Interval", "Min" : "130", "Max" : "130"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_x_v { ap_memory {  { r_x_v_address0 mem_address 1 5 }  { r_x_v_ce0 mem_ce 1 1 }  { r_x_v_we0 mem_we 1 1 }  { r_x_v_d0 mem_din 1 32 }  { r_x_v_q0 mem_dout 0 32 } } }
	r_y_v { ap_memory {  { r_y_v_address0 mem_address 1 5 }  { r_y_v_ce0 mem_ce 1 1 }  { r_y_v_we0 mem_we 1 1 }  { r_y_v_d0 mem_din 1 32 }  { r_y_v_q0 mem_dout 0 32 } } }
	p_x_v { ap_memory {  { p_x_v_address0 mem_address 1 14 }  { p_x_v_ce0 mem_ce 1 1 }  { p_x_v_q0 mem_dout 0 32 } } }
	tmp_919 { ap_none {  { tmp_919 in_data 0 9 } } }
	p_y_v { ap_memory {  { p_y_v_address0 mem_address 1 14 }  { p_y_v_ce0 mem_ce 1 1 }  { p_y_v_q0 mem_dout 0 32 } } }
	tmp_9191 { ap_none {  { tmp_9191 in_data 0 9 } } }
	b { ap_none {  { b in_data 0 1 } } }
}

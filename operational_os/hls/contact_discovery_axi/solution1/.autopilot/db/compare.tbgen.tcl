set moduleName compare
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {compare}
set C_modelType { int 1 }
set C_modelArgList {
	{ db_index int 31 regular  }
	{ contacts_index int 8 regular  }
	{ contacts int 8 regular {array 8192 { 1 1 } 1 1 } {global 0}  }
	{ database int 8 regular {array 19200 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "db_index", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "contacts_index", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "contacts", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "database", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ db_index sc_in sc_lv 31 signal 0 } 
	{ contacts_index sc_in sc_lv 8 signal 1 } 
	{ contacts_address0 sc_out sc_lv 13 signal 2 } 
	{ contacts_ce0 sc_out sc_logic 1 signal 2 } 
	{ contacts_q0 sc_in sc_lv 8 signal 2 } 
	{ contacts_address1 sc_out sc_lv 13 signal 2 } 
	{ contacts_ce1 sc_out sc_logic 1 signal 2 } 
	{ contacts_q1 sc_in sc_lv 8 signal 2 } 
	{ database_address0 sc_out sc_lv 15 signal 3 } 
	{ database_ce0 sc_out sc_logic 1 signal 3 } 
	{ database_q0 sc_in sc_lv 8 signal 3 } 
	{ database_address1 sc_out sc_lv 15 signal 3 } 
	{ database_ce1 sc_out sc_logic 1 signal 3 } 
	{ database_q1 sc_in sc_lv 8 signal 3 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "db_index", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "db_index", "role": "default" }} , 
 	{ "name": "contacts_index", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "contacts_index", "role": "default" }} , 
 	{ "name": "contacts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "contacts", "role": "address0" }} , 
 	{ "name": "contacts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "contacts", "role": "ce0" }} , 
 	{ "name": "contacts_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "contacts", "role": "q0" }} , 
 	{ "name": "contacts_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "contacts", "role": "address1" }} , 
 	{ "name": "contacts_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "contacts", "role": "ce1" }} , 
 	{ "name": "contacts_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "contacts", "role": "q1" }} , 
 	{ "name": "database_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "database", "role": "address0" }} , 
 	{ "name": "database_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "database", "role": "ce0" }} , 
 	{ "name": "database_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "database", "role": "q0" }} , 
 	{ "name": "database_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "database", "role": "address1" }} , 
 	{ "name": "database_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "database", "role": "ce1" }} , 
 	{ "name": "database_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "database", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "compare",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "db_index", "Type" : "None", "Direction" : "I"},
			{"Name" : "contacts_index", "Type" : "None", "Direction" : "I"},
			{"Name" : "contacts", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "database", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	compare {
		db_index {Type I LastRead 0 FirstWrite -1}
		contacts_index {Type I LastRead 0 FirstWrite -1}
		contacts {Type I LastRead 32 FirstWrite -1}
		database {Type I LastRead 32 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32", "Max" : "32"}
	, {"Name" : "Interval", "Min" : "32", "Max" : "32"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	db_index { ap_none {  { db_index in_data 0 31 } } }
	contacts_index { ap_none {  { contacts_index in_data 0 8 } } }
	contacts { ap_memory {  { contacts_address0 mem_address 1 13 }  { contacts_ce0 mem_ce 1 1 }  { contacts_q0 mem_dout 0 8 }  { contacts_address1 mem_address 1 13 }  { contacts_ce1 mem_ce 1 1 }  { contacts_q1 mem_dout 0 8 } } }
	database { ap_memory {  { database_address0 mem_address 1 15 }  { database_ce0 mem_ce 1 1 }  { database_q0 mem_dout 0 8 }  { database_address1 mem_address 1 15 }  { database_ce1 mem_ce 1 1 }  { database_q1 mem_dout 0 8 } } }
}

set moduleName match_db_contact
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {match_db_contact}
set C_modelType { int 1 }
set C_modelArgList {
	{ db_stream_V int 8 regular {fifo 0 volatile } {global 0}  }
	{ contacts int 8 regular {array 8192 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "db_stream_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "contacts", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ db_stream_V_dout sc_in sc_lv 8 signal 0 } 
	{ db_stream_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ db_stream_V_read sc_out sc_logic 1 signal 0 } 
	{ contacts_address0 sc_out sc_lv 13 signal 1 } 
	{ contacts_ce0 sc_out sc_logic 1 signal 1 } 
	{ contacts_q0 sc_in sc_lv 8 signal 1 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "db_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "db_stream_V", "role": "dout" }} , 
 	{ "name": "db_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_stream_V", "role": "empty_n" }} , 
 	{ "name": "db_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "db_stream_V", "role": "read" }} , 
 	{ "name": "contacts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "contacts", "role": "address0" }} , 
 	{ "name": "contacts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "contacts", "role": "ce0" }} , 
 	{ "name": "contacts_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "contacts", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "match_db_contact",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "db_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "db_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contacts", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.results_local_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_results_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.db_item_temp_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.contact_V_fifo_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.db_item_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	match_db_contact {
		db_stream_V {Type I LastRead 1 FirstWrite -1}
		contacts {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "41795", "Max" : "41795"}
	, {"Name" : "Interval", "Min" : "41795", "Max" : "41795"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	db_stream_V { ap_fifo {  { db_stream_V_dout fifo_data 0 8 }  { db_stream_V_empty_n fifo_status 0 1 }  { db_stream_V_read fifo_update 1 1 } } }
	contacts { ap_memory {  { contacts_address0 mem_address 1 13 }  { contacts_ce0 mem_ce 1 1 }  { contacts_q0 mem_dout 0 8 } } }
}

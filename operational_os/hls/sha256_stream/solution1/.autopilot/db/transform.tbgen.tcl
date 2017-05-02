set moduleName transform
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {transform}
set C_modelType { void 0 }
set C_modelArgList {
	{ SHA256_m_h int 32 regular {array 8 { 2 3 } 1 1 }  }
	{ message int 8 regular {array 128 { 1 1 } 1 1 }  }
	{ block_nb int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "SHA256_m_h", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "block_nb", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SHA256_m_h_address0 sc_out sc_lv 3 signal 0 } 
	{ SHA256_m_h_ce0 sc_out sc_logic 1 signal 0 } 
	{ SHA256_m_h_we0 sc_out sc_logic 1 signal 0 } 
	{ SHA256_m_h_d0 sc_out sc_lv 32 signal 0 } 
	{ SHA256_m_h_q0 sc_in sc_lv 32 signal 0 } 
	{ message_address0 sc_out sc_lv 7 signal 1 } 
	{ message_ce0 sc_out sc_logic 1 signal 1 } 
	{ message_q0 sc_in sc_lv 8 signal 1 } 
	{ message_address1 sc_out sc_lv 7 signal 1 } 
	{ message_ce1 sc_out sc_logic 1 signal 1 } 
	{ message_q1 sc_in sc_lv 8 signal 1 } 
	{ block_nb sc_in sc_lv 2 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SHA256_m_h_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "SHA256_m_h", "role": "address0" }} , 
 	{ "name": "SHA256_m_h_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SHA256_m_h", "role": "ce0" }} , 
 	{ "name": "SHA256_m_h_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SHA256_m_h", "role": "we0" }} , 
 	{ "name": "SHA256_m_h_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SHA256_m_h", "role": "d0" }} , 
 	{ "name": "SHA256_m_h_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SHA256_m_h", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "message_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "message", "role": "address1" }} , 
 	{ "name": "message_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce1" }} , 
 	{ "name": "message_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q1" }} , 
 	{ "name": "block_nb", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "block_nb", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "transform",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "SHA256_m_h", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "block_nb", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SHA256_sha256_k_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wv_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	transform {
		SHA256_m_h {Type IO LastRead 6 FirstWrite 7}
		message {Type I LastRead 4 FirstWrite -1}
		block_nb {Type I LastRead 0 FirstWrite -1}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "743", "Max" : "1485"}
	, {"Name" : "Interval", "Min" : "743", "Max" : "1485"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	SHA256_m_h { ap_memory {  { SHA256_m_h_address0 mem_address 1 3 }  { SHA256_m_h_ce0 mem_ce 1 1 }  { SHA256_m_h_we0 mem_we 1 1 }  { SHA256_m_h_d0 mem_din 1 32 }  { SHA256_m_h_q0 mem_dout 0 32 } } }
	message { ap_memory {  { message_address0 mem_address 1 7 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 }  { message_address1 mem_address 1 7 }  { message_ce1 mem_ce 1 1 }  { message_q1 mem_dout 0 8 } } }
	block_nb { ap_none {  { block_nb in_data 0 2 } } }
}

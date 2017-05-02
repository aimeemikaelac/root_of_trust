set moduleName update
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {update}
set C_modelType { int 64 }
set C_modelArgList {
	{ SHA256_m_tot_len_read int 32 regular  }
	{ SHA256_m_len_read int 32 regular  }
	{ SHA256_m_block int 8 regular {array 128 { 2 1 } 1 1 }  }
	{ SHA256_m_h int 32 regular {array 8 { 2 3 } 1 1 }  }
	{ message int 8 regular {array 64 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "SHA256_m_tot_len_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SHA256_m_len_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SHA256_m_block", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "SHA256_m_h", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SHA256_m_tot_len_read sc_in sc_lv 32 signal 0 } 
	{ SHA256_m_len_read sc_in sc_lv 32 signal 1 } 
	{ SHA256_m_block_address0 sc_out sc_lv 7 signal 2 } 
	{ SHA256_m_block_ce0 sc_out sc_logic 1 signal 2 } 
	{ SHA256_m_block_we0 sc_out sc_logic 1 signal 2 } 
	{ SHA256_m_block_d0 sc_out sc_lv 8 signal 2 } 
	{ SHA256_m_block_q0 sc_in sc_lv 8 signal 2 } 
	{ SHA256_m_block_address1 sc_out sc_lv 7 signal 2 } 
	{ SHA256_m_block_ce1 sc_out sc_logic 1 signal 2 } 
	{ SHA256_m_block_q1 sc_in sc_lv 8 signal 2 } 
	{ SHA256_m_h_address0 sc_out sc_lv 3 signal 3 } 
	{ SHA256_m_h_ce0 sc_out sc_logic 1 signal 3 } 
	{ SHA256_m_h_we0 sc_out sc_logic 1 signal 3 } 
	{ SHA256_m_h_d0 sc_out sc_lv 32 signal 3 } 
	{ SHA256_m_h_q0 sc_in sc_lv 32 signal 3 } 
	{ message_address0 sc_out sc_lv 6 signal 4 } 
	{ message_ce0 sc_out sc_logic 1 signal 4 } 
	{ message_q0 sc_in sc_lv 8 signal 4 } 
	{ message_address1 sc_out sc_lv 6 signal 4 } 
	{ message_ce1 sc_out sc_logic 1 signal 4 } 
	{ message_q1 sc_in sc_lv 8 signal 4 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SHA256_m_tot_len_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SHA256_m_tot_len_read", "role": "default" }} , 
 	{ "name": "SHA256_m_len_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SHA256_m_len_read", "role": "default" }} , 
 	{ "name": "SHA256_m_block_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "SHA256_m_block", "role": "address0" }} , 
 	{ "name": "SHA256_m_block_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SHA256_m_block", "role": "ce0" }} , 
 	{ "name": "SHA256_m_block_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SHA256_m_block", "role": "we0" }} , 
 	{ "name": "SHA256_m_block_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SHA256_m_block", "role": "d0" }} , 
 	{ "name": "SHA256_m_block_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SHA256_m_block", "role": "q0" }} , 
 	{ "name": "SHA256_m_block_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "SHA256_m_block", "role": "address1" }} , 
 	{ "name": "SHA256_m_block_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SHA256_m_block", "role": "ce1" }} , 
 	{ "name": "SHA256_m_block_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "SHA256_m_block", "role": "q1" }} , 
 	{ "name": "SHA256_m_h_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "SHA256_m_h", "role": "address0" }} , 
 	{ "name": "SHA256_m_h_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SHA256_m_h", "role": "ce0" }} , 
 	{ "name": "SHA256_m_h_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SHA256_m_h", "role": "we0" }} , 
 	{ "name": "SHA256_m_h_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SHA256_m_h", "role": "d0" }} , 
 	{ "name": "SHA256_m_h_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SHA256_m_h", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "message_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "message", "role": "address1" }} , 
 	{ "name": "message_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce1" }} , 
 	{ "name": "message_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5"],
		"CDFG" : "update",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_transform_1_fu_152"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_transform_fu_164"}],
		"Port" : [
			{"Name" : "SHA256_m_tot_len_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_m_len_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_m_block", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_transform_fu_164", "Port" : "message"}]},
			{"Name" : "SHA256_m_h", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_transform_1_fu_152", "Port" : "SHA256_m_h"},
					{"ID" : "5", "SubInstance" : "grp_transform_fu_164", "Port" : "SHA256_m_h"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_transform_1_fu_152", "Port" : "message"}]},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_transform_1_fu_152", "Port" : "SHA256_sha256_k"},
					{"ID" : "5", "SubInstance" : "grp_transform_fu_164", "Port" : "SHA256_sha256_k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_transform_1_fu_152", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "transform_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "SHA256_m_h", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_nb", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_transform_1_fu_152.SHA256_sha256_k_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_transform_1_fu_152.w_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_transform_1_fu_152.wv_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_transform_fu_164", "Parent" : "0", "Child" : ["6", "7", "8"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_transform_fu_164.SHA256_sha256_k_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_transform_fu_164.w_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_transform_fu_164.wv_U", "Parent" : "5"}]}


set ArgLastReadFirstWriteLatency {
	update {
		SHA256_m_tot_len_read {Type I LastRead 0 FirstWrite -1}
		SHA256_m_len_read {Type I LastRead 0 FirstWrite -1}
		SHA256_m_block {Type IO LastRead 4 FirstWrite -1}
		SHA256_m_h {Type IO LastRead 6 FirstWrite 7}
		message {Type I LastRead 5 FirstWrite -1}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}
	transform_1 {
		SHA256_m_h {Type IO LastRead 6 FirstWrite 7}
		message {Type I LastRead 4 FirstWrite -1}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		block_nb {Type I LastRead 0 FirstWrite -1}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}
	transform {
		SHA256_m_h {Type IO LastRead 6 FirstWrite 7}
		message {Type I LastRead 4 FirstWrite -1}
		block_nb {Type I LastRead 0 FirstWrite -1}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2488"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2488"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	SHA256_m_tot_len_read { ap_none {  { SHA256_m_tot_len_read in_data 0 32 } } }
	SHA256_m_len_read { ap_none {  { SHA256_m_len_read in_data 0 32 } } }
	SHA256_m_block { ap_memory {  { SHA256_m_block_address0 mem_address 1 7 }  { SHA256_m_block_ce0 mem_ce 1 1 }  { SHA256_m_block_we0 mem_we 1 1 }  { SHA256_m_block_d0 mem_din 1 8 }  { SHA256_m_block_q0 mem_dout 0 8 }  { SHA256_m_block_address1 mem_address 1 7 }  { SHA256_m_block_ce1 mem_ce 1 1 }  { SHA256_m_block_q1 mem_dout 0 8 } } }
	SHA256_m_h { ap_memory {  { SHA256_m_h_address0 mem_address 1 3 }  { SHA256_m_h_ce0 mem_ce 1 1 }  { SHA256_m_h_we0 mem_we 1 1 }  { SHA256_m_h_d0 mem_din 1 32 }  { SHA256_m_h_q0 mem_dout 0 32 } } }
	message { ap_memory {  { message_address0 mem_address 1 6 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 }  { message_address1 mem_address 1 6 }  { message_ce1 mem_ce 1 1 }  { message_q1 mem_dout 0 8 } } }
}

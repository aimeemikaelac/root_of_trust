set moduleName sha512_update_32_1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sha512_update_32.1}
set C_modelType { int 128 }
set C_modelArgList {
	{ md_length_read int 64 regular  }
	{ md_state int 64 regular {array 8 { 2 3 } 1 1 }  }
	{ md_curlen_read int 64 regular  }
	{ md_buf int 8 regular {array 128 { 2 3 } 1 1 }  }
	{ in_r int 8 regular {array 64 { 1 } 1 1 }  }
	{ in_offset int 7 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "md_length_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "md_state", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "md_curlen_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "md_buf", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "in_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_offset", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ md_length_read sc_in sc_lv 64 signal 0 } 
	{ md_state_address0 sc_out sc_lv 3 signal 1 } 
	{ md_state_ce0 sc_out sc_logic 1 signal 1 } 
	{ md_state_we0 sc_out sc_logic 1 signal 1 } 
	{ md_state_d0 sc_out sc_lv 64 signal 1 } 
	{ md_state_q0 sc_in sc_lv 64 signal 1 } 
	{ md_curlen_read sc_in sc_lv 64 signal 2 } 
	{ md_buf_address0 sc_out sc_lv 7 signal 3 } 
	{ md_buf_ce0 sc_out sc_logic 1 signal 3 } 
	{ md_buf_we0 sc_out sc_logic 1 signal 3 } 
	{ md_buf_d0 sc_out sc_lv 8 signal 3 } 
	{ md_buf_q0 sc_in sc_lv 8 signal 3 } 
	{ in_r_address0 sc_out sc_lv 6 signal 4 } 
	{ in_r_ce0 sc_out sc_logic 1 signal 4 } 
	{ in_r_q0 sc_in sc_lv 8 signal 4 } 
	{ in_offset sc_in sc_lv 7 signal 5 } 
	{ ap_return_0 sc_out sc_lv 64 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "md_length_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "md_length_read", "role": "default" }} , 
 	{ "name": "md_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "md_state", "role": "address0" }} , 
 	{ "name": "md_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "md_state", "role": "ce0" }} , 
 	{ "name": "md_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "md_state", "role": "we0" }} , 
 	{ "name": "md_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "md_state", "role": "d0" }} , 
 	{ "name": "md_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "md_state", "role": "q0" }} , 
 	{ "name": "md_curlen_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "md_curlen_read", "role": "default" }} , 
 	{ "name": "md_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "md_buf", "role": "address0" }} , 
 	{ "name": "md_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "md_buf", "role": "ce0" }} , 
 	{ "name": "md_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "md_buf", "role": "we0" }} , 
 	{ "name": "md_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "md_buf", "role": "d0" }} , 
 	{ "name": "md_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "md_buf", "role": "q0" }} , 
 	{ "name": "in_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_r", "role": "address0" }} , 
 	{ "name": "in_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce0" }} , 
 	{ "name": "in_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "q0" }} , 
 	{ "name": "in_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_offset", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "6"],
		"CDFG" : "sha512_update_32_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_32_fu_351"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha512_compress_128_fu_363"}],
		"Port" : [
			{"Name" : "md_length_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sha512_compress_32_fu_351", "Port" : "md_state"},
					{"ID" : "6", "SubInstance" : "grp_sha512_compress_128_fu_363", "Port" : "md_state"}]},
			{"Name" : "md_curlen_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "md_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sha512_compress_32_fu_351", "Port" : "buf_r"}]},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sha512_compress_32_fu_351", "Port" : "K"},
					{"ID" : "6", "SubInstance" : "grp_sha512_compress_128_fu_363", "Port" : "K"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_compress_32_fu_351", "Parent" : "0", "Child" : ["3", "4", "5"],
		"CDFG" : "sha512_compress_32",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_compress_32_fu_351.K_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_compress_32_fu_351.S_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_compress_32_fu_351.W_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha512_compress_128_fu_363", "Parent" : "0", "Child" : ["7", "8", "9"],
		"CDFG" : "sha512_compress_128",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "md_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_compress_128_fu_363.K_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_compress_128_fu_363.S_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha512_compress_128_fu_363.W_U", "Parent" : "6"}]}


set ArgLastReadFirstWriteLatency {
	sha512_update_32_1 {
		md_length_read {Type I LastRead 0 FirstWrite -1}
		md_state {Type IO LastRead 5 FirstWrite 6}
		md_curlen_read {Type I LastRead 0 FirstWrite -1}
		md_buf {Type IO LastRead 8 FirstWrite 8}
		in_r {Type I LastRead 10 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_32 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 10 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
	sha512_compress_128 {
		md_state {Type IO LastRead 5 FirstWrite 6}
		buf_r {Type I LastRead 6 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4294967295", "Max" : "4294967295"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	md_length_read { ap_none {  { md_length_read in_data 0 64 } } }
	md_state { ap_memory {  { md_state_address0 mem_address 1 3 }  { md_state_ce0 mem_ce 1 1 }  { md_state_we0 mem_we 1 1 }  { md_state_d0 mem_din 1 64 }  { md_state_q0 mem_dout 0 64 } } }
	md_curlen_read { ap_none {  { md_curlen_read in_data 0 64 } } }
	md_buf { ap_memory {  { md_buf_address0 mem_address 1 7 }  { md_buf_ce0 mem_ce 1 1 }  { md_buf_we0 mem_we 1 1 }  { md_buf_d0 mem_din 1 8 }  { md_buf_q0 mem_dout 0 8 } } }
	in_r { ap_memory {  { in_r_address0 mem_address 1 6 }  { in_r_ce0 mem_ce 1 1 }  { in_r_q0 mem_dout 0 8 } } }
	in_offset { ap_none {  { in_offset in_data 0 7 } } }
}

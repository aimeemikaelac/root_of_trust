set C_TypeInfoList {{ 
"sha256" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"stream_in": [[],"0"] }, {"num_blocks": [[], {"scalar": "int"}] }, {"digest_out": [[], {"array": [ {"scalar": "unsigned char"}, [32]]}] }],[],""], 
"0": [ "mem_stream", {"typedef": [[[],"1"],""]}], 
"1": [ "stream<unsigned char>", {"hls_type": {"stream": [[[[], {"scalar": "unsigned char"}]],"2"]}}],
"2": ["hls", ""]
}}
set moduleName sha256
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sha256}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_in_V int 8 regular {axi_s 0 volatile  { stream_in_V Data } }  }
	{ num_blocks int 32 regular {axi_slave 0}  }
	{ digest_out int 8 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_in_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "stream_in.V","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "num_blocks", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "num_blocks","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "digest_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "digest_out","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"out":32}, "offset_end" : {"out":63}} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_in_V_TDATA sc_in sc_lv 8 signal 0 } 
	{ stream_in_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ stream_in_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"num_blocks","role":"data","value":"16"}, {"name":"num_blocks","role":"valid","value":"20","valid_bit":"0"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"digest_out","role":"data","value":"32"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_in_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_in_V", "role": "TDATA" }} , 
 	{ "name": "stream_in_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_V", "role": "TVALID" }} , 
 	{ "name": "stream_in_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "14"],
		"CDFG" : "sha256",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_update_fu_256"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_final_fu_269"}],
		"Port" : [
			{"Name" : "stream_in_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_blocks", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "num_blocks_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "digest_out", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_final_fu_269", "Port" : "digest"}]},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_update_fu_256", "Port" : "SHA256_sha256_k"},
					{"ID" : "14", "SubInstance" : "grp_final_fu_269", "Port" : "SHA256_sha256_k"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_buffer_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipher_m_block_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipher_m_h_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_256", "Parent" : "0", "Child" : ["6", "10"],
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
					{"ID" : "10", "SubInstance" : "grp_transform_fu_164", "Port" : "message"}]},
			{"Name" : "SHA256_m_h", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_transform_1_fu_152", "Port" : "SHA256_m_h"},
					{"ID" : "10", "SubInstance" : "grp_transform_fu_164", "Port" : "SHA256_m_h"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_transform_1_fu_152", "Port" : "message"}]},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_transform_1_fu_152", "Port" : "SHA256_sha256_k"},
					{"ID" : "10", "SubInstance" : "grp_transform_fu_164", "Port" : "SHA256_sha256_k"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_256.grp_transform_1_fu_152", "Parent" : "5", "Child" : ["7", "8", "9"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_256.grp_transform_1_fu_152.SHA256_sha256_k_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_256.grp_transform_1_fu_152.w_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_256.grp_transform_1_fu_152.wv_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_256.grp_transform_fu_164", "Parent" : "5", "Child" : ["11", "12", "13"],
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_256.grp_transform_fu_164.SHA256_sha256_k_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_256.grp_transform_fu_164.w_U", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_fu_256.grp_transform_fu_164.wv_U", "Parent" : "10"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_final_fu_269", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "final",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_transform_fu_252"}],
		"Port" : [
			{"Name" : "SHA256_m_tot_len_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_m_len_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "SHA256_m_block", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_transform_fu_252", "Port" : "message"}]},
			{"Name" : "SHA256_m_h", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_transform_fu_252", "Port" : "SHA256_m_h"}]},
			{"Name" : "digest", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "SHA256_sha256_k", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_transform_fu_252", "Port" : "SHA256_sha256_k"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_final_fu_269.grp_transform_fu_252", "Parent" : "14", "Child" : ["16", "17", "18"],
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
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_final_fu_269.grp_transform_fu_252.SHA256_sha256_k_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_final_fu_269.grp_transform_fu_252.w_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_final_fu_269.grp_transform_fu_252.wv_U", "Parent" : "15"}]}


set ArgLastReadFirstWriteLatency {
	sha256 {
		stream_in_V {Type I LastRead 5 FirstWrite -1}
		num_blocks {Type I LastRead 3 FirstWrite -1}
		digest_out {Type O LastRead -1 FirstWrite 9}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}
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
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}
	final {
		SHA256_m_tot_len_read {Type I LastRead 0 FirstWrite -1}
		SHA256_m_len_read {Type I LastRead 0 FirstWrite -1}
		SHA256_m_block {Type IO LastRead 4 FirstWrite -1}
		SHA256_m_h {Type IO LastRead 8 FirstWrite 7}
		digest {Type O LastRead -1 FirstWrite 9}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}
	transform {
		SHA256_m_h {Type IO LastRead 6 FirstWrite 7}
		message {Type I LastRead 4 FirstWrite -1}
		block_nb {Type I LastRead 0 FirstWrite -1}
		SHA256_sha256_k {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in_V { axis {  { stream_in_V_TDATA in_data 0 8 }  { stream_in_V_TVALID in_vld 0 1 }  { stream_in_V_TREADY in_acc 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

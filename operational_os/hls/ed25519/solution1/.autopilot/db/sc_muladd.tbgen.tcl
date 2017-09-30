set moduleName sc_muladd
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sc_muladd}
set C_modelType { void 0 }
set C_modelArgList {
	{ s int 8 regular {array 64 { 0 } 0 1 }  }
	{ a int 8 regular {array 64 { 1 } 1 1 }  }
	{ b int 8 regular {array 64 { 1 } 1 1 }  }
	{ c int 8 regular {array 64 { 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "a", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_address0 sc_out sc_lv 6 signal 0 } 
	{ s_ce0 sc_out sc_logic 1 signal 0 } 
	{ s_we0 sc_out sc_logic 1 signal 0 } 
	{ s_d0 sc_out sc_lv 8 signal 0 } 
	{ a_address0 sc_out sc_lv 6 signal 1 } 
	{ a_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_q0 sc_in sc_lv 8 signal 1 } 
	{ b_address0 sc_out sc_lv 6 signal 2 } 
	{ b_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_q0 sc_in sc_lv 8 signal 2 } 
	{ c_address0 sc_out sc_lv 6 signal 3 } 
	{ c_ce0 sc_out sc_logic 1 signal 3 } 
	{ c_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "sc_muladd",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state126", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30193"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30201"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30201"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30201"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30201"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30201"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_4_fu_30201"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state105", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30220"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30228"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30228"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30228"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30228"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30228"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_3_fu_30228"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_load_4_fu_30193", "Port" : "in_r"},
					{"ID" : "3", "SubInstance" : "grp_load_3_fu_30220", "Port" : "in_r"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_load_4_fu_30193", "Port" : "in_r"},
					{"ID" : "3", "SubInstance" : "grp_load_3_fu_30220", "Port" : "in_r"}]},
			{"Name" : "c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_load_3_fu_30228", "Port" : "in_r"},
					{"ID" : "2", "SubInstance" : "grp_load_4_fu_30201", "Port" : "in_r"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_4_fu_30193", "Parent" : "0",
		"CDFG" : "load_4",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_4_fu_30201", "Parent" : "0",
		"CDFG" : "load_4",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_3_fu_30220", "Parent" : "0",
		"CDFG" : "load_3",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_3_fu_30228", "Parent" : "0",
		"CDFG" : "load_3",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	sc_muladd {
		s {Type O LastRead -1 FirstWrite 359}
		a {Type I LastRead 3 FirstWrite -1}
		b {Type I LastRead 3 FirstWrite -1}
		c {Type I LastRead 3 FirstWrite -1}}
	load_4 {
		in_r {Type I LastRead 3 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}}
	load_4 {
		in_r {Type I LastRead 3 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}}
	load_3 {
		in_r {Type I LastRead 2 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}}
	load_3 {
		in_r {Type I LastRead 2 FirstWrite -1}
		in_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "488", "Max" : "488"}
	, {"Name" : "Interval", "Min" : "488", "Max" : "488"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s { ap_memory {  { s_address0 mem_address 1 6 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 8 } } }
	a { ap_memory {  { a_address0 mem_address 1 6 }  { a_ce0 mem_ce 1 1 }  { a_q0 mem_dout 0 8 } } }
	b { ap_memory {  { b_address0 mem_address 1 6 }  { b_ce0 mem_ce 1 1 }  { b_q0 mem_dout 0 8 } } }
	c { ap_memory {  { c_address0 mem_address 1 6 }  { c_ce0 mem_ce 1 1 }  { c_q0 mem_dout 0 8 } } }
}

set moduleName crypto_sign_ed25519_13
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {crypto_sign_ed25519_.13}
set C_modelType { void 0 }
set C_modelArgList {
	{ r_x_v int 32 regular {array 32 { 2 2 } 1 1 }  }
	{ r_y_v int 32 regular {array 32 { 2 2 } 1 1 }  }
	{ r_z_v int 32 regular {array 32 { 2 2 } 1 1 }  }
	{ r_t_v int 32 regular {array 32 { 2 2 } 1 1 }  }
	{ s_v int 32 regular {array 32 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r_x_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "r_y_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "r_z_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "r_t_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "s_v", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 52
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
	{ r_x_v_address1 sc_out sc_lv 5 signal 0 } 
	{ r_x_v_ce1 sc_out sc_logic 1 signal 0 } 
	{ r_x_v_we1 sc_out sc_logic 1 signal 0 } 
	{ r_x_v_d1 sc_out sc_lv 32 signal 0 } 
	{ r_x_v_q1 sc_in sc_lv 32 signal 0 } 
	{ r_y_v_address0 sc_out sc_lv 5 signal 1 } 
	{ r_y_v_ce0 sc_out sc_logic 1 signal 1 } 
	{ r_y_v_we0 sc_out sc_logic 1 signal 1 } 
	{ r_y_v_d0 sc_out sc_lv 32 signal 1 } 
	{ r_y_v_q0 sc_in sc_lv 32 signal 1 } 
	{ r_y_v_address1 sc_out sc_lv 5 signal 1 } 
	{ r_y_v_ce1 sc_out sc_logic 1 signal 1 } 
	{ r_y_v_we1 sc_out sc_logic 1 signal 1 } 
	{ r_y_v_d1 sc_out sc_lv 32 signal 1 } 
	{ r_y_v_q1 sc_in sc_lv 32 signal 1 } 
	{ r_z_v_address0 sc_out sc_lv 5 signal 2 } 
	{ r_z_v_ce0 sc_out sc_logic 1 signal 2 } 
	{ r_z_v_we0 sc_out sc_logic 1 signal 2 } 
	{ r_z_v_d0 sc_out sc_lv 32 signal 2 } 
	{ r_z_v_q0 sc_in sc_lv 32 signal 2 } 
	{ r_z_v_address1 sc_out sc_lv 5 signal 2 } 
	{ r_z_v_ce1 sc_out sc_logic 1 signal 2 } 
	{ r_z_v_we1 sc_out sc_logic 1 signal 2 } 
	{ r_z_v_d1 sc_out sc_lv 32 signal 2 } 
	{ r_z_v_q1 sc_in sc_lv 32 signal 2 } 
	{ r_t_v_address0 sc_out sc_lv 5 signal 3 } 
	{ r_t_v_ce0 sc_out sc_logic 1 signal 3 } 
	{ r_t_v_we0 sc_out sc_logic 1 signal 3 } 
	{ r_t_v_d0 sc_out sc_lv 32 signal 3 } 
	{ r_t_v_q0 sc_in sc_lv 32 signal 3 } 
	{ r_t_v_address1 sc_out sc_lv 5 signal 3 } 
	{ r_t_v_ce1 sc_out sc_logic 1 signal 3 } 
	{ r_t_v_we1 sc_out sc_logic 1 signal 3 } 
	{ r_t_v_d1 sc_out sc_lv 32 signal 3 } 
	{ r_t_v_q1 sc_in sc_lv 32 signal 3 } 
	{ s_v_address0 sc_out sc_lv 5 signal 4 } 
	{ s_v_ce0 sc_out sc_logic 1 signal 4 } 
	{ s_v_q0 sc_in sc_lv 32 signal 4 } 
	{ s_v_address1 sc_out sc_lv 5 signal 4 } 
	{ s_v_ce1 sc_out sc_logic 1 signal 4 } 
	{ s_v_q1 sc_in sc_lv 32 signal 4 } 
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
 	{ "name": "r_x_v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_x_v", "role": "address1" }} , 
 	{ "name": "r_x_v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_x_v", "role": "ce1" }} , 
 	{ "name": "r_x_v_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_x_v", "role": "we1" }} , 
 	{ "name": "r_x_v_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_x_v", "role": "d1" }} , 
 	{ "name": "r_x_v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_x_v", "role": "q1" }} , 
 	{ "name": "r_y_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_y_v", "role": "address0" }} , 
 	{ "name": "r_y_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_y_v", "role": "ce0" }} , 
 	{ "name": "r_y_v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_y_v", "role": "we0" }} , 
 	{ "name": "r_y_v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_y_v", "role": "d0" }} , 
 	{ "name": "r_y_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_y_v", "role": "q0" }} , 
 	{ "name": "r_y_v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_y_v", "role": "address1" }} , 
 	{ "name": "r_y_v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_y_v", "role": "ce1" }} , 
 	{ "name": "r_y_v_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_y_v", "role": "we1" }} , 
 	{ "name": "r_y_v_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_y_v", "role": "d1" }} , 
 	{ "name": "r_y_v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_y_v", "role": "q1" }} , 
 	{ "name": "r_z_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_z_v", "role": "address0" }} , 
 	{ "name": "r_z_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_z_v", "role": "ce0" }} , 
 	{ "name": "r_z_v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_z_v", "role": "we0" }} , 
 	{ "name": "r_z_v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_z_v", "role": "d0" }} , 
 	{ "name": "r_z_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_z_v", "role": "q0" }} , 
 	{ "name": "r_z_v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_z_v", "role": "address1" }} , 
 	{ "name": "r_z_v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_z_v", "role": "ce1" }} , 
 	{ "name": "r_z_v_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_z_v", "role": "we1" }} , 
 	{ "name": "r_z_v_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_z_v", "role": "d1" }} , 
 	{ "name": "r_z_v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_z_v", "role": "q1" }} , 
 	{ "name": "r_t_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_t_v", "role": "address0" }} , 
 	{ "name": "r_t_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_t_v", "role": "ce0" }} , 
 	{ "name": "r_t_v_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_t_v", "role": "we0" }} , 
 	{ "name": "r_t_v_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_t_v", "role": "d0" }} , 
 	{ "name": "r_t_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_t_v", "role": "q0" }} , 
 	{ "name": "r_t_v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "r_t_v", "role": "address1" }} , 
 	{ "name": "r_t_v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_t_v", "role": "ce1" }} , 
 	{ "name": "r_t_v_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_t_v", "role": "we1" }} , 
 	{ "name": "r_t_v_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_t_v", "role": "d1" }} , 
 	{ "name": "r_t_v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_t_v", "role": "q1" }} , 
 	{ "name": "s_v_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s_v", "role": "address0" }} , 
 	{ "name": "s_v_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_v", "role": "ce0" }} , 
 	{ "name": "s_v_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_v", "role": "q0" }} , 
 	{ "name": "s_v_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "s_v", "role": "address1" }} , 
 	{ "name": "s_v_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_v", "role": "ce1" }} , 
 	{ "name": "s_v_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_v", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "27", "30", "33", "36", "39", "42", "43", "45"],
		"CDFG" : "crypto_sign_ed25519_13",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_choose_t_fu_1365"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_choose_t_fu_1365"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1394"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_17_fu_1402"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_17_fu_1402"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_17_fu_1408"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_14_fu_1424"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_11_fu_1440"}],
		"Port" : [
			{"Name" : "r_x_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415", "Port" : "y_v"},
					{"ID" : "43", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431", "Port" : "y_v"},
					{"ID" : "27", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380", "Port" : "r_v"}]},
			{"Name" : "r_y_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_crypto_sign_ed25519_8_fu_1415", "Port" : "x_v"},
					{"ID" : "43", "SubInstance" : "grp_crypto_sign_ed25519_12_fu_1431", "Port" : "x_v"},
					{"ID" : "27", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380", "Port" : "r_v"}]},
			{"Name" : "r_z_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380", "Port" : "r_v"},
					{"ID" : "45", "SubInstance" : "grp_crypto_sign_ed25519_11_fu_1440", "Port" : "x_v"}]},
			{"Name" : "r_t_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1380", "Port" : "x_v"},
					{"ID" : "30", "SubInstance" : "grp_crypto_sign_ed25519_18_fu_1394", "Port" : "r_v"}]},
			{"Name" : "s_v", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_crypto_sign_ed25519_14_fu_1424", "Port" : "s_v"}]},
			{"Name" : "ge25519_base_multipl_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_choose_t_fu_1365", "Port" : "ge25519_base_multipl_1"}]},
			{"Name" : "ge25519_base_multipl", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_choose_t_fu_1365", "Port" : "ge25519_base_multipl"}]},
			{"Name" : "ge25519_ec2d_v", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_crypto_sign_ed25519_17_fu_1408", "Port" : "y_v"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ge25519_ec2d_v_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_v_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_v_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t1_v_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t2_v_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_v_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_v_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.e_v_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.f_v_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.g_v_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_v_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qt_v_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_x_v_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_y_v_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_temp_x_v_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_temp_y_v_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_choose_t_fu_1365", "Parent" : "0", "Child" : ["19", "20", "21", "22", "23", "26"],
		"CDFG" : "choose_t",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_crypto_sign_ed25519_7_fu_1424"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cmov_aff_fu_1430"}],
		"Port" : [
			{"Name" : "t_x_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "r_x_v"}]},
			{"Name" : "t_y_v", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "r_y_v"}]},
			{"Name" : "pos_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "ge25519_base_multipl_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "p_x_v"}]},
			{"Name" : "ge25519_base_multipl", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_cmov_aff_fu_1430", "Port" : "p_y_v"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choose_t_fu_1365.ge25519_base_multipl_1_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choose_t_fu_1365.ge25519_base_multipl_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choose_t_fu_1365.t_v_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choose_t_fu_1365.v_v_U", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choose_t_fu_1365.grp_crypto_sign_ed25519_7_fu_1424", "Parent" : "18", "Child" : ["24", "25"],
		"CDFG" : "crypto_sign_ed25519_7",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_choose_t_fu_1365.grp_crypto_sign_ed25519_7_fu_1424.t_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_choose_t_fu_1365.grp_crypto_sign_ed25519_7_fu_1424.crypto_sign_mac_mpcA_U51", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_choose_t_fu_1365.grp_cmov_aff_fu_1430", "Parent" : "18",
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
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_1380", "Parent" : "0", "Child" : ["28", "29"],
		"CDFG" : "crypto_sign_ed25519_18",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_1380.t_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_1380.crypto_sign_mac_mpcA_x_U63", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_1394", "Parent" : "0", "Child" : ["31", "32"],
		"CDFG" : "crypto_sign_ed25519_18",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_1394.t_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_18_fu_1394.crypto_sign_mac_mpcA_x_U63", "Parent" : "30"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_17_fu_1402", "Parent" : "0", "Child" : ["34", "35"],
		"CDFG" : "crypto_sign_ed25519_17",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_17_fu_1402.t_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_17_fu_1402.crypto_sign_mac_mpcA_x_U76", "Parent" : "33"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_17_fu_1408", "Parent" : "0", "Child" : ["37", "38"],
		"CDFG" : "crypto_sign_ed25519_17",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_17_fu_1408.t_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_17_fu_1408.crypto_sign_mac_mpcA_x_U76", "Parent" : "36"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_8_fu_1415", "Parent" : "0", "Child" : ["40", "41"],
		"CDFG" : "crypto_sign_ed25519_8",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_8_fu_1415.t_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_8_fu_1415.crypto_sign_mac_mpcA_x_U68", "Parent" : "39"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_14_fu_1424", "Parent" : "0",
		"CDFG" : "crypto_sign_ed25519_14",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_12_fu_1431", "Parent" : "0", "Child" : ["44"],
		"CDFG" : "crypto_sign_ed25519_12",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_12_fu_1431.crypto_sign_mac_mpcA_x_U72", "Parent" : "43"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_11_fu_1440", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "crypto_sign_ed25519_11",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "r_v", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_v", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_crypto_sign_ed25519_11_fu_1440.crypto_sign_mac_mpcA_x_U79", "Parent" : "45"}]}


set ArgLastReadFirstWriteLatency {
	crypto_sign_ed25519_13 {
		r_x_v {Type IO LastRead 16 FirstWrite -1}
		r_y_v {Type IO LastRead 16 FirstWrite -1}
		r_z_v {Type IO LastRead 8 FirstWrite -1}
		r_t_v {Type IO LastRead 8 FirstWrite -1}
		s_v {Type I LastRead 3 FirstWrite -1}
		ge25519_base_multipl_1 {Type I LastRead -1 FirstWrite -1}
		ge25519_base_multipl {Type I LastRead -1 FirstWrite -1}
		ge25519_ec2d_v {Type I LastRead -1 FirstWrite -1}}
	choose_t {
		t_x_v {Type IO LastRead 28 FirstWrite 1}
		t_y_v {Type IO LastRead 2 FirstWrite 1}
		pos_r {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 17 FirstWrite -1}
		ge25519_base_multipl_1 {Type I LastRead -1 FirstWrite -1}
		ge25519_base_multipl {Type I LastRead -1 FirstWrite -1}}
	crypto_sign_ed25519_7 {
		r_v {Type IO LastRead 7 FirstWrite 4}
		y_v {Type I LastRead 3 FirstWrite -1}}
	cmov_aff {
		r_x_v {Type IO LastRead 1 FirstWrite 2}
		r_y_v {Type IO LastRead 2 FirstWrite 3}
		p_x_v {Type I LastRead 1 FirstWrite -1}
		tmp_919 {Type I LastRead 0 FirstWrite -1}
		p_y_v {Type I LastRead 2 FirstWrite -1}
		tmp_9191 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	crypto_sign_ed25519_18 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		x_v {Type I LastRead 2 FirstWrite -1}
		y_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_18 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		x_v {Type I LastRead 2 FirstWrite -1}
		y_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_17 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		y_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_17 {
		r_v {Type IO LastRead 8 FirstWrite 4}
		y_v {Type I LastRead 4 FirstWrite -1}}
	crypto_sign_ed25519_8 {
		r_v {Type IO LastRead 7 FirstWrite 4}
		x_v {Type I LastRead 2 FirstWrite -1}
		y_v {Type I LastRead 3 FirstWrite -1}}
	crypto_sign_ed25519_14 {
		r {Type IO LastRead 6 FirstWrite 2}
		s_v {Type I LastRead 3 FirstWrite -1}}
	crypto_sign_ed25519_12 {
		r_v {Type IO LastRead 5 FirstWrite 2}
		x_v {Type I LastRead 1 FirstWrite -1}
		y_v {Type I LastRead 1 FirstWrite -1}}
	crypto_sign_ed25519_11 {
		r_v {Type IO LastRead 5 FirstWrite 2}
		x_v {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2164992", "Max" : "2164992"}
	, {"Name" : "Interval", "Min" : "2164992", "Max" : "2164992"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	r_x_v { ap_memory {  { r_x_v_address0 mem_address 1 5 }  { r_x_v_ce0 mem_ce 1 1 }  { r_x_v_we0 mem_we 1 1 }  { r_x_v_d0 mem_din 1 32 }  { r_x_v_q0 mem_dout 0 32 }  { r_x_v_address1 mem_address 1 5 }  { r_x_v_ce1 mem_ce 1 1 }  { r_x_v_we1 mem_we 1 1 }  { r_x_v_d1 mem_din 1 32 }  { r_x_v_q1 mem_dout 0 32 } } }
	r_y_v { ap_memory {  { r_y_v_address0 mem_address 1 5 }  { r_y_v_ce0 mem_ce 1 1 }  { r_y_v_we0 mem_we 1 1 }  { r_y_v_d0 mem_din 1 32 }  { r_y_v_q0 mem_dout 0 32 }  { r_y_v_address1 mem_address 1 5 }  { r_y_v_ce1 mem_ce 1 1 }  { r_y_v_we1 mem_we 1 1 }  { r_y_v_d1 mem_din 1 32 }  { r_y_v_q1 mem_dout 0 32 } } }
	r_z_v { ap_memory {  { r_z_v_address0 mem_address 1 5 }  { r_z_v_ce0 mem_ce 1 1 }  { r_z_v_we0 mem_we 1 1 }  { r_z_v_d0 mem_din 1 32 }  { r_z_v_q0 mem_dout 0 32 }  { r_z_v_address1 mem_address 1 5 }  { r_z_v_ce1 mem_ce 1 1 }  { r_z_v_we1 mem_we 1 1 }  { r_z_v_d1 mem_din 1 32 }  { r_z_v_q1 mem_dout 0 32 } } }
	r_t_v { ap_memory {  { r_t_v_address0 mem_address 1 5 }  { r_t_v_ce0 mem_ce 1 1 }  { r_t_v_we0 mem_we 1 1 }  { r_t_v_d0 mem_din 1 32 }  { r_t_v_q0 mem_dout 0 32 }  { r_t_v_address1 mem_address 1 5 }  { r_t_v_ce1 mem_ce 1 1 }  { r_t_v_we1 mem_we 1 1 }  { r_t_v_d1 mem_din 1 32 }  { r_t_v_q1 mem_dout 0 32 } } }
	s_v { ap_memory {  { s_v_address0 mem_address 1 5 }  { s_v_ce0 mem_ce 1 1 }  { s_v_q0 mem_dout 0 32 }  { s_v_address1 mem_address 1 5 }  { s_v_ce1 mem_ce 1 1 }  { s_v_q1 mem_dout 0 32 } } }
}

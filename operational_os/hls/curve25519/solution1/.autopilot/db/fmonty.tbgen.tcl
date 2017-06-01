set moduleName fmonty
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {fmonty}
set C_modelType { void 0 }
set C_modelArgList {
	{ x2 int 64 regular {array 19 { 2 2 } 1 1 }  }
	{ z2 int 64 regular {array 19 { 2 2 } 1 1 }  }
	{ x3 int 64 regular {array 19 { 0 3 } 0 1 }  }
	{ z3 int 64 regular {array 19 { 0 3 } 0 1 }  }
	{ x int 64 regular {array 19 { 2 2 } 1 1 }  }
	{ z int 64 regular {array 19 { 2 1 } 1 1 }  }
	{ xprime int 64 regular {array 19 { 2 2 } 1 1 }  }
	{ zprime int 64 regular {array 19 { 2 1 } 1 1 }  }
	{ qmqp int 26 regular {array 10 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "z2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "x3", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "z3", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "z", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "xprime", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "zprime", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "qmqp", "interface" : "memory", "bitwidth" : 26, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x2_address0 sc_out sc_lv 5 signal 0 } 
	{ x2_ce0 sc_out sc_logic 1 signal 0 } 
	{ x2_we0 sc_out sc_logic 1 signal 0 } 
	{ x2_d0 sc_out sc_lv 64 signal 0 } 
	{ x2_q0 sc_in sc_lv 64 signal 0 } 
	{ x2_address1 sc_out sc_lv 5 signal 0 } 
	{ x2_ce1 sc_out sc_logic 1 signal 0 } 
	{ x2_we1 sc_out sc_logic 1 signal 0 } 
	{ x2_d1 sc_out sc_lv 64 signal 0 } 
	{ x2_q1 sc_in sc_lv 64 signal 0 } 
	{ z2_address0 sc_out sc_lv 5 signal 1 } 
	{ z2_ce0 sc_out sc_logic 1 signal 1 } 
	{ z2_we0 sc_out sc_logic 1 signal 1 } 
	{ z2_d0 sc_out sc_lv 64 signal 1 } 
	{ z2_q0 sc_in sc_lv 64 signal 1 } 
	{ z2_address1 sc_out sc_lv 5 signal 1 } 
	{ z2_ce1 sc_out sc_logic 1 signal 1 } 
	{ z2_we1 sc_out sc_logic 1 signal 1 } 
	{ z2_d1 sc_out sc_lv 64 signal 1 } 
	{ z2_q1 sc_in sc_lv 64 signal 1 } 
	{ x3_address0 sc_out sc_lv 5 signal 2 } 
	{ x3_ce0 sc_out sc_logic 1 signal 2 } 
	{ x3_we0 sc_out sc_logic 1 signal 2 } 
	{ x3_d0 sc_out sc_lv 64 signal 2 } 
	{ z3_address0 sc_out sc_lv 5 signal 3 } 
	{ z3_ce0 sc_out sc_logic 1 signal 3 } 
	{ z3_we0 sc_out sc_logic 1 signal 3 } 
	{ z3_d0 sc_out sc_lv 64 signal 3 } 
	{ x_address0 sc_out sc_lv 5 signal 4 } 
	{ x_ce0 sc_out sc_logic 1 signal 4 } 
	{ x_we0 sc_out sc_logic 1 signal 4 } 
	{ x_d0 sc_out sc_lv 64 signal 4 } 
	{ x_q0 sc_in sc_lv 64 signal 4 } 
	{ x_address1 sc_out sc_lv 5 signal 4 } 
	{ x_ce1 sc_out sc_logic 1 signal 4 } 
	{ x_we1 sc_out sc_logic 1 signal 4 } 
	{ x_d1 sc_out sc_lv 64 signal 4 } 
	{ x_q1 sc_in sc_lv 64 signal 4 } 
	{ z_address0 sc_out sc_lv 5 signal 5 } 
	{ z_ce0 sc_out sc_logic 1 signal 5 } 
	{ z_we0 sc_out sc_logic 1 signal 5 } 
	{ z_d0 sc_out sc_lv 64 signal 5 } 
	{ z_q0 sc_in sc_lv 64 signal 5 } 
	{ z_address1 sc_out sc_lv 5 signal 5 } 
	{ z_ce1 sc_out sc_logic 1 signal 5 } 
	{ z_q1 sc_in sc_lv 64 signal 5 } 
	{ xprime_address0 sc_out sc_lv 5 signal 6 } 
	{ xprime_ce0 sc_out sc_logic 1 signal 6 } 
	{ xprime_we0 sc_out sc_logic 1 signal 6 } 
	{ xprime_d0 sc_out sc_lv 64 signal 6 } 
	{ xprime_q0 sc_in sc_lv 64 signal 6 } 
	{ xprime_address1 sc_out sc_lv 5 signal 6 } 
	{ xprime_ce1 sc_out sc_logic 1 signal 6 } 
	{ xprime_we1 sc_out sc_logic 1 signal 6 } 
	{ xprime_d1 sc_out sc_lv 64 signal 6 } 
	{ xprime_q1 sc_in sc_lv 64 signal 6 } 
	{ zprime_address0 sc_out sc_lv 5 signal 7 } 
	{ zprime_ce0 sc_out sc_logic 1 signal 7 } 
	{ zprime_we0 sc_out sc_logic 1 signal 7 } 
	{ zprime_d0 sc_out sc_lv 64 signal 7 } 
	{ zprime_q0 sc_in sc_lv 64 signal 7 } 
	{ zprime_address1 sc_out sc_lv 5 signal 7 } 
	{ zprime_ce1 sc_out sc_logic 1 signal 7 } 
	{ zprime_q1 sc_in sc_lv 64 signal 7 } 
	{ qmqp_address0 sc_out sc_lv 4 signal 8 } 
	{ qmqp_ce0 sc_out sc_logic 1 signal 8 } 
	{ qmqp_q0 sc_in sc_lv 26 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x2", "role": "address0" }} , 
 	{ "name": "x2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2", "role": "ce0" }} , 
 	{ "name": "x2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2", "role": "we0" }} , 
 	{ "name": "x2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x2", "role": "d0" }} , 
 	{ "name": "x2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x2", "role": "q0" }} , 
 	{ "name": "x2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x2", "role": "address1" }} , 
 	{ "name": "x2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2", "role": "ce1" }} , 
 	{ "name": "x2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2", "role": "we1" }} , 
 	{ "name": "x2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x2", "role": "d1" }} , 
 	{ "name": "x2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x2", "role": "q1" }} , 
 	{ "name": "z2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "z2", "role": "address0" }} , 
 	{ "name": "z2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z2", "role": "ce0" }} , 
 	{ "name": "z2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z2", "role": "we0" }} , 
 	{ "name": "z2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2", "role": "d0" }} , 
 	{ "name": "z2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2", "role": "q0" }} , 
 	{ "name": "z2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "z2", "role": "address1" }} , 
 	{ "name": "z2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z2", "role": "ce1" }} , 
 	{ "name": "z2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z2", "role": "we1" }} , 
 	{ "name": "z2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2", "role": "d1" }} , 
 	{ "name": "z2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z2", "role": "q1" }} , 
 	{ "name": "x3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x3", "role": "address0" }} , 
 	{ "name": "x3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x3", "role": "ce0" }} , 
 	{ "name": "x3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x3", "role": "we0" }} , 
 	{ "name": "x3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x3", "role": "d0" }} , 
 	{ "name": "z3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "z3", "role": "address0" }} , 
 	{ "name": "z3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z3", "role": "ce0" }} , 
 	{ "name": "z3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z3", "role": "we0" }} , 
 	{ "name": "z3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z3", "role": "d0" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "we0" }} , 
 	{ "name": "x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "d0" }} , 
 	{ "name": "x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "q0" }} , 
 	{ "name": "x_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x", "role": "address1" }} , 
 	{ "name": "x_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce1" }} , 
 	{ "name": "x_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "we1" }} , 
 	{ "name": "x_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "d1" }} , 
 	{ "name": "x_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x", "role": "q1" }} , 
 	{ "name": "z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "z", "role": "address0" }} , 
 	{ "name": "z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z", "role": "ce0" }} , 
 	{ "name": "z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z", "role": "we0" }} , 
 	{ "name": "z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z", "role": "d0" }} , 
 	{ "name": "z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z", "role": "q0" }} , 
 	{ "name": "z_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "z", "role": "address1" }} , 
 	{ "name": "z_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z", "role": "ce1" }} , 
 	{ "name": "z_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z", "role": "q1" }} , 
 	{ "name": "xprime_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xprime", "role": "address0" }} , 
 	{ "name": "xprime_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xprime", "role": "ce0" }} , 
 	{ "name": "xprime_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xprime", "role": "we0" }} , 
 	{ "name": "xprime_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xprime", "role": "d0" }} , 
 	{ "name": "xprime_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xprime", "role": "q0" }} , 
 	{ "name": "xprime_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xprime", "role": "address1" }} , 
 	{ "name": "xprime_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xprime", "role": "ce1" }} , 
 	{ "name": "xprime_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xprime", "role": "we1" }} , 
 	{ "name": "xprime_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xprime", "role": "d1" }} , 
 	{ "name": "xprime_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xprime", "role": "q1" }} , 
 	{ "name": "zprime_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "zprime", "role": "address0" }} , 
 	{ "name": "zprime_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zprime", "role": "ce0" }} , 
 	{ "name": "zprime_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zprime", "role": "we0" }} , 
 	{ "name": "zprime_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "zprime", "role": "d0" }} , 
 	{ "name": "zprime_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "zprime", "role": "q0" }} , 
 	{ "name": "zprime_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "zprime", "role": "address1" }} , 
 	{ "name": "zprime_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zprime", "role": "ce1" }} , 
 	{ "name": "zprime_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "zprime", "role": "q1" }} , 
 	{ "name": "qmqp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "qmqp", "role": "address0" }} , 
 	{ "name": "qmqp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "qmqp", "role": "ce0" }} , 
 	{ "name": "qmqp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "qmqp", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "13", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "fmonty",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_fu_331"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_fu_331"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_fu_331"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_fu_338"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fproduct_fu_345"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fproduct_fu_345"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fproduct_fu_345"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fproduct_fu_345"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fproduct_1_fu_358"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_degree_fu_366"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_degree_fu_366"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_degree_fu_366"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_degree_fu_366"},
			{"State" : "ap_ST_fsm_state51", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_degree_fu_366"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_freduce_coefficients_fu_373"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsum_fu_380"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsum_fu_380"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsum_fu_380"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsum_fu_380"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fdifference_1_fu_390"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fdifference_1_fu_390"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fdifference_1_fu_390"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_fu_398"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_fu_398"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_memcpy_fu_398"}],
		"Port" : [
			{"Name" : "x2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_fproduct_fu_345", "Port" : "output_r"},
					{"ID" : "18", "SubInstance" : "grp_freduce_degree_fu_366", "Port" : "output_r"},
					{"ID" : "19", "SubInstance" : "grp_freduce_coefficients_fu_373", "Port" : "output_r"}]},
			{"Name" : "z2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_fproduct_fu_345", "Port" : "output_r"},
					{"ID" : "18", "SubInstance" : "grp_freduce_degree_fu_366", "Port" : "output_r"},
					{"ID" : "19", "SubInstance" : "grp_freduce_coefficients_fu_373", "Port" : "output_r"}]},
			{"Name" : "x3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_fproduct_fu_345", "Port" : "in2"},
					{"ID" : "20", "SubInstance" : "grp_fsum_fu_380", "Port" : "output_r"},
					{"ID" : "22", "SubInstance" : "grp_p_memcpy_fu_398", "Port" : "src"},
					{"ID" : "10", "SubInstance" : "grp_fsquare_fu_331", "Port" : "in_r"}]},
			{"Name" : "z", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_fsquare_fu_338", "Port" : "in_r"},
					{"ID" : "16", "SubInstance" : "grp_fproduct_fu_345", "Port" : "in_r"},
					{"ID" : "20", "SubInstance" : "grp_fsum_fu_380", "Port" : "in_r"},
					{"ID" : "21", "SubInstance" : "grp_fdifference_1_fu_390", "Port" : "output_r"}]},
			{"Name" : "xprime", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_fproduct_fu_345", "Port" : "in2"},
					{"ID" : "20", "SubInstance" : "grp_fsum_fu_380", "Port" : "output_r"},
					{"ID" : "22", "SubInstance" : "grp_p_memcpy_fu_398", "Port" : "src"}]},
			{"Name" : "zprime", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_fproduct_fu_345", "Port" : "in_r"},
					{"ID" : "20", "SubInstance" : "grp_fsum_fu_380", "Port" : "in_r"},
					{"ID" : "21", "SubInstance" : "grp_fdifference_1_fu_390", "Port" : "output_r"}]},
			{"Name" : "qmqp", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_fproduct_1_fu_358", "Port" : "in_r"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.origx_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.origxprime_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zzz_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xx_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zz_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xxprime_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zzprime_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zzzprime_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xxxprime_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fsquare_fu_331", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "fsquare",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_inner_2_fu_469"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_fsquare_inner_2_fu_469", "Port" : "in_r"}]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fsquare_fu_331.t_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fsquare_fu_331.grp_fsquare_inner_2_fu_469", "Parent" : "10",
		"CDFG" : "fsquare_inner_2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fsquare_fu_338", "Parent" : "0", "Child" : ["14", "15"],
		"CDFG" : "fsquare",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fsquare_inner_2_fu_469"}],
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_fsquare_inner_2_fu_469", "Port" : "in_r"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fsquare_fu_338.t_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fsquare_fu_338.grp_fsquare_inner_2_fu_469", "Parent" : "13",
		"CDFG" : "fsquare_inner_2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fproduct_fu_345", "Parent" : "0",
		"CDFG" : "fproduct",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fproduct_1_fu_358", "Parent" : "0",
		"CDFG" : "fproduct_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_freduce_degree_fu_366", "Parent" : "0",
		"CDFG" : "freduce_degree",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_freduce_coefficients_fu_373", "Parent" : "0",
		"CDFG" : "freduce_coefficients",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fsum_fu_380", "Parent" : "0",
		"CDFG" : "fsum",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fdifference_1_fu_390", "Parent" : "0",
		"CDFG" : "fdifference_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_memcpy_fu_398", "Parent" : "0",
		"CDFG" : "p_memcpy",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	fmonty {
		x2 {Type IO LastRead 9 FirstWrite 0}
		z2 {Type IO LastRead 9 FirstWrite 0}
		x3 {Type O LastRead -1 FirstWrite 27}
		z3 {Type O LastRead -1 FirstWrite 28}
		x {Type IO LastRead 54 FirstWrite -1}
		z {Type IO LastRead 53 FirstWrite -1}
		xprime {Type IO LastRead 54 FirstWrite -1}
		zprime {Type IO LastRead 53 FirstWrite -1}
		qmqp {Type I LastRead 53 FirstWrite -1}}
	fsquare {
		output_r {Type O LastRead -1 FirstWrite 37}
		in_r {Type I LastRead 29 FirstWrite -1}}
	fsquare_inner_2 {
		output_r {Type O LastRead -1 FirstWrite 1}
		in_r {Type I LastRead 29 FirstWrite -1}}
	fsquare {
		output_r {Type O LastRead -1 FirstWrite 37}
		in_r {Type I LastRead 29 FirstWrite -1}}
	fsquare_inner_2 {
		output_r {Type O LastRead -1 FirstWrite 1}
		in_r {Type I LastRead 29 FirstWrite -1}}
	fproduct {
		output_r {Type O LastRead -1 FirstWrite 1}
		in2 {Type I LastRead 54 FirstWrite -1}
		in_r {Type I LastRead 53 FirstWrite -1}}
	fproduct_1 {
		output_r {Type O LastRead -1 FirstWrite 1}
		in2 {Type I LastRead 54 FirstWrite -1}
		in_r {Type I LastRead 53 FirstWrite -1}}
	freduce_degree {
		output_r {Type IO LastRead 9 FirstWrite 9}}
	freduce_coefficients {
		output_r {Type IO LastRead 3 FirstWrite 0}}
	fsum {
		output_r {Type IO LastRead 2 FirstWrite 2}
		in_r {Type I LastRead 2 FirstWrite -1}}
	fdifference_1 {
		output_r {Type IO LastRead 1 FirstWrite 2}
		in_r {Type I LastRead 1 FirstWrite -1}}
	p_memcpy {
		dst {Type O LastRead -1 FirstWrite 2}
		src {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1297", "Max" : "1297"}
	, {"Name" : "Interval", "Min" : "1297", "Max" : "1297"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x2 { ap_memory {  { x2_address0 mem_address 1 5 }  { x2_ce0 mem_ce 1 1 }  { x2_we0 mem_we 1 1 }  { x2_d0 mem_din 1 64 }  { x2_q0 mem_dout 0 64 }  { x2_address1 mem_address 1 5 }  { x2_ce1 mem_ce 1 1 }  { x2_we1 mem_we 1 1 }  { x2_d1 mem_din 1 64 }  { x2_q1 mem_dout 0 64 } } }
	z2 { ap_memory {  { z2_address0 mem_address 1 5 }  { z2_ce0 mem_ce 1 1 }  { z2_we0 mem_we 1 1 }  { z2_d0 mem_din 1 64 }  { z2_q0 mem_dout 0 64 }  { z2_address1 mem_address 1 5 }  { z2_ce1 mem_ce 1 1 }  { z2_we1 mem_we 1 1 }  { z2_d1 mem_din 1 64 }  { z2_q1 mem_dout 0 64 } } }
	x3 { ap_memory {  { x3_address0 mem_address 1 5 }  { x3_ce0 mem_ce 1 1 }  { x3_we0 mem_we 1 1 }  { x3_d0 mem_din 1 64 } } }
	z3 { ap_memory {  { z3_address0 mem_address 1 5 }  { z3_ce0 mem_ce 1 1 }  { z3_we0 mem_we 1 1 }  { z3_d0 mem_din 1 64 } } }
	x { ap_memory {  { x_address0 mem_address 1 5 }  { x_ce0 mem_ce 1 1 }  { x_we0 mem_we 1 1 }  { x_d0 mem_din 1 64 }  { x_q0 mem_dout 0 64 }  { x_address1 mem_address 1 5 }  { x_ce1 mem_ce 1 1 }  { x_we1 mem_we 1 1 }  { x_d1 mem_din 1 64 }  { x_q1 mem_dout 0 64 } } }
	z { ap_memory {  { z_address0 mem_address 1 5 }  { z_ce0 mem_ce 1 1 }  { z_we0 mem_we 1 1 }  { z_d0 mem_din 1 64 }  { z_q0 mem_dout 0 64 }  { z_address1 mem_address 1 5 }  { z_ce1 mem_ce 1 1 }  { z_q1 mem_dout 0 64 } } }
	xprime { ap_memory {  { xprime_address0 mem_address 1 5 }  { xprime_ce0 mem_ce 1 1 }  { xprime_we0 mem_we 1 1 }  { xprime_d0 mem_din 1 64 }  { xprime_q0 mem_dout 0 64 }  { xprime_address1 mem_address 1 5 }  { xprime_ce1 mem_ce 1 1 }  { xprime_we1 mem_we 1 1 }  { xprime_d1 mem_din 1 64 }  { xprime_q1 mem_dout 0 64 } } }
	zprime { ap_memory {  { zprime_address0 mem_address 1 5 }  { zprime_ce0 mem_ce 1 1 }  { zprime_we0 mem_we 1 1 }  { zprime_d0 mem_din 1 64 }  { zprime_q0 mem_dout 0 64 }  { zprime_address1 mem_address 1 5 }  { zprime_ce1 mem_ce 1 1 }  { zprime_q1 mem_dout 0 64 } } }
	qmqp { ap_memory {  { qmqp_address0 mem_address 1 4 }  { qmqp_ce0 mem_ce 1 1 }  { qmqp_q0 mem_dout 0 26 } } }
}

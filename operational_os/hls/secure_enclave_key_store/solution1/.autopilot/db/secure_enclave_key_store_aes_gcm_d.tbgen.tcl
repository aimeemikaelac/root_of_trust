set moduleName secure_enclave_key_store_aes_gcm_d
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {secure_enclave_key_store_aes_gcm_d}
set C_modelType { int 1 }
set C_modelArgList {
	{ key_V int 128 regular  }
	{ iv_V int 128 regular  }
	{ ct_V int 128 regular {array 256 { 1 3 } 1 1 }  }
	{ pt_V int 128 regular {array 256 { 0 3 } 0 1 }  }
	{ tag_in_V int 128 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "key_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "iv_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ct_V", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "pt_V", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tag_in_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ key_V sc_in sc_lv 128 signal 0 } 
	{ iv_V sc_in sc_lv 128 signal 1 } 
	{ ct_V_address0 sc_out sc_lv 8 signal 2 } 
	{ ct_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ ct_V_q0 sc_in sc_lv 128 signal 2 } 
	{ pt_V_address0 sc_out sc_lv 8 signal 3 } 
	{ pt_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ pt_V_we0 sc_out sc_logic 1 signal 3 } 
	{ pt_V_d0 sc_out sc_lv 128 signal 3 } 
	{ tag_in_V sc_in sc_lv 128 signal 4 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "key_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "key_V", "role": "default" }} , 
 	{ "name": "iv_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "iv_V", "role": "default" }} , 
 	{ "name": "ct_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ct_V", "role": "address0" }} , 
 	{ "name": "ct_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ct_V", "role": "ce0" }} , 
 	{ "name": "ct_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ct_V", "role": "q0" }} , 
 	{ "name": "pt_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pt_V", "role": "address0" }} , 
 	{ "name": "pt_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_V", "role": "ce0" }} , 
 	{ "name": "pt_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pt_V", "role": "we0" }} , 
 	{ "name": "pt_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "pt_V", "role": "d0" }} , 
 	{ "name": "tag_in_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tag_in_V", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "23", "44"], "CDFG" : "secure_enclave_key_store_aes_gcm_d", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "key_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "iv_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "ct_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "data_in_V"}]}, 
		{"Name" : "pt_V", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "data_out_V"}]}, 
		{"Name" : "tag_in_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_0"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_0"}]}, 
		{"Name" : "sboxes_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_1"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_1"}]}, 
		{"Name" : "sboxes_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_2"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_2"}]}, 
		{"Name" : "sboxes_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_3"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_3"}]}, 
		{"Name" : "sboxes_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_4"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_4"}]}, 
		{"Name" : "sboxes_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_5"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_5"}]}, 
		{"Name" : "sboxes_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_6"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_6"}]}, 
		{"Name" : "sboxes_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_7"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_7"}]}, 
		{"Name" : "sboxes_8", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_8"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_8"}]}, 
		{"Name" : "sboxes_9", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_9"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_9"}]}, 
		{"Name" : "sboxes_10", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_10"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_10"}]}, 
		{"Name" : "sboxes_11", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_11"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_11"}]}, 
		{"Name" : "sboxes_12", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_12"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_12"}]}, 
		{"Name" : "sboxes_13", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_13"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_13"}]}, 
		{"Name" : "sboxes_14", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_14"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_14"}]}, 
		{"Name" : "sboxes_15", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_15"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_15"}]}, 
		{"Name" : "sboxes_16", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_16"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_16"}]}, 
		{"Name" : "sboxes_17", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_17"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_17"}]}, 
		{"Name" : "sboxes_18", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_18"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_18"}]}, 
		{"Name" : "sboxes_19", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Port" : "sboxes_19"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_197", "Port" : "sboxes_19"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st25_fsm_24", "FSM" : "ap_CS_fsm", "SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_144"},
		{"State" : "ap_ST_st22_fsm_21", "FSM" : "ap_CS_fsm", "SubInst" : "grp_secure_enclave_key_store_ghash_iteration_fu_245"},
		{"State" : "ap_ST_st23_fsm_22", "FSM" : "ap_CS_fsm", "SubInst" : "grp_secure_enclave_key_store_ghash_iteration_fu_245"},
		{"State" : "ap_ST_st24_fsm_23", "FSM" : "ap_CS_fsm", "SubInst" : "grp_secure_enclave_key_store_ghash_iteration_fu_245"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Parent" : "0", "Child" : ["2"], "CDFG" : "secure_enclave_key_store_aes_gcm_cipher", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "key_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "data_in_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "data_out_V", "Type" : "Memory", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "counter_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "hash_key_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "encrypt", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_0"}]}, 
		{"Name" : "sboxes_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_1"}]}, 
		{"Name" : "sboxes_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_2"}]}, 
		{"Name" : "sboxes_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_3"}]}, 
		{"Name" : "sboxes_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_4"}]}, 
		{"Name" : "sboxes_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_5"}]}, 
		{"Name" : "sboxes_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_6"}]}, 
		{"Name" : "sboxes_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_7"}]}, 
		{"Name" : "sboxes_8", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_8"}]}, 
		{"Name" : "sboxes_9", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_9"}]}, 
		{"Name" : "sboxes_10", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_10"}]}, 
		{"Name" : "sboxes_11", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_11"}]}, 
		{"Name" : "sboxes_12", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_12"}]}, 
		{"Name" : "sboxes_13", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_13"}]}, 
		{"Name" : "sboxes_14", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_14"}]}, 
		{"Name" : "sboxes_15", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_15"}]}, 
		{"Name" : "sboxes_16", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_16"}]}, 
		{"Name" : "sboxes_17", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_17"}]}, 
		{"Name" : "sboxes_18", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_18"}]}, 
		{"Name" : "sboxes_19", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_265", "Port" : "sboxes_19"}]}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"], "CDFG" : "secure_enclave_key_store_aes", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "inptext_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "key_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_8", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_9", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_10", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_11", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_12", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_13", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_14", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_15", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_16", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_17", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_18", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_19", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_0_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_1_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_2_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_3_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_4_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_5_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_6_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_7_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_8_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_9_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_10_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_11_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_12_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_13_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_14_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_15_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_16_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_17_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_18_U", "Parent" : "2", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_19_U", "Parent" : "2", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43"], "CDFG" : "secure_enclave_key_store_aes", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "inptext_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "key_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_8", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_9", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_10", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_11", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_12", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_13", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_14", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_15", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_16", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_17", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_18", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_19", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_0_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_1_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_2_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_3_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_4_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_5_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_6_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_7_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_8_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_9_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_10_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_11_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_12_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_13_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_14_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_15_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_16_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_17_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_18_U", "Parent" : "23", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_197.sboxes_19_U", "Parent" : "23", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_ghash_iteration_fu_245", "Parent" : "0", "Child" : [], "CDFG" : "secure_enclave_key_store_ghash_iteration", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "h_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "d_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "x_prev_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619058", "Max" : "619058"}
	, {"Name" : "Interval", "Min" : "619058", "Max" : "619058"}
]}

set Spec2ImplPortList { 
	key_V { ap_none {  { key_V in_data 0 128 } } }
	iv_V { ap_none {  { iv_V in_data 0 128 } } }
	ct_V { ap_memory {  { ct_V_address0 mem_address 1 8 }  { ct_V_ce0 mem_ce 1 1 }  { ct_V_q0 mem_dout 0 128 } } }
	pt_V { ap_memory {  { pt_V_address0 mem_address 1 8 }  { pt_V_ce0 mem_ce 1 1 }  { pt_V_we0 mem_we 1 1 }  { pt_V_d0 mem_din 1 128 } } }
	tag_in_V { ap_none {  { tag_in_V in_data 0 128 } } }
}

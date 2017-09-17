set C_TypeInfoList {{ 
"secure_enclave_key_store" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"device_key_ocm_addr": [[], {"scalar": "unsigned int"}] }, {"ocm": [[], {"array": ["0", [4294967296]]}] }, {"iv": [[],"1"] }, {"encrypted_header_old": [[], {"array": ["1", [256]]}] }, {"tag_header_old": [[],"1"] }, {"encrypted_header_new": [[], {"array": ["1", [256]]}] }, {"tag_header_new": [[],"1"] }, {"user_key": [[],{ "pointer": "1"}] }, {"user_key_valid": [[],{ "pointer":  {"scalar": "bool"}}] }, {"writing_done_in": [[], {"scalar": "bool"}] }, {"derived_key_out": [[],{ "pointer": "1"}] }, {"derived_key_valid": [[],{ "pointer":  {"scalar": "bool"}}] }, {"master_key_out": [[],{ "pointer": "1"}] }, {"master_key_out_valid": [[],{ "pointer":  {"scalar": "bool"}}] }, {"iv_out": [[],"1"] }, {"iv_out_valid": [[],{ "pointer":  {"scalar": "bool"}}] }, {"decrypted_new_header_out": [[],{ "pointer":  {"scalar": "bool"}}] }, {"decrypted_new_header_out_valid": [[],{ "pointer":  {"scalar": "bool"}}] }, {"reset_key_out": [[],{ "pointer":  {"scalar": "bool"}}] }],[],""], 
"0": [ "ap_uint<128>", {"struct": [[],[{"_AP_W":[[], {"scalar": { "int": 128}}]}],[],""]}], 
"1": [ "ap_uint<128>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 128}}]],""]}}]
}}
set moduleName secure_enclave_key_store
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {secure_enclave_key_store}
set C_modelType { void 0 }
set C_modelArgList {
	{ device_key_ocm_addr int 32 regular  }
	{ ocm_V int 128 regular {bus 0}  }
	{ iv_V int 128 regular  }
	{ encrypted_header_old_V int 128 regular {array 256 { 1 3 } 1 1 }  }
	{ tag_header_old_V int 128 regular  }
	{ encrypted_header_new_V int 128 regular {array 256 { 1 3 } 1 1 }  }
	{ tag_header_new_V int 128 regular  }
	{ user_key_V int 128 regular {pointer 0}  }
	{ user_key_valid int 1 regular {pointer 2}  }
	{ writing_done_in uint 1 unused  }
	{ derived_key_out_V int 128 regular {pointer 1}  }
	{ derived_key_valid int 1 regular {pointer 1}  }
	{ master_key_out_V int 128 regular {pointer 1}  }
	{ master_key_out_valid int 1 regular {pointer 1}  }
	{ iv_out_V int 128 unused  }
	{ iv_out_valid int 1 regular {pointer 1}  }
	{ decrypted_new_header_out int 1 regular {pointer 1}  }
	{ decrypted_new_header_out_valid int 1 regular {pointer 1}  }
	{ reset_key_out int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "device_key_ocm_addr", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "device_key_ocm_addr","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ocm_V", "interface" : "bus", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "ocm.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "iv_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "iv.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "encrypted_header_old_V", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "encrypted_header_old.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "tag_header_old_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "tag_header_old.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "encrypted_header_new_V", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "encrypted_header_new.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "tag_header_new_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "tag_header_new.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "user_key_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "user_key.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "user_key_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "user_key_valid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "writing_done_in", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "writing_done_in","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "derived_key_out_V", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "derived_key_out.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "derived_key_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "derived_key_valid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "master_key_out_V", "interface" : "wire", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "master_key_out.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "master_key_out_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "master_key_out_valid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "iv_out_V", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "iv_out.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "iv_out_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "iv_out_valid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "decrypted_new_header_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "decrypted_new_header_out","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "decrypted_new_header_out_valid", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "decrypted_new_header_out_valid","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset_key_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "reset_key_out","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ device_key_ocm_addr sc_in sc_lv 32 signal 0 } 
	{ device_key_ocm_addr_ap_vld sc_in sc_logic 1 invld 0 } 
	{ ocm_V_req_din sc_out sc_logic 1 signal 1 } 
	{ ocm_V_req_full_n sc_in sc_logic 1 signal 1 } 
	{ ocm_V_req_write sc_out sc_logic 1 signal 1 } 
	{ ocm_V_rsp_empty_n sc_in sc_logic 1 signal 1 } 
	{ ocm_V_rsp_read sc_out sc_logic 1 signal 1 } 
	{ ocm_V_address sc_out sc_lv 32 signal 1 } 
	{ ocm_V_datain sc_in sc_lv 128 signal 1 } 
	{ ocm_V_dataout sc_out sc_lv 128 signal 1 } 
	{ ocm_V_size sc_out sc_lv 32 signal 1 } 
	{ iv_V sc_in sc_lv 128 signal 2 } 
	{ iv_V_ap_vld sc_in sc_logic 1 invld 2 } 
	{ encrypted_header_old_V_address0 sc_out sc_lv 8 signal 3 } 
	{ encrypted_header_old_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ encrypted_header_old_V_q0 sc_in sc_lv 128 signal 3 } 
	{ tag_header_old_V sc_in sc_lv 128 signal 4 } 
	{ tag_header_old_V_ap_vld sc_in sc_logic 1 invld 4 } 
	{ encrypted_header_new_V_address0 sc_out sc_lv 8 signal 5 } 
	{ encrypted_header_new_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ encrypted_header_new_V_q0 sc_in sc_lv 128 signal 5 } 
	{ tag_header_new_V sc_in sc_lv 128 signal 6 } 
	{ tag_header_new_V_ap_vld sc_in sc_logic 1 invld 6 } 
	{ user_key_V sc_in sc_lv 128 signal 7 } 
	{ user_key_valid_i sc_in sc_logic 1 signal 8 } 
	{ user_key_valid_o sc_out sc_logic 1 signal 8 } 
	{ writing_done_in sc_in sc_logic 1 signal 9 } 
	{ derived_key_out_V sc_out sc_lv 128 signal 10 } 
	{ derived_key_valid sc_out sc_logic 1 signal 11 } 
	{ master_key_out_V sc_out sc_lv 128 signal 12 } 
	{ master_key_out_valid sc_out sc_logic 1 signal 13 } 
	{ iv_out_V sc_in sc_lv 128 signal 14 } 
	{ iv_out_valid sc_out sc_logic 1 signal 15 } 
	{ decrypted_new_header_out sc_out sc_logic 1 signal 16 } 
	{ decrypted_new_header_out_valid sc_out sc_logic 1 signal 17 } 
	{ reset_key_out sc_out sc_logic 1 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "device_key_ocm_addr", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "device_key_ocm_addr", "role": "default" }} , 
 	{ "name": "device_key_ocm_addr_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "device_key_ocm_addr", "role": "ap_vld" }} , 
 	{ "name": "ocm_V_req_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ocm_V", "role": "req_din" }} , 
 	{ "name": "ocm_V_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ocm_V", "role": "req_full_n" }} , 
 	{ "name": "ocm_V_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ocm_V", "role": "req_write" }} , 
 	{ "name": "ocm_V_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ocm_V", "role": "rsp_empty_n" }} , 
 	{ "name": "ocm_V_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ocm_V", "role": "rsp_read" }} , 
 	{ "name": "ocm_V_address", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ocm_V", "role": "address" }} , 
 	{ "name": "ocm_V_datain", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ocm_V", "role": "datain" }} , 
 	{ "name": "ocm_V_dataout", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ocm_V", "role": "dataout" }} , 
 	{ "name": "ocm_V_size", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ocm_V", "role": "size" }} , 
 	{ "name": "iv_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "iv_V", "role": "default" }} , 
 	{ "name": "iv_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "iv_V", "role": "ap_vld" }} , 
 	{ "name": "encrypted_header_old_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "encrypted_header_old_V", "role": "address0" }} , 
 	{ "name": "encrypted_header_old_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encrypted_header_old_V", "role": "ce0" }} , 
 	{ "name": "encrypted_header_old_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "encrypted_header_old_V", "role": "q0" }} , 
 	{ "name": "tag_header_old_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tag_header_old_V", "role": "default" }} , 
 	{ "name": "tag_header_old_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "tag_header_old_V", "role": "ap_vld" }} , 
 	{ "name": "encrypted_header_new_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "encrypted_header_new_V", "role": "address0" }} , 
 	{ "name": "encrypted_header_new_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "encrypted_header_new_V", "role": "ce0" }} , 
 	{ "name": "encrypted_header_new_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "encrypted_header_new_V", "role": "q0" }} , 
 	{ "name": "tag_header_new_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tag_header_new_V", "role": "default" }} , 
 	{ "name": "tag_header_new_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "tag_header_new_V", "role": "ap_vld" }} , 
 	{ "name": "user_key_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "user_key_V", "role": "default" }} , 
 	{ "name": "user_key_valid_i", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "user_key_valid", "role": "i" }} , 
 	{ "name": "user_key_valid_o", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "user_key_valid", "role": "o" }} , 
 	{ "name": "writing_done_in", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "writing_done_in", "role": "default" }} , 
 	{ "name": "derived_key_out_V", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "derived_key_out_V", "role": "default" }} , 
 	{ "name": "derived_key_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "derived_key_valid", "role": "default" }} , 
 	{ "name": "master_key_out_V", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "master_key_out_V", "role": "default" }} , 
 	{ "name": "master_key_out_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "master_key_out_valid", "role": "default" }} , 
 	{ "name": "iv_out_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "iv_out_V", "role": "default" }} , 
 	{ "name": "iv_out_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iv_out_valid", "role": "default" }} , 
 	{ "name": "decrypted_new_header_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decrypted_new_header_out", "role": "default" }} , 
 	{ "name": "decrypted_new_header_out_valid", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "decrypted_new_header_out_valid", "role": "default" }} , 
 	{ "name": "reset_key_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reset_key_out", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "50", "72", "93"], "CDFG" : "secure_enclave_key_store", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "device_key_ocm_addr", "Type" : "Vld", "Direction" : "I", "BlockSignal" : [
			{"Name" : "device_key_ocm_addr_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "ocm_V", "Type" : "Bus", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "iv_V", "Type" : "Vld", "Direction" : "I", "BlockSignal" : [
			{"Name" : "iv_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "encrypted_header_old_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "tag_header_old_V", "Type" : "Vld", "Direction" : "I", "BlockSignal" : [
			{"Name" : "tag_header_old_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "encrypted_header_new_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "tag_header_new_V", "Type" : "Vld", "Direction" : "I", "BlockSignal" : [
			{"Name" : "tag_header_new_V_blk_n", "Type" : "RtlSignal"}], "SubConnect" : []}, 
		{"Name" : "user_key_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "user_key_valid", "Type" : "None", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "writing_done_in", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "derived_key_out_V", "Type" : "None", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "derived_key_valid", "Type" : "None", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "master_key_out_V", "Type" : "None", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "master_key_out_valid", "Type" : "None", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "iv_out_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "iv_out_valid", "Type" : "None", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "decrypted_new_header_out", "Type" : "None", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "decrypted_new_header_out_valid", "Type" : "None", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "reset_key_out", "Type" : "None", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "sboxes_0", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_0"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_0"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_0"}]}, 
		{"Name" : "sboxes_1", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_1"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_1"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_1"}]}, 
		{"Name" : "sboxes_2", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_2"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_2"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_2"}]}, 
		{"Name" : "sboxes_3", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_3"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_3"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_3"}]}, 
		{"Name" : "sboxes_4", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_4"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_4"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_4"}]}, 
		{"Name" : "sboxes_5", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_5"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_5"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_5"}]}, 
		{"Name" : "sboxes_6", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_6"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_6"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_6"}]}, 
		{"Name" : "sboxes_7", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_7"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_7"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_7"}]}, 
		{"Name" : "sboxes_8", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_8"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_8"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_8"}]}, 
		{"Name" : "sboxes_9", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_9"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_9"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_9"}]}, 
		{"Name" : "sboxes_10", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_10"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_10"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_10"}]}, 
		{"Name" : "sboxes_11", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_11"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_11"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_11"}]}, 
		{"Name" : "sboxes_12", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_12"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_12"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_12"}]}, 
		{"Name" : "sboxes_13", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_13"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_13"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_13"}]}, 
		{"Name" : "sboxes_14", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_14"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_14"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_14"}]}, 
		{"Name" : "sboxes_15", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_15"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_15"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_15"}]}, 
		{"Name" : "sboxes_16", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_16"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_16"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_16"}]}, 
		{"Name" : "sboxes_17", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_17"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_17"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_17"}]}, 
		{"Name" : "sboxes_18", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_18"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_18"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_18"}]}, 
		{"Name" : "sboxes_19", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Port" : "sboxes_19"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_fu_503", "Port" : "sboxes_19"}, 
			{"SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Port" : "sboxes_19"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st8_fsm_7", "FSM" : "ap_CS_fsm", "SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403"},
		{"State" : "ap_ST_st10_fsm_9", "FSM" : "ap_CS_fsm", "SubInst" : "grp_secure_enclave_key_store_aes_gcm_d_fu_403"},
		{"State" : "ap_ST_st34_fsm_33", "FSM" : "ap_CS_fsm", "SubInst" : "grp_secure_enclave_key_store_aes_gcm_cipher_fu_452"},
		{"State" : "ap_ST_st31_fsm_30", "FSM" : "ap_CS_fsm", "SubInst" : "grp_secure_enclave_key_store_ghash_iteration_fu_550"},
		{"State" : "ap_ST_st32_fsm_31", "FSM" : "ap_CS_fsm", "SubInst" : "grp_secure_enclave_key_store_ghash_iteration_fu_550"},
		{"State" : "ap_ST_st33_fsm_32", "FSM" : "ap_CS_fsm", "SubInst" : "grp_secure_enclave_key_store_ghash_iteration_fu_550"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypted_header_old_storage_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypted_header_new_storage_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.decrypted_header_storage_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.ct_V_assign_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403", "Parent" : "0", "Child" : ["6", "28", "49"], "CDFG" : "secure_enclave_key_store_aes_gcm_d", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144", "Parent" : "5", "Child" : ["7"], "CDFG" : "secure_enclave_key_store_aes_gcm_cipher", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265", "Parent" : "6", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"], "CDFG" : "secure_enclave_key_store_aes", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_0_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_1_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_2_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_3_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_4_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_5_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_6_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_7_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_8_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_9_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_10_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_11_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_12_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_13_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_14_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_15_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_16_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_17_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_18_U", "Parent" : "7", "Child" : []},
	{"Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_gcm_cipher_fu_144.grp_secure_enclave_key_store_aes_fu_265.sboxes_19_U", "Parent" : "7", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197", "Parent" : "5", "Child" : ["29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"], "CDFG" : "secure_enclave_key_store_aes", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_0_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_1_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_2_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_3_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_4_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_5_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_6_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_7_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_8_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_9_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_10_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_11_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_12_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_13_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_14_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_15_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_16_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_17_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_18_U", "Parent" : "28", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_aes_fu_197.sboxes_19_U", "Parent" : "28", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_d_fu_403.grp_secure_enclave_key_store_ghash_iteration_fu_245", "Parent" : "5", "Child" : [], "CDFG" : "secure_enclave_key_store_ghash_iteration", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "h_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "d_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "x_prev_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452", "Parent" : "0", "Child" : ["51"], "CDFG" : "secure_enclave_key_store_aes_gcm_cipher", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265", "Parent" : "50", "Child" : ["52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"], "CDFG" : "secure_enclave_key_store_aes", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_0_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_1_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_2_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_3_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_4_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_5_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_6_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_7_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_8_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_9_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_10_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_11_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_12_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_13_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_14_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_15_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_16_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_17_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_18_U", "Parent" : "51", "Child" : []},
	{"Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_gcm_cipher_fu_452.grp_secure_enclave_key_store_aes_fu_265.sboxes_19_U", "Parent" : "51", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503", "Parent" : "0", "Child" : ["73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92"], "CDFG" : "secure_enclave_key_store_aes", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
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
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_0_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_1_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_2_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_3_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_4_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_5_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_6_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_7_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_8_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_9_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_10_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_11_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_12_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_13_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_14_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_15_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_16_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_17_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_18_U", "Parent" : "72", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_aes_fu_503.sboxes_19_U", "Parent" : "72", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_secure_enclave_key_store_ghash_iteration_fu_550", "Parent" : "0", "Child" : [], "CDFG" : "secure_enclave_key_store_ghash_iteration", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "h_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "d_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "x_prev_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set Spec2ImplPortList { 
	device_key_ocm_addr { ap_vld {  { device_key_ocm_addr in_data 0 32 }  { device_key_ocm_addr_ap_vld in_vld 0 1 } } }
	ocm_V { ap_bus {  { ocm_V_req_din fifo_data 1 1 }  { ocm_V_req_full_n fifo_status 0 1 }  { ocm_V_req_write fifo_update 1 1 }  { ocm_V_rsp_empty_n fifo_status 0 1 }  { ocm_V_rsp_read fifo_update 1 1 }  { ocm_V_address unknown 1 32 }  { ocm_V_datain unknown 0 128 }  { ocm_V_dataout unknown 1 128 }  { ocm_V_size unknown 1 32 } } }
	iv_V { ap_vld {  { iv_V in_data 0 128 }  { iv_V_ap_vld in_vld 0 1 } } }
	encrypted_header_old_V { ap_memory {  { encrypted_header_old_V_address0 mem_address 1 8 }  { encrypted_header_old_V_ce0 mem_ce 1 1 }  { encrypted_header_old_V_q0 mem_dout 0 128 } } }
	tag_header_old_V { ap_vld {  { tag_header_old_V in_data 0 128 }  { tag_header_old_V_ap_vld in_vld 0 1 } } }
	encrypted_header_new_V { ap_memory {  { encrypted_header_new_V_address0 mem_address 1 8 }  { encrypted_header_new_V_ce0 mem_ce 1 1 }  { encrypted_header_new_V_q0 mem_dout 0 128 } } }
	tag_header_new_V { ap_vld {  { tag_header_new_V in_data 0 128 }  { tag_header_new_V_ap_vld in_vld 0 1 } } }
	user_key_V { ap_none {  { user_key_V in_data 0 128 } } }
	user_key_valid { ap_none {  { user_key_valid_i in_data 0 1 }  { user_key_valid_o out_data 1 1 } } }
	writing_done_in { ap_none {  { writing_done_in in_data 0 1 } } }
	derived_key_out_V { ap_none {  { derived_key_out_V out_data 1 128 } } }
	derived_key_valid { ap_none {  { derived_key_valid out_data 1 1 } } }
	master_key_out_V { ap_none {  { master_key_out_V out_data 1 128 } } }
	master_key_out_valid { ap_none {  { master_key_out_valid out_data 1 1 } } }
	iv_out_V { ap_none {  { iv_out_V in_data 0 128 } } }
	iv_out_valid { ap_none {  { iv_out_valid out_data 1 1 } } }
	decrypted_new_header_out { ap_none {  { decrypted_new_header_out out_data 1 1 } } }
	decrypted_new_header_out_valid { ap_none {  { decrypted_new_header_out_valid out_data 1 1 } } }
	reset_key_out { ap_none {  { reset_key_out out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ ocm_V 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ ocm_V 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

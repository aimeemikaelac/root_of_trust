#include "ap_int.h"

#define SECURE_STORAGE_SIZE 2

int secure_enclave(ap_uint<128> secure_storage_in[SECURE_STORAGE_SIZE],
			 	    ap_uint<128> pin_attempt,
				    ap_uint<128> secure_storage_out[SECURE_STORAGE_SIZE],
				    ap_uint<128> *key_out,
				    unsigned int counter_in,
				    int *increment_counter,
				    int *reset_counter){
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS INTERFACE s_axilite port=reset_counter
#pragma HLS INTERFACE s_axilite port=increment_counter
#pragma HLS INTERFACE ap_vld port=counter_in
#pragma HLS INTERFACE s_axilite port=counter_in
#pragma HLS INTERFACE ap_ovld port=key_out
#pragma HLS INTERFACE ap_ovld port=secure_storage_out
#pragma HLS INTERFACE s_axilite port=secure_storage_out
#pragma HLS INTERFACE ap_vld port=pin_attempt
#pragma HLS INTERFACE s_axilite port=pin_attempt
#pragma HLS INTERFACE ap_vld port=secure_storage_in
#pragma HLS INTERFACE s_axilite port=secure_storage_in
	//TODO: decrypt storage again using PUF or some other FPGA-exclusive key
	ap_uint<128> stored_pin = secure_storage_in[0];
	ap_uint<128> encryption_key = secure_storage_in[0];
	ap_uint<128> zero_key(0);
	if(counter_in < 5 && pin_attempt == stored_pin){
		*key_out = encryption_key;
		*reset_counter = 1;
		*increment_counter = 0;
		return 1;
	} else{
		*increment_counter = 1;
		*reset_counter = 0;
		*key_out = zero_key;
		return 0;
	}

}

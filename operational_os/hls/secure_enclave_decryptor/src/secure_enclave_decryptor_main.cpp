#include <ap_int.h>


void aestest(ap_uint<128>*, ap_uint<128>*, ap_uint<128>*);

void secure_enclave_aes_cipher(ap_uint<128> key, ap_uint<128> data_in, ap_uint<128> *data_out, ap_uint<128> counter){
#pragma HLS INTERFACE s_axilite port=counter
#pragma HLS INTERFACE s_axilite port=data_out
#pragma HLS INTERFACE s_axilite port=data_in
#pragma HLS INTERFACE ap_vld port=key
//	aestest(&data_in, &key, data_out);
	ap_uint<128> temp;
	aestest(&counter, &key, &temp);
	*data_out = temp^data_in;
}

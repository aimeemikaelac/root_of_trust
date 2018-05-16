#include "ap_int.h"
#include "string.h"

#define BUFFER_SIZE 0x8000
#define INCREMENT 32

void aestest(ap_uint<128> *inptext, ap_uint<128> *key, ap_uint<128> *outtext);

void filesystem_encrypt(
	ap_uint<128> buffer[BUFFER_SIZE],
	ap_uint<128> iv,
	ap_uint<128> key,
	unsigned int length
){
#pragma HLS INTERFACE ap_vld port=length
#pragma HLS INTERFACE s_axilite port=length
#pragma HLS INTERFACE ap_none port=key
#pragma HLS INTERFACE ap_none port=iv
#pragma HLS INTERFACE s_axilite port=iv
#pragma HLS INTERFACE m_axi depth=2048 port=buffer
	int i, j;
	ap_uint<128> buffer_temp[INCREMENT];
	ap_uint<128> buffer_temp_out[INCREMENT];
	for(i=0; i<BUFFER_SIZE; i+=INCREMENT){
#pragma HLS PIPELINE
#pragma HLS dependence variable=buffer inter false

		memcpy(buffer_temp, buffer + i, INCREMENT*sizeof(ap_uint<128>));

		for(j=0; j<INCREMENT; j++){
#pragma HLS UNROLL
#pragma HLS dependence variable=buffer inter false

			if(i + j < length){
				ap_uint<128> counter = iv + i + j;
				ap_uint<128> temp, temp1;
//				temp1 = buffer[i + j];
//				aestest(buffer + i + j, &key, buffer + i +j);
				aestest(&counter, &key, &temp);
//				buffer[i + j] = temp1^temp;
				buffer_temp_out[i + j] = buffer_temp[j]^temp;
			} else{
				break;
			}
		}
		memcpy(buffer + i, buffer_temp_out, INCREMENT*sizeof(ap_uint<128>));
	}
}

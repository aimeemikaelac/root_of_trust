#include "ap_int.h"

void axi_to_128_bit(unsigned char data_in[16], ap_uint<128> *data_out){
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE ap_vld port=data_out
#pragma HLS INTERFACE s_axilite port=data_in
	ap_uint<128> _out = (
			ap_uint<8>(data_in[15]), ap_uint<8>(data_in[14]), ap_uint<8>(data_in[13]), ap_uint<8>(data_in[12]),
			ap_uint<8>(data_in[11]), ap_uint<8>(data_in[10]), ap_uint<8>(data_in[9]), ap_uint<8>(data_in[8]),
			ap_uint<8>(data_in[7]), ap_uint<8>(data_in[6]), ap_uint<8>(data_in[5]), ap_uint<8>(data_in[4]),
			ap_uint<8>(data_in[3]), ap_uint<8>(data_in[2]), ap_uint<8>(data_in[1]), ap_uint<8>(data_in[0])
	);
//	printf("data: %s\n", _out.to_string(16).c_str());
	*data_out = _out;
}

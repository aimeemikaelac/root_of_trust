#include "ap_int.h"
#include "stdio.h"

void axi_to_128_bit(unsigned char data_in[16], ap_uint<128> *data_out);

int main(){
	int i;
	unsigned char data[16];
	for(i=0; i<16; i++){
		data[i] = i;
	}
	ap_uint<128> out;
	ap_uint<128> data_correct("0x0102030405060708090A0B0C0D0E0F", 16);
	axi_to_128_bit(data, &out);
	printf("data out: %s\n", out.to_string(16).c_str());
	if(out != data_correct){
		return -1;
	} else{
		return 0;
	}
}

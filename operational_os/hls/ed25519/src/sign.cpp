#include "ed25519.h"
#include "sha512.h"
#include "ge.h"
#include "sc.h"

#include "stdio.h"


//void ed25519_sign(unsigned char *signature, const unsigned char *message, size_t message_len, const unsigned char *public_key, const unsigned char *private_key) {
void ed25519_sign(unsigned char signature[64], unsigned char microblaze_mem[MICROBLAZE_MEMORY], size_t blocks_in, const unsigned char public_key[32], const unsigned char private_key[64]){
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE ap_vld port=blocks_in
#pragma HLS INTERFACE s_axilite port=blocks_in
#pragma HLS INTERFACE ap_vld port=private_key
#pragma HLS INTERFACE ap_vld port=public_key
#pragma HLS INTERFACE m_axi depth=32768 port=microblaze_mem
#pragma HLS INTERFACE s_axilite port=signature
#pragma HLS INTERFACE s_axilite port=public_key
#pragma HLS INTERFACE s_axilite port=private_key

#pragma HLS ALLOCATION instances=ge_scalarmult_base limit=1 function
#pragma HLS ALLOCATION instances=fe_invert limit=1 function
#pragma HLS ALLOCATION instances=ge_p1p1_to_p3 limit=1 function
#pragma HLS ALLOCATION instances=ge_p1p1_to_p2 limit=1 function
#pragma HLS ALLOCATION instances=ge_p2_dbl limit=1 function
#pragma HLS ALLOCATION instances=ge_madd limit=1 function
#pragma HLS ALLOCATION instances=select limit=1 function
#pragma HLS ALLOCATION instances=sha512_update_32 limit=1 function
#pragma HLS ALLOCATION instances=sha512_update_128 limit=1 function
#pragma HLS ALLOCATION instances=sha512_final limit=1 function
	int i;
    sha512_context hash;
    unsigned char hram[64];
    unsigned char r[64];
    unsigned char temp_data[SHA512_BLOCK_SIZE];
    unsigned int current_block, current_byte;
    ge_p3 R;


    sha512_init(&hash);
//    sha512_update(&hash, private_key + 32, 32);
    sha512_update_32(&hash, private_key + 32);
    for(current_block=0; current_block<blocks_in; current_block++){
    	for(current_byte=0; current_byte<SHA512_BLOCK_SIZE; current_byte++){
//    		temp_data[current_byte] = message_in.read();
    		//TODO: also write out here to microblaze stream
    		temp_data[current_byte] = microblaze_mem[current_block*SHA512_BLOCK_SIZE + current_byte];
    	}
    	sha512_update_128(&hash, temp_data);
    }
//    sha512_update(&hash, message, message_len);
    sha512_final(&hash, r);

    printf("R:\n");
    for(i=0; i<64; i++){
    	printf("%02x", r[i]);
    }
    printf("\n");
//
    sc_reduce(r);
    ge_scalarmult_base(&R, r);
    ge_p3_tobytes(signature, &R);
//
    sha512_init(&hash);
//    sha512_update(&hash, signature, 32);
    sha512_update_32(&hash, signature);
//    sha512_update(&hash, public_key, 32);
    sha512_update_32(&hash, public_key);
//    sha512_update(&hash, message, message_len);
    for(current_block=0; current_block<blocks_in; current_block++){
		for(current_byte=0; current_byte<SHA512_BLOCK_SIZE; current_byte++){
//    		temp_data[current_byte] = message_in.read();
			//TODO: also write out here to microblaze stream
			temp_data[current_byte] = microblaze_mem[current_block*SHA512_BLOCK_SIZE + current_byte];
		}
		sha512_update_128(&hash, temp_data);
	}
    sha512_final(&hash, hram);
//
    sc_reduce(hram);
    sc_muladd(signature + 32, hram, private_key, r);
}

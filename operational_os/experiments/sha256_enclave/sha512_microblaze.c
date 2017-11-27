#include "microblaze_protocol_header.h"
#include "sha512.h"

sha512_context context;

void sha512_run_init(){
  sha512_init(&context);
}

void sha512_run_update(unsigned char *data_in, int *data_len){
  // int i;
  int length = *data_len;
  // unsigned char data[0x400], hash_result[0x40];
  // for(i=0; i<length; i++){
  //   data[i] = data_in[i];
  // }
  // sha512_update(&context, (const unsigned char*)data, length);
  sha512_update(&context, data_in, length);
}

void sha512_run_final(unsigned char *hash_out){
  sha512_final(&context, hash_out);
}

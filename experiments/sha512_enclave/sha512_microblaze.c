// #include "microblaze_protocol_header.h"
#include "sha512.h"

sha512_context context;

void sha512_run_init(){
  sha512_init(&context);
}

void sha512_run_update(unsigned char *data_in){
  int i;
  // int length = *data_len;
  // unsigned char data[0x400], hash_result[0x40];
  unsigned char block[0x80];
  for(i=0; i<0x80; i++){
    block[i] = data_in[i];
  }
  // sha512_update(&context, (const unsigned char*)data, length);
  sha512_update(&context, block, 0x80);
}

void sha512_run_final(unsigned char *hash_out){
  int i;
  unsigned char out[0x40];
  sha512_final(&context, out);
  for(i=0; i<0x40; i++){
    hash_out[i] = out[i];
  }
}

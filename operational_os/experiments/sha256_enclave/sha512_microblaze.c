#include "microblaze_protocol_header.h"
#include "sha512.h"

void sha512_run(unsigned char *data_in, int *data_len, unsigned char *hash_out){
  int i;
  unsigned char data[0x3000], hash_result[0x40];
  for(i=0; i<*data_len; i++){
    data[i] = data_in[i];
  }
  // sha512((const unsigned char*)data, *data_len, hash_result);
  for(i=0; i<0x40; i++){
    hash_out[i] = 0xFF;
  }
}

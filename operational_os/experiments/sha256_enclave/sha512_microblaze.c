#include "microblaze_protocol_header.h"
#include "sha512.h"

void sha512_run(unsigned char *data_in, int *data_len, unsigned char *hash_out){
  int i, length = *data_len;
  unsigned char data[0x1000], hash_result[0x40];
  for(i=0; i<length; i++){
    data[i] = data_in[i];
  }
  if(sha512((const unsigned char*)data, *data_len, hash_result) == 0){
    for(i=0; i<0x40; i++){
      hash_out[i] = data[i];
    }
  } else{
    for(i=0; i<0x40; i++){
      hash_out[i] = 0xFF;
    }
  }
}

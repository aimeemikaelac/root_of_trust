#include "microblaze_protocol_header.h"
#include "sha512.h"

void sha512_run(unsigned char *data_in, int *data_len, unsigned char *hash_out){
  sha512((const unsigned char*)data_in, *data_len, hash_out);
}

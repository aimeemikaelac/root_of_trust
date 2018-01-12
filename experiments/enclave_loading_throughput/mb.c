#include "mb.h"
#include "sha512.h"

void hash_buffer(unsigned char *out){
  sha512(static_data,static_data_size, out);
}

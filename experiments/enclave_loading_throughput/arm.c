#include "stdio.h"
#include "enclave_library.h"
#include "arm_protocol_header.h"

int main(int argc, char **argv){
  if(argc != 2){
    fprintf(stderr, "File load into enclave required\n");
    return -1;
  }
  char* filename = argv[1];
  return enclave_init_with_file(filename);
}

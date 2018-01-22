#ifndef ENCLAVE_LIBRARY_H
#define ENCLAVE_LIBRARY_H

#ifdef __cplusplus
extern "C" {
#endif

#define DEFAULT_MICROBLAZE_BINARY "microblaze_code.bin"

#define HASH_BLOCK_SIZE 0x80
#define PROGRAMMING_DATA_OFFSET 0x100

#include "ed25519.h"
#include "sha512.h"

int enclave_init();
int enclave_init_with_file(char const *filename);
void initialize_hardware();


#ifdef __cplusplus
}
#endif

#endif

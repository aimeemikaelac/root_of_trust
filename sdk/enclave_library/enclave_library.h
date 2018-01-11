#ifndef ENCLAVE_LIBRARY_H
#define ENCLAVE_LIBRARY_H

#ifdef __cplusplus
extern "C" {
#endif

#define DEFAULT_MICROBLAZE_BINARY "microblaze_code.bin"

int enclave_init();
int enclave_init_with_file(char const *filename);


#ifdef __cplusplus
}
#endif

#endif

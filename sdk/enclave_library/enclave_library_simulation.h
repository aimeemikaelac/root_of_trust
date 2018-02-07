#ifndef ENCLAVE_LIBRARY_SIMULATION_H
#define ENCLAVE_LIBRARY_SIMULATION_H

#ifdef __cplusplus
extern "C" {
#endif

#include "enclave_library_hardware.h"

#ifndef SIMULATION
#define SIMULATION
#endif

static const char default_private_key_file[] = "server_private_key_dev.bin";
// static unsigned char shared_secret[0x20];
static unsigned char private_key[0x20];
static unsigned char private_key_hash[0x40];
static unsigned char public_key[0x20];
static unsigned char hash[0x40];
static unsigned char session_private_key_hash[0x40];
static unsigned char session_public_key[0x20];

int enclave_init_simulation(char const *filename, char const *private_key);

#ifdef __cplusplus
}
#endif

#endif

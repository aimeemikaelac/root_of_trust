#ifndef CONTACT_DISCOVERY_UTILS_H
#define CONTACT_DISCOVERY_UTILS_H

#include "unistd.h"
#include "stdio.h"
#include <stdlib.h>
#include <sys/syscall.h>
#include "sha512.h"
#include "string.h"
#include <string>
#include <set>
#include <vector>
#include "assert.h"
#include "time.h"
#include "fixedint.h"
#include "user_mmap_driver.h"

//#define DATABASE_CHUNK_SIZE 300
#define CONTACTS_SIZE 128

#define CONTACT_DISCOVERY_BASE 0xA0000000
#define CONTACT_DISCOVERY_BASE_1 0xA0010000
//#define INPUT_MAPPER_BASE 0xB0010000
#define RESULTS_MAPPER_BASE 0xB0030000
#define RESULTS_BUFFER 0xB0100000
#define RESULTS_BUFFER_1 0xB0200000
// #define RESULTS_BUFFER_FPGA 0xC0000000
//#define FPGA_RAM_LOWER 0x00000000
//#define FPGA_RAM_UPPER 0x00000004
//#define RAM_BUFFER 0x400000000
//#define TRANSFER_MAX 8388608
//#define OFFSET_HASHES 268435456
#define LOAD_BUFFER 0xB0000000
#define CDMA_BASE 0xB0010000
#define TRANSFER_SOURCE 0xB0000000
#define TRANSFER_DESTINATION_BASE 0x00000000
#define TRANSFER_SIZE 0x2000

typedef struct number{
  unsigned char num[10];
} number;

typedef struct CD_CONTEXT{
  number *numbers;
  unsigned long long numbers_length;
  unsigned char *db_hashes;
  unsigned long long db_hashes_length;
  std::set<std::string> contacts;
  bool *matched_out;
  unsigned long long matched_out_length;
  bool *matched_correct;
  unsigned long long matched_correct_length;
  unsigned int seed;
  unsigned long long database_size;
  unsigned int error_out;
  unsigned int contacts_size_out;
  unsigned int num_matched;
  unsigned int num_unmatched;
} CD_CONTEXT;

void contact_discovery(
  CD_CONTEXT *context,
  int operation,
  unsigned char contact_in[64]
);

int initialize(CD_CONTEXT *context, unsigned long long database_size);

void cleanup(CD_CONTEXT *context);

void generate_numbers(CD_CONTEXT *context);

void hash_numbers(CD_CONTEXT *context);

void transfer_buffer(long long transfer_offset);

void setup_experiment(CD_CONTEXT *context);

void run_match_fpga(CD_CONTEXT *context);

void run_software_match(CD_CONTEXT *context);

void count_results(CD_CONTEXT *context);

#endif

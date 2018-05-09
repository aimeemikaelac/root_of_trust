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
#define DATABASE_SIZE 30000

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



void contact_discovery(
  int operation,
  unsigned char contact_in[64],
  unsigned int db_size,
  bool *matched_out,
  int *error_out,
  int *contacts_size_out
){
  int i, j;
  volatile unsigned char *control, *control_1;
  unsigned int results_val, dma_status;
  unsigned int first_length, second_length, remaining, dma_offset=0;
  shared_memory control_mem = getSharedMemoryArea(CONTACT_DISCOVERY_BASE, 0x1000);
  shared_memory control_mem_1 = getSharedMemoryArea(CONTACT_DISCOVERY_BASE_1, 0x1000);
  control = (volatile unsigned char*)(control_mem->ptr);
  control_1 = (volatile unsigned char*)(control_mem->ptr);

  //set operation
  control[0x10] = operation;
  control_1[0x10] = operation;
  //load contact
  if(operation == 0){
    for(i=0; i<64/4; i++){
      writeValueToAddress(((unsigned int*)contact_in)[i], CONTACT_DISCOVERY_BASE + 0x18 + i*4);
      writeValueToAddress(((unsigned int*)contact_in)[i], CONTACT_DISCOVERY_BASE_1 + 0x18 + i*4);
    }
  }
  //run match
  // detect if transfer size is too large, e.g. > 2^23
//  if(db_size*64 > TRANSFER_MAX){
//    first_length = TRANSFER_MAX;
//    remaining = db_size - TRANSFER_MAX;
//  } else{
//    first_length = db_size;
//    remaining = 0;
//  }
  if(operation == 1){
//  printf("starting mapper programming\n");
    // program input stream
    //reset MM2s
    // writeValueToAddress(4, INPUT_MAPPER_BASE + 0x0);
    // //enable MM2s
    // writeValueToAddress(1, INPUT_MAPPER_BASE + 0x0);
    // //set MM2S lower address bits
    // writeValueToAddress(FPGA_RAM_LOWER + dma_offset, INPUT_MAPPER_BASE + 0x18);
    // //set MM2s upper address bits
    // writeValueToAddress(FPGA_RAM_UPPER, INPUT_MAPPER_BASE + 0x1C);
    // //set length for transfer -> db_size*64
    // writeValueToAddress(first_length*64, INPUT_MAPPER_BASE + 0x28);
    // dma_offset += first_length*64;
    // program output stream
    //reset S2MM
    // writeValueToAddress(4, RESULTS_MAPPER_BASE + 0x30);
    //enable S2MM
    // writeValueToAddress(1, RESULTS_MAPPER_BASE + 0x30);
    //set S2MM lower address bits
    // writeValueToAddress(RESULTS_BUFFER_FPGA, RESULTS_MAPPER_BASE + 0x48);
    //set length for transfer -> db_size*4
    // writeValueToAddress(db_size, RESULTS_MAPPER_BASE + 0x58);
  //  printf("finished mapper programming\n");
    //write dma_offset
    unsigned long long offset_1 = db_size/2;
    writeValueToAddress(0, CONTACT_DISCOVERY_BASE + 0x5c);
    writeValueToAddress(0, CONTACT_DISCOVERY_BASE + 0x60);
    writeValueToAddress(offset_1, CONTACT_DISCOVERY_BASE_1 + 0x5c);
    writeValueToAddress(0, CONTACT_DISCOVERY_BASE_1 + 0x60);
    //write db size
    writeValueToAddress(db_size/2, CONTACT_DISCOVERY_BASE + 0x68);
    writeValueToAddress(db_size/2, CONTACT_DISCOVERY_BASE_1 + 0x68);
  }
  //start current call
  control[0x0] = 1;
  control_1[0x0] = 1;
  //set operation valid
  control[0x14] = 1;
  control_1[0x14] = 1;
  //wait for done
  while(control[0] & 0x2 != 1){
    asm("");
    __asm__("");
    // while(remaining > 0){
    //   // wait for tranfer to finished -> DMA status is idle
    //   getValueAtAddress(INPUT_MAPPER_BASE + 0x4, &dma_status);
    //   while((dma_status & 0x2) == 0){
    //     getValueAtAddress(INPUT_MAPPER_BASE + 0x4, &dma_status);
    //   }
    //   if(remaining*64 > TRANSFER_MAX){
    //     second_length = TRANSFER_MAX;
    //     remaining = remaining - TRANSFER_MAX;
    //   } else{
    //     second_length = remaining;
    //     remaining = 0;
    //   }
    //   //reset MM2s
    //   writeValueToAddress(4, INPUT_MAPPER_BASE + 0x0);
    //   //enable MM2s
    //   writeValueToAddress(1, INPUT_MAPPER_BASE + 0x0);
    //   //set MM2S lower address bits
    //   writeValueToAddress(FPGA_RAM_LOWER, INPUT_MAPPER_BASE + 0x18);
    //   //set MM2s upper address bits
    //   writeValueToAddress(FPGA_RAM_UPPER, INPUT_MAPPER_BASE + 0x1C);
    //   //set length for transfer -> db_size*64
    //   writeValueToAddress(second_length*64, INPUT_MAPPER_BASE + 0x28);
    //   dma_offset += second_length*64;
    // }
  }
  while(control_1[0] & 0x2 != 1){
    asm("");
    __asm__("");
  }
  *error_out = *((unsigned int*)(control + 0x70)) || *((unsigned int*)(control_1 + 0x70));
  assert(*((unsigned int*)(control + 0x70)) == *((unsigned int*)(control_1 + 0x70)));
  *contacts_size_out = *((unsigned int*)(control + 0x78));
  //read match result
  if(operation == 1){
    // wait for output stream to finish
    unsigned int results_buffer_status;
    printf("Reading results\n");
    for(i=0; i<db_size/8; i++){
      getValueAtAddress(RESULTS_BUFFER + i*4, &results_val);
//      printf("Result %i: %08x\n", i, results_val);
      bool *results_buffer = (bool*)&results_val;
      for(j=0; j<4; j++){
        matched_out[i*4 + j] = results_buffer[j];
      }
    }
    for(i=0; i<db_size/8; i++){
      getValueAtAddress(RESULTS_BUFFER_1 + i*4, &results_val);
//      printf("Result %i: %08x\n", i, results_val);
      bool *results_buffer = (bool*)&results_val;
      for(j=0; j<4; j++){
        matched_out[db_size/2 + i*4 + j] = results_buffer[j];
      }
    }
    printf("Finished reading results\n");
  }
  cleanupSharedMemoryPointer(control_mem);
  cleanupSharedMemoryPointer(control_mem_1);
}


typedef struct number{
  unsigned char num[10];
} number;


number numbers[DATABASE_SIZE];

unsigned char db_hashes[64*DATABASE_SIZE];

static std::set<std::string> contacts;

void generate_numbers(){
  int i, j;
  number current_num;

  for(i=0; i<DATABASE_SIZE; i++){
    current_num = numbers[i];
    for(j=0; j<10; j++){
      int current_rand = rand()%10;
      current_num.num[j] = current_rand;
    }
    numbers[i] = current_num;
  }
}

void hash_numbers(){
  int i, j;
  number current_num;
  unsigned char temp[128];
  unsigned char hash_out[64];
  memset(temp, 0, 128);
  memset(hash_out, 0, 64);
  sha512_context context;

  for(i=0; i<DATABASE_SIZE; i++){
    current_num = numbers[i];
    for(j=0; j<10; j++){
      temp[j] = current_num.num[j];
    }
    sha512_init(&context);
    sha512_update(&context, temp, 128);
    sha512_final(&context, hash_out);
    memcpy(db_hashes + i*64, hash_out, 64);
  }
}

void transfer_buffer(long long transfer_offset){
  unsigned int cdma_status;
  //verify CDMASR.IDLE = 1
  cdma_status = 0;
  while(cdma_status & 0x2 == 0){
    getValueAtAddress(CDMA_BASE + 0x4, &cdma_status);
  }
  //write source address
  writeValueToAddress(TRANSFER_SOURCE, CDMA_BASE + 0x18);
  writeValueToAddress(0, CDMA_BASE + 0x1C);
  //write dest address
  writeValueToAddress((unsigned int)(transfer_offset), CDMA_BASE + 0x20);
  writeValueToAddress((unsigned int)(transfer_offset >> 32), CDMA_BASE + 0x24);
//  printf("Destination address: %08x\n", (unsigned int)(transfer_offset));
//  printf("Destination address msb: %08x\n", (unsigned int)(transfer_offset >> 32));
  //write transfer length
  writeValueToAddress(TRANSFER_SIZE, CDMA_BASE + 0x28);
  while(cdma_status & 0x2 == 0){
    getValueAtAddress(CDMA_BASE + 0x4, &cdma_status);
  }
}


int main(){
  unsigned int seed;
  long long i;
  int j, random_index, num_matched = 0, num_unmatched = 0;
  volatile unsigned char contact_in[64];
  volatile unsigned char database_in[64];
  bool matched_out[DATABASE_SIZE], matched_correct[DATABASE_SIZE];
  volatile int matched_finished, error_out, database_size_out, contacts_size_out;


  // generate random database
  if(syscall(SYS_getrandom, (unsigned char*)(&seed), 4, 0) < 0){
    fprintf(stderr, "Error getting random seed\n");
    return -1;
  }

  printf("Generating numbers database\n");

  generate_numbers();

  hash_numbers();

  printf("Generating contacts\n");

  //select a random numbers to be contacts
  while(contacts.size() < CONTACTS_SIZE){
    random_index = rand() % DATABASE_SIZE;
    unsigned char temp[64];
    for(j=0; j<64; j++){
      temp[j] = db_hashes[random_index*64 + j];
    }
    std::string current((char*)temp, 64);
    if(contacts.count(current) > 0){
      continue;
    } else{
      contacts.insert(current);
    }
  }

  printf("Populating db stream\n");
  int buffer_index = 0;
  long long transfer_offset = 0;
  for(i=0; i<DATABASE_SIZE*64/4; i++){
    writeValueToAddress(((unsigned int*)db_hashes)[i], LOAD_BUFFER + buffer_index);
    buffer_index += 4;
    if(buffer_index >= TRANSFER_SIZE){
      transfer_buffer(transfer_offset);
      buffer_index = 0;
      transfer_offset += TRANSFER_SIZE;
    }
  }
  transfer_buffer(transfer_offset);


  printf("Checking initial conditions\n");
  //check initial conditions of clearing contacts
  contact_discovery(
    2,
    (unsigned char*)NULL,
    0,
    matched_out,
    (int*)&error_out,
    (int*)&contacts_size_out
  );
  assert(error_out == 0);
  assert(contacts_size_out == 0);


  printf("Populating contacts\n");
  //populate contacts
  std::set<std::string>::iterator it;
  int contacts_size = 0;
  for(it = contacts.begin(); it != contacts.end(); ++it){
  std::string current = *it;
    contact_discovery(
      0,
      (unsigned char*)current.data(),
      0,
      matched_out,
      (int*)&error_out,
      (int*)&contacts_size_out
    );
    contacts_size++;
    assert(error_out == 0);
    assert(contacts_size_out == contacts_size);
  }

  printf("Running Match\n");
  contact_discovery(
    1,
    NULL,
    DATABASE_SIZE,
    matched_out,
    (int*)&error_out,
    (int*)&contacts_size_out
  );
  assert(error_out == 0);
  printf("Matched finished\n");

  for(i=0; i<DATABASE_SIZE; i++){
    unsigned char current_hash[64];
    memcpy(current_hash, db_hashes + i*64, 64);
    std::string current((char*)(current_hash), 64);
    matched_correct[i] = (contacts.count(current) > 0);
  }


  for(j=0; j<DATABASE_SIZE; j++){
    assert(matched_out[j] == matched_correct[j]);
    if(matched_out[j]){
      num_matched++;
    } else{
      num_unmatched++;
    }
  }
  printf("Contacts match %i, unmatched %i\n", num_matched, num_unmatched);

  return 0;
}

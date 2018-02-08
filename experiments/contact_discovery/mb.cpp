#include <string>
#include <unordered_set>
#include "stdio.h"
#include "aes.h"

#define ENCLAVE_DATABASE_HASHES 32
static char contacts[ENCLAVE_DATABASE_HASHES*64];

extern unsigned char shared_secret[0x20];

//function to receive encrypted phone number hashes
extern "C" void enclave_build_contacts_hash(
  unsigned char transfer[ENCLAVE_DATABASE_HASHES*64],
  int transfer_length[1]
){
  int i, j, transfer_index = 0;
  unsigned char temp[64];
  for(i=0; i<transfer_length[0]; i++){
    //TODO: decrypt contacts
    for(j=0; j<64; j+=16){
      AES_ECB_decrypt(transfer + transfer_index + j, shared_secret, (unsigned char*)(contacts + transfer_index + j), 16);
    }
    // std::string current((char*)temp, 64);
    // printf("Adding hash: 0x");
    // for(int j=0; j<64; j++){
    //   printf("%02x", (unsigned char)current.data()[j]);
    // }
    // printf("\n");
    // contacts.insert(current);
    transfer_index += 64;
  }
}

//function to process a part of the database against the uploaded hashses
extern "C" void enclave_match_chunk(
  unsigned char transfer[ENCLAVE_DATABASE_HASHES*64],
  int transfer_length[1],
  int results_indexes[ENCLAVE_DATABASE_HASHES],
  int results_count[1]
){
  int i, j, k, transfer_index = 0, results_index = 0, found = 0;
  for(i=0; i<transfer_length[0]; i++){
    // std::string current((char*)transfer + transfer_index, 64);
    // if(contacts.count(current) > 0){
    //   // printf("Matched this hash: 0x");
    //   // for(int j=0; j<64; j++){
    //   //   printf("%02x", (unsigned char)current.data()[j]);
    //   // }
    //   // printf("\n");
    //   results_indexes[results_index] = i;
    //   results_index++;
    // }
    found = 0;
    for(j=0; j<ENCLAVE_DATABASE_HASHES; j++){
      if(found == 1){
        break;
      }
      for(k=0; k<64; k++){
        found = 1;
        if(transfer[transfer_index + k] != contacts[j*64 + k]){
          found = 0;
          break;
        }
      }
    }
    if(found == 1){
      results_indexes[results_index] = i;
      results_index++;
    }
    transfer_index += 64;
  }
  results_count[0] = results_index;
}

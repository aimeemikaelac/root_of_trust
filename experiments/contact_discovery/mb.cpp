#include <string>
#include <unordered_set>

#define ENCLAVE_DATABASE_HASHES 6
static std::set<std::string> contacts;

//function to receive encrypted phone number hashes
void enclave_build_contacts_hash(
  unsigned char transfer[ENCLAVE_DATABASE_HASHES*6],
  int transfer_length[1]
){
  int i, transfer_index = 0;
  for(i=0; i<transfer_length[0]; i++){
    //TODO: decrypt contacts
    std::string current((char*)transfer + transfer_index, 512);
    contacts.insert(current);
    transfer_index += 512;
  }
}

//function to process a part of the database against the uploaded hashses
void enclave_match_chunk(
  unsigned char transfer[ENCLAVE_DATABASE_HASHES*6],
  int transfer_length[1],
  int results_indexes[ENCLAVE_DATABASE_HASHES],
  int results_count[1]
){
  int i, transfer_index = 0, results_index = 0;
  for(i=0; i<transfer_length[0]; i++){
    std::string current((char*)transfer + transfer_index, 512);
    if(contacts.count(current) > 0){
      results_indexes[result_index] = i;
      results_index++;
    }
  }
  results_count[0] = results_index;
}

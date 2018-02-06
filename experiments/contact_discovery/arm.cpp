#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include "arm_protocol_header.h"
#include "enclave_library.h"
#include <list>
#include <string>
#include <vector>
#include "string.h"
#include <unistd.h>
#include <iostream>

#define PORT 9000
#define ENCLAVE_DATABASE_HASHES 32

static std::vector<std::string> hashes_database;
static std::vector<std::string> contacts;

void build_contacts_hash(std::vector<std::string> contacts){
  int i, transfer_index = 0, index = 0;
  unsigned char transfer[ENCLAVE_DATABASE_HASHES*64];

  std::cout << "Building contacts" << std::endl;
  memset(transfer, 0, 64*ENCLAVE_DATABASE_HASHES);
  for(i=0; i < contacts.size(); i++){
    std::string current = contacts[i];
    memcpy(transfer + transfer_index, current.data(), 64);
    transfer_index += 64;
    index++;
    if(index >= ENCLAVE_DATABASE_HASHES || i+1 == contacts.size()){
      enclave_build_contacts_hash(transfer, &index);
      transfer_index=0;
      index=0;
      memset(transfer, 0, 64*ENCLAVE_DATABASE_HASHES);
    }
  }
  std::cout << "Finished building contacts" << std::endl;
}

std::vector<int> match_database(){
  int results_count, result_index, current_result_index;
  int results_indexes[ENCLAVE_DATABASE_HASHES];
  int index = 0, transfer_index = 0, i, j;
  unsigned char transfer[ENCLAVE_DATABASE_HASHES*64];
  std::vector<int> results;
  std::vector<int> current_indexes;

  std::cout << "Matching db" << std::endl;
  memset(transfer, 0, 64*ENCLAVE_DATABASE_HASHES);
  for(i=0; i<hashes_database.size(); i++){
    std::string current = hashes_database[i];
    current_indexes.push_back(i);
    std::cout << "Pushed index " << i <<std::endl;

    memcpy(transfer + transfer_index, current.data(), 64);
    transfer_index += 64;
    index++;

    if(index >= ENCLAVE_DATABASE_HASHES || i+1 == hashes_database.size()){
      std::cout << "Matching chunk" << std::endl;
      enclave_match_chunk(transfer, &index, results_indexes, &results_count);
      std::cout << "Results count: " << results_count << std::endl;

      for(j=0; j<results_count; j++){
        result_index = results_indexes[j];
        current_result_index = current_indexes.at(result_index);
        std::cout << "Current index: " << result_index <<  ", DB index: " << current_result_index << std::endl;
        results.push_back(current_result_index);
      }
      memset(transfer, 0, 64*ENCLAVE_DATABASE_HASHES);
      transfer_index=0;
      index=0;
      current_indexes.clear();
      std::cout << "Finished matching chunk" << std::endl;
    }
  }
  std::cout << "Finished matching db" << std::endl;
  return results;
}

int listen_on_port(){
  int sock = socket(AF_INET, SOCK_STREAM, 0);
  struct sockaddr_in sin;
  sin.sin_family = AF_INET;

  inet_aton("0.0.0.0", &sin.sin_addr);
  sin.sin_port = htons(PORT);
  if (bind(sock, (struct sockaddr*)&sin, sizeof(sin)) < 0) {
      perror("bind");
      return -1;
  }
  std::cout << "Bound to port " << PORT << std::endl;

  if (listen(sock, 5) < 0) {
      perror("listen");
      return -1;
  }
  std::cout << "Listening to port" << std::endl;
  while(1){
    struct sockaddr_in remote_addr;
    size_t addr_size = sizeof(remote_addr);
    int fd = accept(sock, (struct sockaddr *)&remote_addr, (socklen_t*)&addr_size);
    if (fd < 0) {
      perror("accept");
      return -1;
    }
    unsigned char recv_buf[65];
    unsigned char operation;
    uint32_t length;
    memset(recv_buf, 0, 65);
    int rc = recv(fd, &operation, 1, 0);
    if (rc < 0) {
        perror("recv");
        return -1;
    }
    rc = recv(fd, &length, sizeof(uint32_t), 0);
    if (rc < 0) {
        perror("recv");
        return -1;
    }
    length = ntohl(length);
    std::cout << "Received connection of length " << length << std::endl;
    int i, count=0, recv_index=0, j;
    unsigned char recved;
    std::vector<std::string> current_list;
    std::cout << "Receiving chunks" << std::endl;
    while(count <= length*64){
      if(recv_index >= 64){
        std::string current_hash((char*)(recv_buf), 64);
        current_list.push_back(current_hash);
        recv_index=0;
        printf("Received chunk: 0x");
        for(i=0; i<64; i++){
          printf("%02x", recv_buf[i]);
        }
        printf("\n");
      }
      rc = recv(fd, &recved, 1, 0);
      recv_buf[recv_index] = recved;
      count++;
      recv_index++;
    }
    switch(operation){
      case 'c': {
        std::cout << "Receiving contacts" << std::endl;
        //assume that a match operation is not going on
        // std::vector<std::string> *results;
        contacts = current_list;
        //have enclave build hash table of contacts
        build_contacts_hash(contacts);
        //send the database to be matched chunk by chunk
        std::vector<int> results = match_database();
        // results = &contacts;
        //TODO: send results back over the socket
        char _m = 'm';
        send(fd, &_m, 1, 0);
        uint32_t length = htonl((unsigned int)(results.size()));
        send(fd, &length, sizeof(uint32_t), 0);
        std::cout << "Num to send: " << results.size() << std::endl;
        for(i=0; i<results.size(); i++){
          int current_index =  results.at(i);
          std::string current = hashes_database.at(current_index);
          int current_length = current.length();
          std::cout << "Current string length: " << current_length << std::endl;
          if(current_length == 64){
            rc = send(fd, current.data(), 64, 0);
            printf("Sent: 0x");
            for(j=0; j<64; j++){
              printf("%02x", (unsigned char)(current.data()[j]));
            }
            printf("\n");
            if(rc < 0){
              perror("send");
              return -1;
            }
          }
        }
        break;
      }
      case 'h':{
        std::cout << "Receving database" << std::endl;
        //assume that the matching is not happening
        hashes_database = current_list;
        break;
      }
      default:
        perror("protocol");
        return -1;
    }
    rc = shutdown(fd, 2);
    if(rc < 0){
      perror("shutdown");
      return -1;
    }
    close(fd);
  }
}


int main(){
  listen_on_port();
  return 0;
}

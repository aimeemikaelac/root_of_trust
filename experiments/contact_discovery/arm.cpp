#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include "enclave_library.h"
#include "arm_protocol_header.h"
#include <list>
#include <string>

#define PORT 9000
#define ENCLAVE_DATABASE_HASHES 6

static std::vector<std::string> hashes_database;
static std::vector<std::string> contacts;

void build_contacts_hash(std::vector<std::string> contacts){
  int i;
  unsigned char transfer[ENCLAVE_DATABASE_HASHES*6];
  memset(transfer, 0, 512*ENCLAVE_DATABASE_HASHES);
  for(i=0; i < contacts.size(); i++){
    std::string current = contacts[i];
    memcpy(transfer + transfer_index, current.data(), 512);
    transfer_index += 512;
    index++;
    if(index >= ENCLAVE_DATABASE_HASHES || i+1 == hashes_database.size()){
      enclave_build_contacts_hash(transfer, &index);
      transfer_index=0;
      index=0;
      memset(transfer, 0, 512*ENCLAVE_DATABASE_HASHES);
    }
  }
}

std::vector<std::string> match_database(){
  int results_count, unsigned int results_indexes[ENCLAVE_DATABASE_HASHES];
  int index = 0, transfer_index = 0, i, j;
  unsigned char transfer[ENCLAVE_DATABASE_HASHES*512];
  std::vector<std::string> results;
  std::vector<int> current_indexes(ENCLAVE_DATABASE_HASHES);

  memset(transfer, 0, 512*ENCLAVE_DATABASE_HASHES);
  for(int i=0; i<hashes_database.size(); i++){
    current = hashes_database[i];
    current_indexes.push_back(i);
    memcpy(transfer + transfer_index, current.data(), 512);
    transfer_index += 512;
    index++;
    if(index >= ENCLAVE_DATABASE_HASHES || i+1 == hashes_database.size()){
      enclave_match_chunk(transfer, &index, results_indexes, &results_count);
      for(j=0; j<results_count; j++){
        result_index = results_indexes[j];
        current_result_index = current_indexes[result_index];
        results.push_back(hashes_database[current_result_index]);
      }
      memset(transfer, 0, 512*ENCLAVE_DATABASE_HASHES);
      transfer_index=0;
      index=0;
      current_indexes.clear();
    }
  }
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

  if (listen(sock, 5) < 0) {
      perror("listen");
      return -1;
  }
  while(1){
    struct sockaddr_in remote_addr;
    size_t addr_size = sizeof(remote_addr);
    int fd = accept(sock, (struct sockaddr *)&remote_addr, (socklen_t*)&addr_size);
    if (fd < 0) {
      perror("accept");
      return -1;
    }
    unsigned char recv_buf[513];
    unsigned char operation;
    memset(recv_buf, 0, 513);
    int rc = recv(fd, &operation, 1, 0);
    if (rc < 0) {
        perror("recv");
        return -1;
    }
    int i;
    std::vector<std::string> current_list;
    while(true){
      rc = recv(fd, recv_buf, 512, 0);
      if(rc != 512){
        break;
      }
      std::string current_hash((char*)(recv_buf), 512);
      current_list.push_back(current_hash);
    }
    switch(operation){
      case 'c':
        //assume that a match operation is not going on
        std::vectr<std::string> results;
        contacts = current_list;
        //have enclave build hash table of contacts
        build_contacts_hash(contacts);
        //send the database to be matched chunk by chunk
        results = match_database();
        //TODO: send results back over the socket
        char m = 'm';
        send(fd, &m, 1, 0);
        for(i =0; i<results.size(); i++){
          rc = send(fd, results[i].data(), 512, 0);
          if(rc < 0){
            perror("send");
            return -1;
          }
        }
        break;
      case 'h':
        //assume that the matching is not happening
        hashes_database = current_list;
        break;
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

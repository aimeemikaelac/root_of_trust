#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include "enclave_library.h"
#include "arm_protocol_header.h"
#include <list>
#include <string>

#define PORT 9000
#define ENCLAVE_DATABASE_HASHES 20

static std::list<std::string> hashes_database;
static std::list<std::string> contacts;

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
    std::list<std::string> current_list;
    while(true){
      rc = recv(fd, recv_buf, 512, 0);
      if(rc != 512){
        break;
      }
      std::string current_hash((char*)(recv_buf), 512);
      current_list.push_front(current_hash);
    }
    switch(operation){
      case 'c':
        //assume that a match operation is not going on
        contacts = current_list;
        enclave_build_contacts_hash(current_list);
        int index = 0;
        std::list<std::string> current;
        for(std::list<std::string>::iterator it=hashes_database.begin(); it != hashes_database.end(); ++it){
          current.push_front(*it);
          index++;
          if(index >= ENCLAVE_DATABASE_HASHES){
            enclave_match_chunk(current);
            index=0;
            current.clear();
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
  }
}

//receive a database from a client
void receive_database(){

}

//receive the uploaded number hashes
void receive_hashes(){

}


int main(){
  //launch a rest server here to provide the api?
  receive_database();
  while(true){
    receive_hashes();
  }
  return 0;
}

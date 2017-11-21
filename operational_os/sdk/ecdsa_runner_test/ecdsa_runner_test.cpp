#include "CommunicationToProgram.h"
#include "ed25519.h"
#include "unistd.h"
#include <sys/syscall.h>
#include <transport/TSocket.h>
#include <transport/TBufferTransports.h>
#include <protocol/TBinaryProtocol.h>
#include "user_mmap_driver.h"
#include <string>
#include <iostream>

using namespace apache::thrift;
using namespace apache::thrift::protocol;
using namespace apache::thrift::transport;

#define SECURE_STORAGE_DEV 0xA0050000
#define SECURE_STORAGE_LENGTH 0x1000
#define PRIVATE_OFFSET 0x0
#define PUBLIC_OFFSET 0x40

int main(int argc, char **argv){
  unsigned char seed[32], public_key[32], private_key[64], local_signature[64];
  unsigned char *signature_out, *data, *signed_data;
  int i;
  boost::shared_ptr<TSocket> socket(new TSocket("localhost", 9090));
  boost::shared_ptr<TTransport> transport(new TBufferedTransport(socket));
  boost::shared_ptr<TProtocol> protocol(new TBinaryProtocol(transport));
  shared_memory secure_storage = getSharedMemoryArea(SECURE_STORAGE_DEV, SECURE_STORAGE_LENGTH);
  volatile unsigned int *public_key_storage = (unsigned int*)(((unsigned char*)secure_storage->ptr) + PUBLIC_OFFSET);
  volatile unsigned int *private_key_storage = (unsigned int*)(((unsigned char*)secure_storage->ptr) + PRIVATE_OFFSET);
  if(syscall(SYS_getrandom, seed, 32, 0) < 0){
    fprintf(stderr, "Error getting random data. urandom may not be initialized.\n");
    return -1;
  }
/*  srand(0);
  memset(seed, rand(), 32);*/
  ed25519_create_keypair(public_key, private_key, seed);
  for(i=0; i<64/4; i++){
    private_key_storage[i] = ((unsigned int*)private_key)[i];
  }
  for(i=0; i<32/4; i++){
    public_key_storage[i] = ((unsigned int*)public_key)[i];
  }
  std::string remote_message("hello from attestor\n");
  std::string response;
  communication_to_program::CommunicationToProgramClient client(protocol);
  transport->open();
  client.begin_attestation(response, remote_message);
  transport->close();
//  std::cout << "Response: " << response << std::endl;
  printf("Response:\n0x");
  for(i=0; i<response.length(); i++){
    printf("%02x", ((unsigned char*)response.data())[i]);
  }
  printf("\n");
  data = (unsigned char*)response.data();
  signature_out = (unsigned char*)data;
  signed_data = ((unsigned char*)data+0x40);
  printf("Data:\n0x");
  for(i=0; i<256; i++){
    printf("%02x", signed_data[i]);
  }
  printf("\n");
  ed25519_sign(local_signature, signed_data, 0x60, public_key, private_key);
  printf("Microblaze signature:\n0x");
  for(i=0; i<64; i++){
    printf("%02x", signature_out[i]);
  }
  printf("\nOur signature:\n0x");
  for(i=0; i<64; i++){
    printf("%02x", local_signature[i]);
  }
  printf("\n");
  return 0;
}

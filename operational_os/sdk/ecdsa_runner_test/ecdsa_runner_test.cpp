#include "CommunicationToProgram.h"
#include "ed25519.h"
#include "unistd.h"
#include <sys/syscall.h>
#include <transport/TSocket.h>
#include <transport/TBufferTransports.h>
#include <protocol/TBinaryProtocol.h>
#include "user_mmap_driver.h"

using namespace apache::thrift;
using namespace apache::thrift::protocol;
using namespace apache::thrift::transport;

#define SECURE_STORAGE_DEV 0xA0050000
#define SECURE_STORAGE_LENGTH 0x1000
#define PRIVATE_OFFSET 0x0
#define PUBLIC_OFFSET 0x40

int main(int argc, char **argv){
  unsigned char seed[32], public_key[32], private_key[64];
  int i;
  shared_memory secure_storage = getSharedMemoryArea(SECURE_STORAGE_DEV, SECURE_STORAGE_LENGTH);
  volatile unsigned int *public_key_storage = (unsigned int*)(((unsigned char*)secure_storage->ptr) + PUBLIC_OFFSET);
  volatile unsigned int *private_key_storage = (unsigned int*)(((unsigned char*)secure_storage->ptr) + PRIVATE_OFFSET);
  if(syscall(SYS_getrandom, seed, 32, 0) < 0){
    fprintf(stderr, "Error getting random data. urandom may not be initialized.\n");
    return -1;
  }
  ed25519_create_keypair(public_key, private_key, seed);
  for(i=0; i<64/4; i++){
    private_key_storage[i] = ((unsigned int*)private_key)[i];
  }
  for(i=0; i<32/4; i++){
    public_key_storage[i] = ((unsigned int*)public_key)[i];
  }
  return 0;
}

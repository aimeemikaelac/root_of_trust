#include "ed25519.h"
#include "unistd.h"
#include <sys/syscall.h>
#include <fstream>

using namespace std;

int main(){
  unsigned char seed[32], public_key[32], private_key[64];
  if(syscall(SYS_getrandom, seed, 32, 0) < 0){
    fprintf(stderr, "Error getting random data. urandom may not be initialized.\n");
    return -1;
  }
  ed25519_create_keypair(public_key, private_key, seed);
  ofstream public_file;
  ofstream private_file;
  public_file.open("public_key.bin", ofstream::out | ofstream::binary | ofstream::trunc);
  public_file.write((char*)public_key, 32);
  public_file.close();
  private_file.open("private_key.bin", ofstream::out | ofstream::binary | ofstream::trunc);
  private_file.write((char*)private_key, 64);
  private_file.close();
  return 0;
}

#include "ed25519.h"
#include "stdio.h"

int main(int argc, char **argv){
  unsigned char public_key[32], private_key[64], shared_secret[32];
  FILE *public_key_file, *private_key_file, *out_file;
  if(argc != 4){
    printf("Need to have the public key file, private key file and output file\n");
    return -1;
  }
  public_key_file = fopen(argv[1], "rb");
  if(fread(public_key, 1, 32, public_key_file) != 32){
    printf("Error reading public key\n");
    return -1;
  }
  fclose(public_key_file);
  private_key_file = fopen(argv[2], "rb");
  if(fread(private_key, 1, 64, private_key_file) != 64){
    printf("Error reading private key\n");
    return -1;
  }
  fclose(private_key_file);
  ed25519_key_exchange(shared_secret, public_key, private_key);
  out_file = fopen(argv[3], "wb");
  if(fwrite(shared_secret, 1, 32, out_file) != 32){
    printf("Writing shared secret to output file failed\n");
    return -1;
  }
  fclose(out_file);
  return 0;
}

#include "string.h"
#include "stdlib.h"

#define ECDSA_SHARED_BUFFER 0xB0010000
// #define ECDSA_CONTROL 0x0
// #define ECDSA_SIGNATURE 0x100
// #define ECDSA_PROGRAM_HASH 0x140
// #define ECDSA_DATA 0x160
// #define MESSAGE_LENGTH 0x40

#define ATTESTATION_CONTROL 0
#define SIGNATURE_OFFSET 0x100
#define HASH_OFFSET 0x140
#define PUBLIC_KEY_OUT 0x180
#define DATA_OFFSET 0x1A0
#define MESSAGE_LENGTH 0xA0
#define PRIVATE_KEY_OUT 0x240
#define TOTAL_LENGTH 0x140
#define REMOTE_SIGNATURE 0x2A0
#define REMOTE_PUBLIC_KEY 0x2E0
#define SHARED_SECRET_OUT 0x300

static unsigned char xor_key[16];

void start_attestation(unsigned char *remote_message, unsigned char *message_out){
  //TODO: generate dh keypair using random number using the static dh prime
  //For now, just generate a random XOR value
  int i;
  volatile unsigned char *control = (volatile unsigned char*)ECDSA_SHARED_BUFFER;
  volatile
  volatile unsigned char *signature = (volatile unsigned char*)(ECDSA_SHARED_BUFFER + SIGNATURE_OFFSET);
  volatile unsigned char *data = (volatile unsigned char*)(ECDSA_SHARED_BUFFER + DATA_OFFSET);
  volatile unsigned char *remote_public_key = (volatile unsigned char*)(ECDSA_SHARED_BUFFER + REMOTE_PUBLIC_KEY);
  srand(0);
  for(i=0; i<16; i++){
    xor_key[i] = (unsigned char)rand();
  }
  //set message bits to 0 for now
  for(i=0; i<MESSAGE_LENGTH; i++){
    data[i] = 0;
  }
  //copy remote public key in for the key exchange from the remote message
  //TODO: support checking remote signature
  for(i=0; i<0x20; i++){
    remote_public_key[i] = remote_message[i];
  }
  //signal ecdsa start
  control[4] = 0;
  control[0] = 0xFF;
  //wait for finished signal
  while(control[4] == 0){
    __asm__("");
    asm("");
  }
  //copy signature and message out as message_out
  for(i=0; i<TOTAL_LENGTH; i++){
    message_out[i] = signature[i];
  }
}

void generate_encrypted_message(unsigned char *message, unsigned int *message_length){
  volatile unsigned char *shared_secret = (volatile unsigned char*)(ECDSA_SHARED_BUFFER + SHARED_SECRET_OUT);
  char *message_test = "hello!";
  int i;
  unsigned char message_temp[0x100];
  for(i=0; i<0x100; i++){
    message_temp[i] = 0;
  }
  strcpy((char*)message_temp, message_test);
  for(i=0; i<0x100; i++){
    message[i] = message_temp[i] ^ shared_secret[i%32];
  }
  *message_length = 0x100;
}

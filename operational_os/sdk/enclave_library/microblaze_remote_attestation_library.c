#include "string.h"
#include "stdlib.h"

#define ECDSA_SHARED_BUFFER 0x42C00000
#define ECDSA_CONTROL 0x0
#define ECDSA_SIGNATURE 0x100
#define ECDSA_PROGRAM_HASH 0x140
#define ECDSA_DATA 0x160
#define MESSAGE_LENGTH 0x100

static unsigned char xor_key[16];

void start_attestation(unsigned char *remote_message, unsigned char *message_out){
  //TODO: generate dh keypair using random number using the static dh prime
  //For now, just generate a random XOR value
  int i;
  volatile unsigned char *control = (volatile unsigned char*)ECDSA_SHARED_BUFFER;
  volatile unsigned char *signature = (volatile unsigned char*)ECDSA_SIGNATURE;
  volatile unsigned char *data = (volatile unsigned char*)ECDSA_DATA;
  srand(0);
  for(i=0; i<16; i++){
    xor_key[i] = (unsigned char)rand();
  }
  //copy message
  for(i=0; i<16; i++){
    data[i] = (unsigned char)(xor_key[i]);
  }
  for(i=16; i<MESSAGE_LENGTH; i++){
    data[i] = 0;
  }
  //signal ecdsa start
  control[0] = 0;
  //wait for finished signal
  while(control[4] == 0){
    __asm__("");
    asm("");
  }
  //copy signature and message out as message_out
  for(i=0; i<MESSAGE_LENGTH+0x40; i++){
    message_out[i] = signature[i];
  }
}

void generate_encrypted_message(unsigned char *message, unsigned int *message_length){
  srand(xor_key[0]);
  unsigned int nonce = rand();
  char *message_test = "hello: nonce:";
  unsigned char message_temp[18];
  int i;
  strcpy((char*)message_temp, message_test);
  for(i=0; i<4; i++){
    message_temp[13] = ((unsigned char*)nonce)[i];
  }
  message_temp[17] = 0;
  for(i=0; i<strlen(message_test); i++){
    message[i] = message_temp[i] ^ xor_key[i%16];
  }
  *message_length = 18;
}

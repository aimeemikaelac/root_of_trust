#include <stdlib.h>
#include "string.h"
// #include "microblaze_remote_attestation.h"

/**
 ** Function to handle when an attestation is received
 **/
void start_attestation(
  unsigned char *remote_message, unsigned char *message_out
){
  blocking_attestation(remote_message, message_out);
}

//TODO: assume message_out buffer is 0x100 bytes long, message fits in it
void generate_encrypted_message(
  unsigned char *message_out,  unsigned int *message_length
){
  //TODO: encrypt message
  *message_out = (unsigned char*)("test message. hello!\n");
  *message_length = strlen((char*)(message));
}

void receive_encrypted_message(unsigned char *message_in){
  //TODO: decrypt message
}

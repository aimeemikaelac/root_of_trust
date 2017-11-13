// Put a message into the message buffer
// Signal for the message buffer to be signed

#include "xil_io.h"
#include "string.h"

//TODO: config file please
#define BUFFER_ADDRESS 0x40200000
#define BUFFER_LENGTH 0x1000
#define CONTROL_OFFSET 0x0
#define CONTROL_LENGTH 0x100
#define DATA_OFFSET 0x100
#define SIGNATURE_OFFSET 0
#define MESSAGE_OFFSET 0x40
#define ECDSA_ADDRESS 0xB0000000

void sign_message(
  unsigned char *message,
  unsigned int message_length,
  unsigned char *signature_out
){
  int i, ecsda_status;
  //TODO: check if the ecdsa buffer is already being used and wait if so
  //Copy message
  for(i=0; i<message_length; i++){
    Xil_Out8(BUFFER_ADDRESS+DATA_OFFSET+MESSAGE_OFFSET+i, message[i]);
  }
  //Signal ecdsa start
  //TODO: update when the algorithm for ecdsa is finished
  Xil_Out32(ECDSA_ADDRESS, 1);
  //Wait for finished
  while((ecdsa_status = Xil_In32(ECDSA_ADDRESS + 4)) != 1){
    __asm__("");
		asm("");
  }
  //Copy out signature
  for(i=0; i<0x40; i++){
    signature_out[i] = Xil_In8(BUFFER_ADDRESS+DATA_OFFSET+SIGNATURE_OFFSET+i);
  }
}

/**
 ** Perform an attestation with a buffer after an attestation request
 ** Assume that message_out is big enough to hold the signature and the dh
 ** exchange data
 **/
void blocking_attestation(
  unsigned char *remote_data, unsigned char *message_out
){
  // unsigned char signature[0x40];
  char *message = "test message. hello!\n";
  //TODO: generate dh material here
  sign_message((unsigned char*)message, strlen(message), message_out);
}

// Put a message into the message buffer
// Signal for the message buffer to be signed

#include "xil_io.h"

//TODO: config file please
#define BUFFER_ADDRESS 0x40200000
#define BUFFER_LENGTH 0x1000
#define CONTROL_OFFSET 0x0
#define CONTROL_LENGTH 0x100
#define DATA_OFFSET 0x100
#define ECDSA_ADDRESS 0xB0000000

void sign_message(unsigned char *message, unsigned int message_length){
  int i, ecsda_status;
  //TODO: check if the ecdsa buffer is already being used and wait if so
  //Signal message being copied
  Xil_out32(BUFFER_ADDRESS + CONTROL_OFFSET, 1);
  //Copy message
  for(i=0; i<message_length; i++){
    Xil_out8(BUFFER_ADDRESS+DATA_OFFSET+i, message[i]);
  }
  //Signal message copy finished
  Xil_out32(BUFFER_ADDRESS + CONTROL_OFFSET + 4, 1);
  //Signal ecdsa start
  //TODO: update when the algorithm for ecdsa is finished
  Xil_Out32(ECDSA_ADDRESS, 1);
  //Wait for finished
  while((ecdsa_status = Xil_in32(ECDSA_ADDRESS + 4)) != 1){
    __asm__("");
		asm("");
  }
  //Signal CPU message ready
  //TODO: figure out CPU-microblaze message buffer protocol
  Xil_out32(BUFFER_ADDRESS + 0x50, 1);
}

#include "xil_io.h"

//TODO: have this filled in by code generator
#define MEMORY_BUFFER_ADDRESS 0x40200000
#define DATA_OFFSET 0x100

void watch_mem_buffer(){
	unsigned int complete_0;

  unsigned int function;
  int i;
  //while true, check for the function
  while(1){
    // Check if a ready signal is Sets
    //TODO: use this register with a bitmask for more data?
    if(Xil_In32(MEMORY_BUFFER_ADDRESS + 0x70) == 0){
      continue;
    }
    function = Xil_In32(MEMORY_BUFFER_ADDRESS + 0x60);
    switch(function){
			case 0 :
				complete_0 = aes(
					(unsigned char*)(MEMORY_BUFFER_ADDRESS + 4),
					(unsigned char*)(MEMORY_BUFFER_ADDRESS + 20)
				);
				for(i=0; i<4; i++){
					Xil_Out8(MEMORY_BUFFER_ADDRESS + 0 + i, ((unsigned char*)(&complete_0))[i]);
				}
				break;
			case 1 :
				sha512((unsigned int*)(MEMORY_BUFFER_ADDRESS + 36), (unsigned int*)(MEMORY_BUFFER_ADDRESS + 164));
				break;

      default :
        continue;
    }
  }
}

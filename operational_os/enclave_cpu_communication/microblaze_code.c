#include "xil_io.h"

//TODO: have this filled in by code generator
#define MEMORY_BUFFER_ADDRESS 0x40200000
#define DATA_OFFSET 0x100

void watch_mem_buffer(){
{{ input_buffers }}
{{ return_values }}
  unsigned int function;
  int i;
  //while true, check for the function
  while(1){
    function = Xil_in32(MEMORY_BUFFER_ADDRESS + 0x60);
    switch(function){
{{ case_statements }}
      default :
        continue;
    }
  }
}

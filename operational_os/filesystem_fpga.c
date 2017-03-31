#include "Python.h"
// #include "xaes_basic.h"
#include "xaes_basic_hw.h"
#include "user_mmap_driver.h"
// #include "numpy/arrayobject.h"

#define DEVICE_BASE_ADDRESS 0x00000000a0000000
#define DEVICE_ADDRESS_WIDTH 0x0000000000010000

uint32_t reverse(uint32_t x)
{
	x = ((x >> 1) & 0x55555555u) | ((x & 0x55555555u) << 1);
	x = ((x >> 2) & 0x33333333u) | ((x & 0x33333333u) << 2);
	x = ((x >> 4) & 0x0f0f0f0fu) | ((x & 0x0f0f0f0fu) << 4);
	x = ((x >> 8) & 0x00ff00ffu) | ((x & 0x00ff00ffu) << 8);
	x = ((x >> 16) & 0xffffu) | ((x & 0xffffu) << 16);
	return x;
}

static PyObject *
fpga_encrypt(PyObject *self, PyObject *args){
  int i, buffer_index, buffer_length;
  unsigned int word_to_write, ap_done, data_out_valid, current_out_word;
  volatile unsigned int control_register;
  // PyArrayObject* data_to_encrypt;
  // Py_buffer data_to_encrypt_buffer;
	PyObject *array_obj;
  Py_buffer buffer_obj;
  unsigned char *data_buffer;
  char data_out[16];
  unsigned long int nonce_long;
  unsigned int nonce_buf[4];
  volatile unsigned int *device_memory;

  //Parse variables passed from python
  if(!PyArg_ParseTuple(args, "Ok", &array_obj, &nonce_long)){
    printf("Parsing failed\n");
    return NULL;
  }

  if(PyObject_GetBuffer(array_obj, &buffer_obj, PyBUF_WRITABLE) < 0){
    printf("failed to get buffer\n");
    return NULL;
  }

  // if(PyObject_CheckBuffer(data_to_encrypt) == 1){
  //   PyObject_GetBuffer(data_to_encrypt, &data_to_encrypt_buffer, PyBUF_SIMPLE);
  // } else{
  //   printf("Object does NOT support buffer interface. Quiting\n");
  //   memset(data_out, 0, 16);
  //   return Py_BuildValue("s#", data_out, 16);
  // }

  //convert nonce to int array
  memset(nonce_buf, 0, 4*sizeof(unsigned int));
  nonce_buf[1] = (unsigned int)(nonce_long >> 32);
  nonce_buf[0] = (unsigned int)(nonce_long);

  //get reference to device registers
  // data_buffer = (unsigned char*)data_to_encrypt_buffer.buf;
  // data_buffer = (unsigned char*)data_to_encrypt->data;
  // PyObject *pyaddr = PyTuple_GetItem(buffer_info, 0);
  // PyObject *pylen = PyTuple_GetItem(buffer_info, 1);
  data_buffer = (unsigned char*)buffer_obj.buf;
  // buffer_length = data_to_encrypt_buffer.len;
  // buffer_length = (int)PyLong_AsLong(pylen);
  buffer_length = buffer_obj.len;
  shared_memory device_registers = getSharedMemoryArea(DEVICE_BASE_ADDRESS, DEVICE_ADDRESS_WIDTH);
  device_memory = (volatile unsigned int*)device_registers->ptr;

	//iterate over length of the input buffer. assume len is a multiple of 16

  // printf("Buffer claims to be of length: %i\n", buffer_length);
  for(buffer_index=0; buffer_index<buffer_length; buffer_index+=16){
    // printf("Going to iteration %i\n", buffer_index);
    //start device
  	control_register = device_memory[0];
  	control_register |= 1;
  	device_memory[0] = control_register;
  	control_register = device_memory[0];

    //write counter to be encrypted
    for(i=0; i<4; i++){
      word_to_write =
        data_buffer[buffer_index + 15 - i*4]     << 0  |
        data_buffer[buffer_index + 15 - i*4 - 1] << 8  |
        data_buffer[buffer_index + 15 - i*4 - 2] << 16 |
        data_buffer[buffer_index + 15 - i*4 - 3] << 24;

      // printf("Writing this word: %08x\n", word_to_write);
      device_memory[XAES_BASIC_AXILITES_ADDR_DATA_IN_V_DATA/4 + i] =
        nonce_buf[i];
    }

    //set the valid bit now that data is written
  	device_memory[XAES_BASIC_AXILITES_ADDR_DATA_IN_V_CTRL/4] = 1;

    //wait till the device is done
    while((ap_done = control_register &0x2) == 0){
      __asm__("");
      asm("");
      //spin wait
      control_register = device_memory[0];
    }


    //XOR the output of the encryption of the counter with the data to encrypt
    // data_out_valid = device_memory[XAES_BASIC_AXILITES_ADDR_DATA_OUT_V_CTRL/4];
    for(i=0; i<4; i++){
      current_out_word =
        device_memory[XAES_BASIC_AXILITES_ADDR_DATA_OUT_V_DATA/4 + i];
      // printf("Result read in stage %i: %08x\n", i, current_out_word);
      // data_out[15 - i*4]     = (current_out_word & 0xFF) ^
      //                           data_buffer[15 - i*4];
      // data_out[15 - i*4 - 1] = ((current_out_word >> 8) & 0xFF) ^
      //                           data_buffer[15 - i*4 - 1];
      // data_out[15 - i*4 - 2] = ((current_out_word >> 16) & 0xFF) ^
      //                           data_buffer[15 - i*4 - 2];
      // data_out[15 - i*4 - 3] = ((current_out_word >> 24) & 0xFF) ^
      //                           data_buffer[15 - i*4 - 3];
      data_buffer[buffer_index + 15 - i*4] =
        (current_out_word & 0xFF) ^ data_buffer[buffer_index + 15 - i*4];
      data_buffer[buffer_index + 15 - i*4 - 1] =
        ((current_out_word>>8)&0xFF)^data_buffer[buffer_index + 15 - i*4 - 1];
      data_buffer[buffer_index + 15 - i*4 - 2] =
        ((current_out_word>>16)&0xFF)^data_buffer[buffer_index + 15 - i*4 - 2];
      data_buffer[buffer_index + 15 - i*4 - 3] =
        ((current_out_word>>24)&0xFF)^data_buffer[buffer_index + 15 - i*4 - 3];
    }
  }

  //cleanup memory reference
  cleanupSharedMemoryPointer(device_registers);

  // return Py_BuildValue("i", buffer_length);
  PyBuffer_Release(&buffer_obj);
  Py_INCREF(Py_None);
  return Py_None;
}

static PyMethodDef FPGAMethods[] = {
  {"encrypt", fpga_encrypt, METH_VARARGS, "Encrypt using FPGA"},
  {NULL, NULL, 0, NULL}
};

PyMODINIT_FUNC
initfpga(void){
  (void) Py_InitModule("fpga", FPGAMethods);
}

#include "Python.h"
// #include "xaes_basic.h"
#include "xaes_basic_hw.h"
#include "user_mmap_driver.h"

#define DEVICE_BASE_ADDRESS 0x00000000a0000000
#define DEVICE_ADDRESS_WIDTH 0x0000000000010000

static PyObject *
fpga_encrypt(PyObject *self, PyObject *args){
  int i;
  PyObject* data_to_encrypt;
  Py_buffer data_to_encrypt_buffer;
  char data_out[16];

  printf("Test 1\n");
  PyArg_ParseTuple(args, "O", &data_to_encrypt);
  printf("Test 2\n");
  if(PyObject_CheckBuffer(data_to_encrypt) == 1){
    printf("Object supports buffer interface\n");
    PyObject_GetBuffer(data_to_encrypt, &data_to_encrypt_buffer, PyBUF_SIMPLE);
  } else{
    printf("Object does NOT support buffer interface. Quiting\n");
    return NULL;
  }
  printf("Test 3\n");
  void *data_buffer = data_to_encrypt_buffer.buf;
//  unsigned int data_len = data_to_encrypt_buffer.len;
  printf("Test 4\n");

  // XAes_basic encryptor;
  // if(XAes_basic_Initialize(&encryptor, "aes_basic_0") != XST_SUCCESS){
  //   printf("Initialization failed\n");
  //   return NULL;
  // }
  shared_memory device_registers = getSharedMemoryArea(DEVICE_BASE_ADDRESS, DEVICE_ADDRESS_WIDTH);
  volatile unsigned int *device_memory = (volatile unsigned int*)device_registers->ptr;
  printf("Test 5\n");
  //write to the aes device input. for now, assume we received 16 bytes
  // for(i=0; i<16; i++){
//  XAes_basic_Write_data_in_Bytes(&encryptor, 0, (char*)data_buffer, 16);
  for(i=0; i<4; i++){
    unsigned int word_to_write =
      ((unsigned char*)data_buffer)[15 -i*4]     << 24  |
      ((unsigned char*)data_buffer)[15 -i*4 - 1] << 16  |
      ((unsigned char*)data_buffer)[15 - i*4 - 2] << 8 |
      ((unsigned char*)data_buffer)[15 - i*4 - 3] << 0;
    printf("Attempting to write word %08x in iteration %i\n", word_to_write, i);
    device_memory[XAES_BASIC_AXILITES_ADDR_DATA_IN_BASE/4 + i] = word_to_write;
    // XAes_basic_Write_data_in_Words(&encryptor, i, (int*)&word_to_write, 1);
    // writeValueToAddress(word_to_write, DEVICE_BASE_ADDRESS + XAES_BASIC_AXILITES_ADDR_DATA_IN_BASE);
    // writeValueToAddressUio(word_to_write, XAES_BASIC_AXILITES_ADDR_DATA_IN_BASE, "/dev/uio0", DEVICE_ADDRESS_WIDTH);
    printf("Write word %08x in iteration %i\n", word_to_write, i);
    unsigned int word_read = device_memory[XAES_BASIC_AXILITES_ADDR_DATA_IN_BASE/4 + i];
    // getValueAtAddress(DEVICE_BASE_ADDRESS + XAES_BASIC_AXILITES_ADDR_DATA_IN_BASE, &word_read);
    // getValueAtAddressUio(XAES_BASIC_AXILITES_ADDR_DATA_IN_BASE, &word_read, "/dev/uio0", DEVICE_ADDRESS_WIDTH);
    printf("Read word from this location: %08x\n", word_read);
  }
/*  for(i=0; i<16; i++){
    char to_write = 0xff;
    printf("Attempting to write value %02x in iteration %i\n", to_write, i);
//    XAes_basic_Write_data_in_Bytes(&encryptor, i, ((char*)data_buffer)[i], 1);
//    printf("Wrote value %02x in iteration %i\n", ((char*)data_buffer)[i], i);
    XAes_basic_Write_data_in_Bytes(&encryptor, i, &to_write, 1);
    printf("Wrote value %02x in iteration %i\n", to_write, i);
  }*/
  volatile unsigned int control_register = device_memory[0];
  printf("Control register: %08x\n", control_register);
  control_register |= 1;
  device_memory[0] = control_register;
  control_register = device_memory[0];
  printf("Control register after write: %08x\n", control_register);
  printf("Test 6\n");
  // }
  // XAes_basic_Start(&encryptor);
  printf("Test 7\n");
  // while(!XAes_basic_IsDone(&encryptor)){
  //   //spin wait
  //   printf("Waiting\n");
  // }
  unsigned int ap_done;
  while((ap_done = control_register &0x2) == 0){
    __asm__("");
    asm("");
    //spin wait
    control_register = device_memory[0];
    printf("Waiting. Control register is: %08x\n", control_register);
  }

  printf("ap done: %08x\n", ap_done);
  printf("Test 7\n");
  // XAes_basic_Read_data_out_Bytes(&encryptor, 0, data_out, 16);
  printf("Control register after finish: %08x\n", control_register);
  unsigned int current_out_word;
  for(i=0; i<4; i++){
    current_out_word = device_memory[XAES_BASIC_AXILITES_ADDR_DATA_OUT_BASE/4 + i];
    printf("Data out at iteration %i: %08x\n", i, current_out_word);
    data_out[15 - i*4] = current_out_word & 0xFF;
    data_out[15 - i*4 - 1] = (current_out_word >> 8) & 0xFF;
    data_out[15 - i*4 - 2] = (current_out_word >> 16) & 0xFF;
    data_out[15 - i*4 - 3] = (current_out_word >> 24) & 0xFF;
  }

  printf("Test 8\n");

  PyObject *data_out_str = Py_BuildValue("s#", data_out, 16);
  cleanupSharedMemoryPointer(device_registers);
  return data_out_str;
}

static PyMethodDef FPGAMethods[] = {
  {"encrypt", fpga_encrypt, METH_VARARGS, "Encrypt using FPGA"},
  {NULL, NULL, 0, NULL}
};

PyMODINIT_FUNC
initfpga(void){
  (void) Py_InitModule("fpga", FPGAMethods);
}

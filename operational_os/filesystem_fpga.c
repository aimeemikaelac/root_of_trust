#include "Python.h"
#include "xaes_basic.h"

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

  XAes_basic encryptor;
  if(XAes_basic_Initialize(&encryptor, "aes_basic_0") != XST_SUCCESS){
    printf("Initialization failed\n");
    return NULL;
  }
  printf("Test 5\n");
  //write to the aes device input. for now, assume we received 16 bytes
  // for(i=0; i<16; i++){
//  XAes_basic_Write_data_in_Bytes(&encryptor, 0, (char*)data_buffer, 16);
  for(i=0; i<1; i++){
    unsigned int word_to_write = ((unsigned char*)data_buffer)[i*4]     << 24 |
                                 ((unsigned char*)data_buffer)[i*4 + 1] << 16 |
                                 ((unsigned char*)data_buffer)[i*4 + 2] << 8  |
                                 ((unsigned char*)data_buffer)[i*4 + 3];
    printf("Attempting to write word %08x in iteration %i\n", word_to_write, i);
    XAes_basic_Write_data_in_Words(&encryptor, i, (int*)&word_to_write, 1);
    printf("Write word %08x in iteration %i\n", word_to_write, i);
  }
/*  for(i=0; i<16; i++){
    char to_write = 0xff;
    printf("Attempting to write value %02x in iteration %i\n", to_write, i);
//    XAes_basic_Write_data_in_Bytes(&encryptor, i, ((char*)data_buffer)[i], 1);
//    printf("Wrote value %02x in iteration %i\n", ((char*)data_buffer)[i], i);
    XAes_basic_Write_data_in_Bytes(&encryptor, i, &to_write, 1);
    printf("Wrote value %02x in iteration %i\n", to_write, i);
  }*/
  printf("Test 6\n");
  // }
  XAes_basic_Start(&encryptor);
  printf("Test 7\n");
  while(!XAes_basic_IsDone(&encryptor)){
    //spin wait
    printf("Waiting\n");
  }
  printf("Test 7\n");
  XAes_basic_Read_data_out_Bytes(&encryptor, 0, data_out, 16);

  printf("Test 8\n");

  PyObject *data_out_str = Py_BuildValue("s#", data_out, 16);
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

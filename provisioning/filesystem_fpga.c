#include "Python.h"
#include "xaes_basic.h"

static PyObject *
fpga_encrypt(PyObject *self, PyObject *args){
  int i;
  PyObject data_to_encrypt;
  Py_buffer data_to_encrypt_buffer;
  unsigned char data_out[16];

  PyArg_ParseTuple(args, "O", *data_to_encrypt);
  PyObject_GetBuffer(&data_to_encrypt, &data_to_encrypt_buffer);
  void *data_buffer = data_to_encrypt_buffer.buf;
  unsigned int data_len = data_to_encrypt_buffer.len;

  XAes_basic encryptor;
  XAes_basic_Initialize(&encryptor, "aes_basic_0");
  //write to the aes device input. for now, assume we received 16 bytes
  // for(i=0; i<16; i++){
  XAes_basic_Write_data_in_Bytes(&encryptor, i, data_buffer, 16)
  // }
  XAes_basic_Start(&encryptor);
  while(!XAes_basic_IsDone(&encryptor)){
    //spin wait
  }
  XAes_basic_Read_data_out_Bytes(&encryptor, 0, data_out, 16);

  PyObject *data_out_str = Py_BuildValue("s#", data_out, 16);
  return data_out_str;
}

static PyMethodDef FPGAMethods[] = {
  {"encrypt", fpga_encrypt, METH_VARGS, "Encrypt using FPGA"},
  {NULL, NULL, 0, NULL}
};

PyMODINIT_FUNC
initfpga(void){
  (void) Py_InitModule("fpga", FPGAMethods);
}

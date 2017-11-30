void memory_test(unsigned char *in_buffer, unsigned int *in_length, unsigned char *out_buffer){
  int i, length=*in_length;
  for(i=0; i<2048; i++){
    out_buffer[i] = 0;
  }
  for(i=0; i<length; i++){
    out_buffer[length-1-i] = in_buffer[i];
  }
}

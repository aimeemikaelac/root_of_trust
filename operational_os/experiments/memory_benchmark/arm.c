#include "arm_protocol_header.h"
#include "enclave_library.h"
#include "unistd.h"
#include <sys/syscall.h>
#include "time.h"
#include "string.h"
#include "stdio.h"
#include "stdlib.h"

#define ITERATIONS 25
#define MAX_SIZE 2048

void memory_test_ref(unsigned char *in_buffer, unsigned int *in_length, unsigned char *out_buffer){
  int i, length=*in_length;
  for(i=0; i<length; i++){
    out_buffer[length-1-i] = in_buffer[i];
  }
}

int main(int argc, char **argv){
  unsigned char input[MAX_SIZE], output[MAX_SIZE], output_ref[MAX_SIZE];
  unsigned int seed;
  int data_size, iteration, correct, i;
  clock_t arm_start, arm_end, mb_start, mb_end;
  double arm_elapsed, mb_elapsed;
  enclave_init_with_file("memory_test.bin");
  if(syscall(SYS_getrandom, (unsigned char*)(&seed), 4, 0) < 0){
    fprintf(stderr, "Error getting random seed\n");
    return -1;
  }
  srand(seed);
  for(i=0; i<MAX_SIZE; i++){
    input[i] = (unsigned char)rand();
  }
  printf("DATA_SIZE,MICROBLAZE_TIME,ARM_TIME\n");
  for(data_size=4; data_size<MAX_SIZE; data_size+=4){
    for(iteration=0; iteration<MAX_SIZE; iteration++){
      memset(output, 0, MAX_SIZE);
      memset(output_ref, 0, MAX_SIZE);
      mb_start = clock();
      memory_test(input, &data_size, output);
      mb_end = clock();
      arm_start = clock();
      memory_test_ref(input, &data_size, output);
      arm_end = clock();
      arm_elapsed = ((double)(arm_end - arm_start)/CLOCKS_PER_SEC);
      mb_elapsed = ((double)(mb_end - mb_start)/CLOCKS_PER_SEC);
      correct = 1;
      for(i=0; i<data_size; i++){
        if(output[i] != output_ref[i]){
          correct = 0;
          break;
        }
      }
      if(correct == 0){
        fprintf(stderr, "MB output is different from ref output\n");
      }
      printf("%i,%f,%f\n", data_size, mb_elapsed, arm_elapsed);
    }
  }
  return 0;
}

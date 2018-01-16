#include "stdio.h"
#include "time.h"
#include "unistd.h"
#include <sys/syscall.h>
#include "arm_protocol_header.h"
#include "enclave_library.h"
#include "sha512.h"
#include <stdlib.h>

#define MAX_SIZE_BUFFER 0x100000
#define EXPERIMENT_RUNS_DEFAULT 0x100
#define RUN_ITERATIONS_DEFAULT 100
#define INCREMENT_DEFAULT 0x1000

int main(int argc, char **argv){
  int run, iteration, data_size, runs_total, iterations_total, increment, i, block_size=0x80;
  unsigned int seed;
  clock_t iteration_start, iteration_end, ref_start, ref_end;
  double elapsed, ref_elapsed;
  unsigned char data_buffer[MAX_SIZE_BUFFER], sha_out[0x40], sha_ref[0x40], *current_buffer;
  sha512_context context;
  if(argc > 1){
    runs_total = atoi(argv[1]);
    increment = (int)(MAX_SIZE_BUFFER/runs_total);
  } else{
    runs_total = EXPERIMENT_RUNS_DEFAULT;
    increment = INCREMENT_DEFAULT;
  }
  if(argc > 2){
    iterations_total = atoi(argv[2]);
  } else{
    iterations_total = RUN_ITERATIONS_DEFAULT;
  }
  //generate data
  if(syscall(SYS_getrandom, (unsigned char*)(&seed), 4, 0) < 0){
    fprintf(stderr, "Error getting random seed\n");
    return -1;
  }
  srand(seed);
  for(i=0; i<MAX_SIZE_BUFFER; i++){
    data_buffer[i] = (unsigned char)rand();
  }
  enclave_init_with_file("sha512_enclave.bin");
  //print csv header
  printf("DATA_SIZE,MICROBLAZE_TIME,REFERENCE_TIME\n");
//  data_size = 0x100;
//  sha512_run(data_buffer, &data_size, sha_out);
  data_size = increment;
//  for(run=0; run<runs_total; run++){
  while(data_size <= MAX_SIZE_BUFFER){
//    data_size = (increment*(run+1));
//    fprintf(stderr, "Data length: %i\n", data_size);
//    current_buffer = data_buffer;
    for(iteration=0; iteration<iterations_total; iteration++){
      iteration_start = clock();
      current_buffer = data_buffer;
      sha512_run_init();
      for(i=0; i<data_size/0x80; i++){
//        current_buffer = data_buffer + i*0x80;
        sha512_run_update(current_buffer);
        current_buffer += 0x80;
      }
      sha512_run_final(sha_out);
      iteration_end = clock();
      ref_start = clock();
      current_buffer = data_buffer;
      sha512_init(&context);
      for(i=0; i<data_size/0x80; i++){
 //       current_buffer = data_buffer + i*0x80;
        sha512_update(&context, current_buffer, 0x80);
        current_buffer += 0x80;
      }
      sha512_final(&context, sha_ref);
      ref_end = clock();
      elapsed = ((double)(iteration_end - iteration_start))/CLOCKS_PER_SEC;
      ref_elapsed = ((double)(ref_end - ref_start))/CLOCKS_PER_SEC;
      printf("%i,%f,%f\n", data_size, elapsed, ref_elapsed);
//      sha512(data_buffer, data_size, sha_ref);
      int correct = 1;
      for(i=0; i<0x40; i++){
        if(sha_ref[i] != sha_out[i]){
          correct = 0;
          break;
        }
      }
      if(correct == 0){
        printf("Microblaze hash:\n0x");
        for(i=0; i<0x40; i++){
          printf("%02x", sha_out[i]);
        }
        printf("\nCorrect hash:\n0x");
        for(i=0; i<0x40; i++){
          printf("%02x", sha_ref[i]);
        }
        printf("\n");
        return -1;
      }
    }
    data_size*=2;
  }
  printf("\n");
  return 0;
}

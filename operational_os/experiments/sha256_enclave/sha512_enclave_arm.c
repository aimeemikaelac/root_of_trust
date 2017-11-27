#include "stdio.h"
#include "time.h"
#include "unistd.h"
#include <sys/syscall.h>
#include "arm_protocol_header.h"
#include "enclave_library.h"

#define MAX_SIZE_BUFFER 0x100
#define EXPERIMENT_RUNS_DEFAULT 100
#define RUN_ITERATIONS_DEFAULT 50
#define INCREMENT_DEFAULT 256

int main(int argc, char **argv){
  int run, iteration, data_size, runs_total, iterations_total, increment, i;
  unsigned int seed;
  clock_t iteration_start, iteration_end;
  double elapsed;
  unsigned char data_buffer[MAX_SIZE_BUFFER], sha_out[0x40];
/*  if(argc > 1){
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
  }*/
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
  printf("DATA_SIZE,TIME\n");
  data_size = 0x100;
  sha512_run(data_buffer, &data_size, sha_out);
//  data_size = increment;
/*  for(run=0; run<runs_total; run++){
//    data_size = (increment*(run+1));
    fprintf(stderr, "Data length: %i\n", data_size);
    for(iteration=0; iteration<iterations_total; iteration++){
      iteration_start = clock();
      sha512_run(data_buffer, &data_size, sha_out);
      iteration_end = clock();
      elapsed = ((double)(iteration_end - iteration_start))/CLOCKS_PER_SEC;
      printf("%i,%f\n", data_size, elapsed);
      data_size+=increment;
    }
  }*/
  return 0;
}

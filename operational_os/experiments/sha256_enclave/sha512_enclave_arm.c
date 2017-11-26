#include "stdio.h"
#include "time.h"
#include "arm_protocol_header.h"

#define MAX_SIZE_BUFFER 0x3000
#define EXPERIMENT_RUNS 100
#define RUN_ITERATIONS 50
#define INCREMENT 256

int main(int argc, char **argv){
  int run, iteration, data_size;
  clock_t iteration_start, iteration_end;
  unsigned char data_buffer[MAX_SIZE_BUFFER], sha_out[0x40];
  //print csv header
  printf("DATA_SIZE,TIME\n");
  for(run=0; run<EXPERIMENT_RUNS; run++){
    data_size = 256*run;
    for(iteration=0; iteration<RUN_ITERATIONS; iteration++){
      iteration_start = clock();
      sha512_run(data_buffer, &data_size, sha_out);
      iteration_end = clock();
      elapsed = ((double)(iteration_end - iteration_start))/CLOCKS_PER_SEC;
      printf("%i,%f", data_size, elapsed);
    }
  }
  return 0;
}

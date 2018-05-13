#include "contact_discovery_utils.h"

int main(int argc, char **argv){
  unsigned int database_size = 0;
  int iterations, iterations_count, num_matched = 0, num_unmatched = 0;
  clock_t sw_match_start, sw_match_end, hw_match_start, hw_match_end;
  double sw_elapsed, hw_elapsed;
  CD_CONTEXT context;

  if(argc != 3){
    return -1;
  }

  database_size = atoi(argv[1]);
  iterations = atoi(argv[2]);
  if(initialize(&context, database_size) < 0){
    return -1;
  }

  setup_experiment(&context);

  for(iterations_count = 0; iterations_count < iterations; iterations_count++){
    hw_match_start = clock();
    run_match_fpga(&context);
    hw_match_end = clock();
    hw_elapsed = ((double)(hw_match_end - hw_match_start)/CLOCKS_PER_SEC);

    sw_match_start = clock();
    run_software_match(&context);
    sw_match_end = clock();
    sw_elapsed = ((double)(sw_match_end - sw_match_start)/CLOCKS_PER_SEC);

//    count_results(&context);
    printf("%i,%i,%f,%f\n", iterations, database_size, sw_elapsed, hw_elapsed);
  }
  // printf("Contacts match %i, unmatched %i\n", num_matched, num_unmatched);
  cleanup(&context);
  return 0;
}

#include "contact_discovery_utils.h"

#define DATABASE_SIZE 12800

int main(){
  CD_CONTEXT context;

  if(initialize(&context, DATABASE_SIZE) < 0){
    return -1;
  }

  setup_experiment(&context);

  printf("Running Match\n");
  run_match_fpga(&context);
  printf("Matched finished\n");

  run_software_match(&context);

  count_results(&context);
  printf("Contacts match %i, unmatched %i\n", context.num_matched, context.num_unmatched);

  cleanup(&context);
  return 0;
}

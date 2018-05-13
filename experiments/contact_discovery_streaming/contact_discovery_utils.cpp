#include "contact_discovery_utils.h"

void contact_discovery(
  CD_CONTEXT *context,
  int operation,
  unsigned char contact_in[64]
){
  int i, j;
  volatile unsigned char *control, *control_1;
  unsigned int results_val, dma_status;
  unsigned int first_length, second_length, remaining, dma_offset=0;
  shared_memory control_mem = getSharedMemoryArea(CONTACT_DISCOVERY_BASE, 0x1000);
  shared_memory control_mem_1 = getSharedMemoryArea(CONTACT_DISCOVERY_BASE_1, 0x1000);
  control = (volatile unsigned char*)(control_mem->ptr);
  control_1 = (volatile unsigned char*)(control_mem->ptr);

  //set operation
  control[0x10] = operation;
  control_1[0x10] = operation;
  //load contact
  if(operation == 0){
    for(i=0; i<64/4; i++){
      writeValueToAddress(((unsigned int*)contact_in)[i], CONTACT_DISCOVERY_BASE + 0x18 + i*4);
      writeValueToAddress(((unsigned int*)contact_in)[i], CONTACT_DISCOVERY_BASE_1 + 0x18 + i*4);
    }
  }
  //run match
  // detect if transfer size is too large, e.g. > 2^23
//  if(db_size*64 > TRANSFER_MAX){
//    first_length = TRANSFER_MAX;
//    remaining = db_size - TRANSFER_MAX;
//  } else{
//    first_length = db_size;
//    remaining = 0;
//  }
  if(operation == 1){
//  printf("starting mapper programming\n");
    // program input stream
    //reset MM2s
    // writeValueToAddress(4, INPUT_MAPPER_BASE + 0x0);
    // //enable MM2s
    // writeValueToAddress(1, INPUT_MAPPER_BASE + 0x0);
    // //set MM2S lower address bits
    // writeValueToAddress(FPGA_RAM_LOWER + dma_offset, INPUT_MAPPER_BASE + 0x18);
    // //set MM2s upper address bits
    // writeValueToAddress(FPGA_RAM_UPPER, INPUT_MAPPER_BASE + 0x1C);
    // //set length for transfer -> db_size*64
    // writeValueToAddress(first_length*64, INPUT_MAPPER_BASE + 0x28);
    // dma_offset += first_length*64;
    // program output stream
    //reset S2MM
    // writeValueToAddress(4, RESULTS_MAPPER_BASE + 0x30);
    //enable S2MM
    // writeValueToAddress(1, RESULTS_MAPPER_BASE + 0x30);
    //set S2MM lower address bits
    // writeValueToAddress(RESULTS_BUFFER_FPGA, RESULTS_MAPPER_BASE + 0x48);
    //set length for transfer -> db_size*4
    // writeValueToAddress(db_size, RESULTS_MAPPER_BASE + 0x58);
  //  printf("finished mapper programming\n");
    //write dma_offset
    unsigned long long offset_1 = context->database_size/2;
    writeValueToAddress(0, CONTACT_DISCOVERY_BASE + 0x5c);
    writeValueToAddress(0, CONTACT_DISCOVERY_BASE + 0x60);
    writeValueToAddress(offset_1, CONTACT_DISCOVERY_BASE_1 + 0x5c);
    writeValueToAddress(0, CONTACT_DISCOVERY_BASE_1 + 0x60);
    //write db size
    writeValueToAddress(context->database_size/2, CONTACT_DISCOVERY_BASE + 0x68);
    writeValueToAddress(context->database_size/2, CONTACT_DISCOVERY_BASE_1 + 0x68);
  }
  //start current call
  control[0x0] = 1;
  control_1[0x0] = 1;
  //set operation valid
  control[0x14] = 1;
  control_1[0x14] = 1;
  //wait for done
  while(control[0] & 0x2 != 1){
    asm("");
    __asm__("");
    // while(remaining > 0){
    //   // wait for tranfer to finished -> DMA status is idle
    //   getValueAtAddress(INPUT_MAPPER_BASE + 0x4, &dma_status);
    //   while((dma_status & 0x2) == 0){
    //     getValueAtAddress(INPUT_MAPPER_BASE + 0x4, &dma_status);
    //   }
    //   if(remaining*64 > TRANSFER_MAX){
    //     second_length = TRANSFER_MAX;
    //     remaining = remaining - TRANSFER_MAX;
    //   } else{
    //     second_length = remaining;
    //     remaining = 0;
    //   }
    //   //reset MM2s
    //   writeValueToAddress(4, INPUT_MAPPER_BASE + 0x0);
    //   //enable MM2s
    //   writeValueToAddress(1, INPUT_MAPPER_BASE + 0x0);
    //   //set MM2S lower address bits
    //   writeValueToAddress(FPGA_RAM_LOWER, INPUT_MAPPER_BASE + 0x18);
    //   //set MM2s upper address bits
    //   writeValueToAddress(FPGA_RAM_UPPER, INPUT_MAPPER_BASE + 0x1C);
    //   //set length for transfer -> db_size*64
    //   writeValueToAddress(second_length*64, INPUT_MAPPER_BASE + 0x28);
    //   dma_offset += second_length*64;
    // }
  }
  while(control_1[0] & 0x2 != 1){
    asm("");
    __asm__("");
  }
  context->error_out = *((unsigned int*)(control + 0x70)) || *((unsigned int*)(control_1 + 0x70));
  assert(*((unsigned int*)(control + 0x70)) == *((unsigned int*)(control_1 + 0x70)));
  context->contacts_size_out = *((unsigned int*)(control + 0x78));
  //read match result
  if(operation == 1){
    // wait for output stream to finish
    unsigned int results_buffer_status;
    printf("Reading results\n");
    for(i=0; i<context->database_size/8; i++){
      getValueAtAddress(RESULTS_BUFFER + i*4, &results_val);
//      printf("Result %i: %08x\n", i, results_val);
      bool *results_buffer = (bool*)&results_val;
      for(j=0; j<4; j++){
        context->matched_out[i*4 + j] = results_buffer[j];
      }
    }
    for(i=0; i<context->database_size/8; i++){
      getValueAtAddress(RESULTS_BUFFER_1 + i*4, &results_val);
//      printf("Result %i: %08x\n", i, results_val);
      bool *results_buffer = (bool*)&results_val;
      for(j=0; j<4; j++){
        context->matched_out[context->database_size/2 + i*4 + j] = results_buffer[j];
      }
    }
    printf("Finished reading results\n");
  }
  cleanupSharedMemoryPointer(control_mem);
  cleanupSharedMemoryPointer(control_mem_1);
}


void generate_numbers(CD_CONTEXT *context){
  int i, j;
  number current_num;

  for(i=0; i<context->database_size; i++){
    current_num = context->numbers[i];
    for(j=0; j<10; j++){
      int current_rand = rand()%10;
      current_num.num[j] = current_rand;
    }
    context->numbers[i] = current_num;
  }
}

void hash_numbers(CD_CONTEXT *context){
  int i, j;
  number current_num;
  unsigned char temp[128];
  unsigned char hash_out[64];
  memset(temp, 0, 128);
  memset(hash_out, 0, 64);
  sha512_context hash_context;

  for(i=0; i<context->database_size; i++){
    current_num = context->numbers[i];
    for(j=0; j<10; j++){
      temp[j] = current_num.num[j];
    }
    sha512_init(&hash_context);
    sha512_update(&hash_context, temp, 128);
    sha512_final(&hash_context, hash_out);
    memcpy(context->db_hashes + i*64, hash_out, 64);
  }
}

void populate_contacts(CD_CONTEXT *context){
  int random_index, j;
  while(context->contacts.size() < CONTACTS_SIZE){
    random_index = rand() % context->database_size;
    unsigned char temp[64];
    for(j=0; j<64; j++){
      temp[j] = context->db_hashes[random_index*64 + j];
    }
    std::string current((char*)temp, 64);
    if(context->contacts.count(current) > 0){
      continue;
    } else{
      context->contacts.insert(current);
    }
  }
}

void check_initial_conditions_fpga(CD_CONTEXT *context){
  contact_discovery(
    context,
    2,
    (unsigned char*)NULL
  );
  assert(context->error_out == 0);
  assert(context->contacts_size_out == 0);
}

void read_fpga_results(CD_CONTEXT *context){
  int i, j;
  unsigned int results_val;
  for(i=0; i<context->database_size/4; i++){
    getValueAtAddress(RESULTS_BUFFER + i*4, &results_val);
    bool *results_buffer = (bool*)&results_val;
    for(j=0; j<4; j++){
      context->matched_out[i*4 + j] = results_buffer[j];
    }
  }
}

void run_software_match(CD_CONTEXT *context){
  int i;
  for(i=0; i<context->database_size; i++){
    unsigned char current_hash[64];
    memcpy(current_hash, context->db_hashes + i*64, 64);
    std::string current((char*)(current_hash), 64);
    context->matched_correct[i] = (context->contacts.count(current) > 0);
  }
}

void populate_contacts_fpga(CD_CONTEXT *context){
  std::set<std::string>::iterator it;
  int contacts_size = 0;
  for(it = context->contacts.begin(); it != context->contacts.end(); ++it){
    std::string current = *it;
    contact_discovery(
      context,
      0,
      (unsigned char*)current.data()
    );
    contacts_size++;
    assert(context->error_out == 0);
    assert(context->contacts_size_out == contacts_size);
  }
}

void run_match_fpga(CD_CONTEXT *context){
  contact_discovery(
    context,
    1,
    NULL
  );
  assert(context->error_out == 0);
}

void populate_database(CD_CONTEXT *context){
  int buffer_index = 0, i;
  long long transfer_offset = 0;
  for(i=0; i<context->database_size*64/4; i++){
    writeValueToAddress(((unsigned int*)context->db_hashes)[i], LOAD_BUFFER + buffer_index);
    buffer_index += 4;
    if(buffer_index >= TRANSFER_SIZE){
      transfer_buffer(transfer_offset);
      buffer_index = 0;
      transfer_offset += TRANSFER_SIZE;
    }
  }
  transfer_buffer(transfer_offset);
}

void setup_experiment(CD_CONTEXT *context){
  // generate random database
  generate_numbers(context);
  hash_numbers(context);

  //select a random numbers to be contacts
  populate_contacts(context);

  //fill the database
  populate_database(context);

  //check initial conditions of clearing contacts
  check_initial_conditions_fpga(context);


  //populate contacts
  populate_contacts_fpga(context);
}

void transfer_buffer(long long transfer_offset){
  unsigned int cdma_status;
  //verify CDMASR.IDLE = 1
  cdma_status = 0;
  while(cdma_status & 0x2 == 0){
    getValueAtAddress(CDMA_BASE + 0x4, &cdma_status);
  }
  //write source address
  writeValueToAddress(TRANSFER_SOURCE, CDMA_BASE + 0x18);
  writeValueToAddress(0, CDMA_BASE + 0x1C);
  //write dest address
  writeValueToAddress((unsigned int)(transfer_offset), CDMA_BASE + 0x20);
  writeValueToAddress((unsigned int)(transfer_offset >> 32), CDMA_BASE + 0x24);
//  printf("Destination address: %08x\n", (unsigned int)(transfer_offset));
//  printf("Destination address msb: %08x\n", (unsigned int)(transfer_offset >> 32));
  //write transfer length
  writeValueToAddress(TRANSFER_SIZE, CDMA_BASE + 0x28);
  while(cdma_status & 0x2 == 0){
    getValueAtAddress(CDMA_BASE + 0x4, &cdma_status);
  }
}

void count_results(CD_CONTEXT *context){
  int j;
  context->num_matched = 0;
  context->num_unmatched = 0;
  for(j=0; j<context->database_size; j++){
    assert(context->matched_out[j] == context->matched_correct[j]);
    if(context->matched_out[j]){
      context->num_matched++;
    } else{
      context->num_unmatched++;
    }
  }
}

int initialize(CD_CONTEXT *context, unsigned long long database_size){
  if(syscall(SYS_getrandom, (unsigned char*)(&context->seed), 4, 0) < 0){
    fprintf(stderr, "Error getting random seed\n");
    return -1;
  }
  srand(context->seed);

  context->database_size = database_size;

  context->numbers = (number*)malloc(sizeof(number)*database_size);
  context->numbers_length = sizeof(number)*database_size;
  if(context->numbers == NULL){
    return -1;
  }

  context->db_hashes = (unsigned char*)malloc(64*database_size);
  context->db_hashes_length = 64*database_size;
  if(context->db_hashes == NULL){
    free(context->numbers);
    return -1;
  }

  context->matched_out = (bool*)malloc(sizeof(bool)*database_size);
  context->matched_out_length = sizeof(bool)*database_size;
  if(context->matched_out == NULL){
    free(context->db_hashes);
    free(context->numbers);
    return -1;
  }

  context->matched_correct = (bool*)malloc(sizeof(bool)*database_size);
  context->matched_correct_length = sizeof(bool)*database_size;
  if(context->matched_correct == NULL){
    free(context->matched_out);
    free(context->db_hashes);
    free(context->numbers);
    return -1;
  }

  return 0;
}

void cleanup(CD_CONTEXT *context){
  free(context->matched_correct);
  free(context->matched_out);
  free(context->db_hashes);
  free(context->numbers);
}

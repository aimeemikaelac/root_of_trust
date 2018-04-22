#include "unistd.h"
#include "stdio.h"
#include <stdlib.h>
#include <sys/syscall.h>
#include "sha512.h"
#include "string.h"
#include <string>
#include <set>
#include <vector>
#include "assert.h"
#include "time.h"
#include "fixedint.h"
#include "user_mmap_driver.h"

//#define DATABASE_CHUNK_SIZE 300
#define CONTACTS_SIZE 128
#define DATABASE_SIZE 300

#define CONTACT_DISCOVERY_BASE 0xB0000000
#define DB_BUFFER_BASE 0xA0000000
#define INPUT_MAPPER_BASE 0xB0010000
#define RESULTS_MAPPER_BASE 0xB0020000
#define RESULTS_BUFFER 0xB0030000
#define FPGA_RAM_LOWER 0x00000000
#define FPGA_RAM_UPPER 0x00000004
#define RAM_BUFFER 0x400000000


void contact_discovery(
	int operation,
	unsigned char contact_in[64],
	unsigned int db_size,
	bool *matched_out,
	int *error_out,
	int *contacts_size_out
){
	int i;
	volatile unsigned char *control;
	unsigned int results_val;
	shared_memory control_mem = getSharedMemoryArea(CONTACT_DISCOVERY_BASE, 0x1000);
	control = (volatile unsigned char*)(control_mem->ptr);

	//set operation
	control[0x10] = operation;
	//load contact
	if(operation == 0){
		for(i=0; i<64; i++){
			control[0x40 + i] = contact_in[i];
		}
	}
	//run match
	if(operation == 1){
        printf("starting mapper programming\n");
		// program input stream
		//enable MM2s
		writeValueToAddress(1, INPUT_MAPPER_BASE + 0x0);
		//set MM2S lower address bits
		writeValueToAddress(FPGA_RAM_LOWER, INPUT_MAPPER_BASE + 0x18);
		//set MM2s upper address bits
		writeValueToAddress(FPGA_RAM_UPPER, INPUT_MAPPER_BASE + 0x1C);
		//set length for transfer -> db_size*64
		writeValueToAddress(db_size*64, INPUT_MAPPER_BASE + 0x28);
		// program output stream
		//enable S2MM
		writeValueToAddress(1, RESULTS_MAPPER_BASE + 0x30);
		//set S2MM lower address bits
		writeValueToAddress(RESULTS_BUFFER, RESULTS_MAPPER_BASE + 0x48);
		//set length for transfer -> db_size*4
		writeValueToAddress(db_size*4, RESULTS_MAPPER_BASE + 0x58);
        printf("finished mapper programming\n");
        printf("Db size: %08x\n", db_size);
        writeValueToAddress(db_size, CONTACT_DISCOVERY_BASE + 0x80);
	}
	//start current call
	control[0x0] = 1;
  //set operation valid
  control[0x14] = 1;
	//wait for done
	while(control[0] & 0x2 != 1){
		asm("");
		__asm__("");
	}
	*error_out = *((unsigned int*)(control + 0x88));
	*contacts_size_out = *((unsigned int*)(control + 0x90));
	//read match result
	if(operation == 1){
      // wait for output stream to finish
      unsigned int results_buffer_status;
      printf("Reading results\n");
		for(i=0; i<db_size; i++){
			getValueAtAddress(RESULTS_BUFFER + i*4, &results_val);
			matched_out[i] = (bool)(results_val);
            printf("Result %i: %08x\n", i, results_val);
		}
        printf("Finished reading results\n");
	}
  cleanupSharedMemoryPointer(control_mem);
}


typedef struct number{
	unsigned char num[10];
} number;


number numbers[DATABASE_SIZE];

unsigned char db_hashes[64*DATABASE_SIZE];

static std::set<std::string> contacts;

void generate_numbers(){
	int i, j;
	number current_num;

	for(i=0; i<DATABASE_SIZE; i++){
		current_num = numbers[i];
		for(j=0; j<10; j++){
			int current_rand = rand()%10;
			current_num.num[j] = current_rand;
		}
		numbers[i] = current_num;
	}
}

void hash_numbers(){
	int i, j;
	number current_num;
	unsigned char temp[128];
	unsigned char hash_out[64];
	memset(temp, 0, 128);
	memset(hash_out, 0, 64);
	sha512_context context;

	for(i=0; i<DATABASE_SIZE; i++){
		current_num = numbers[i];
		for(j=0; j<10; j++){
			temp[j] = current_num.num[j];
		}
		sha512_init(&context);
		sha512_update(&context, temp, 128);
		sha512_final(&context, hash_out);
		memcpy(db_hashes + i*64, hash_out, 64);
	}
}

int main(){
	unsigned int seed;
    long long i;
	int j, random_index, num_matched = 0, num_unmatched = 0;
	volatile unsigned char contact_in[64];
	volatile unsigned char database_in[64];
	bool matched_out[DATABASE_SIZE], matched_correct[DATABASE_SIZE];
	volatile int matched_finished, error_out, database_size_out, contacts_size_out;


	// generate random database
	if(syscall(SYS_getrandom, (unsigned char*)(&seed), 4, 0) < 0){
		fprintf(stderr, "Error getting random seed\n");
		return -1;
	}

	printf("Generating numbers database\n");

	generate_numbers();

	hash_numbers();

	printf("Generating contacts\n");

	//select a random numbers to be contacts
	while(contacts.size() < CONTACTS_SIZE){
		random_index = rand() % DATABASE_SIZE;
		unsigned char temp[64];
		for(j=0; j<64; j++){
			temp[j] = db_hashes[random_index*64 + j];
		}
		std::string current((char*)temp, 64);
		if(contacts.count(current) > 0){
			continue;
		} else{
			contacts.insert(current);
		}
	}

	printf("Populating db stream\n");
	for(i=0; i<DATABASE_SIZE*64/4; i++){
		// db_stream.write(db_hashes[i]);
		writeValueToAddress(((unsigned int*)db_hashes)[i], RAM_BUFFER + i*4);
	}

	printf("Checking initial conditions\n");
	//check initial conditions of clearing contacts
	contact_discovery(
		2,
		(unsigned char*)NULL,
		0,
		matched_out,
		(int*)&error_out,
		(int*)&contacts_size_out
	);
	assert(error_out == 0);
	assert(contacts_size_out == 0);


	printf("Populating contacts\n");
	//populate contacts
	std::set<std::string>::iterator it;
	int contacts_size = 0;
	for(it = contacts.begin(); it != contacts.end(); ++it){
		std::string current = *it;
		contact_discovery(
			0,
			(unsigned char*)current.data(),
			0,
			matched_out,
			(int*)&error_out,
			(int*)&contacts_size_out
		);
		contacts_size++;
		assert(error_out == 0);
		assert(contacts_size_out == contacts_size);
	}

	printf("Running Match\n");
	contact_discovery(
		1,
		NULL,
		DATABASE_SIZE,
		matched_out,
		(int*)&error_out,
		(int*)&contacts_size_out
	);
	assert(error_out == 0);
    printf("Matched finished\n");

	for(i=0; i<DATABASE_SIZE; i++){
		unsigned char current_hash[64];
		memcpy(current_hash, db_hashes + i*64, 64);
		std::string current((char*)(current_hash), 64);
		matched_correct[i] = (contacts.count(current) > 0);
	}


	for(j=0; j<DATABASE_SIZE; j++){
      printf("Correct matched %i: %08x\n", j, matched_correct[j]);
      printf("HW matched %i: %08x\n", j, matched_out[j]);
		assert(matched_out[j] == matched_correct[j]);
		if(matched_out[j]){
			num_matched++;
		} else{
			num_unmatched++;
		}

	}
	printf("Contacts match %i, unmatched %i\n", num_matched, num_unmatched);

	return 0;
}

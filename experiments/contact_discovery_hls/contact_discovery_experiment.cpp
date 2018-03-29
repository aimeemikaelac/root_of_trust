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
#include "sha512.h"
#include "user_mmap_driver.h"

#define DATABASE_CHUNK_SIZE 10
#define CONTACTS_SIZE 128
#define DATABASE_SIZE 3000
#define BASE 0xA0000000

void contact_discovery(
	int operation,
	unsigned char contact_in[64],
	unsigned char database_in[64],
	bool matched_out[DATABASE_CHUNK_SIZE],
	int *matched_finished,
	int *error_out,
	int *database_size_out,
	int *contacts_size_out
){
	int i;
	volatile unsigned char *control;
	shared_memory control_mem = getSharedMemoryArea(BASE, 0x1000);
	control = (volatile unsigned char*)(control_mem->ptr);

	//set operation
	control[0x10] = operation;
	//load contact
	if(operation == 0){
		for(i=0; i<64; i++){
			control[0x40 + i] = contact_in[i];
		}
	}
	//load db
	if(operation == 1){
		for(i=0; i<64; i++){
			control[0x80 + i] = database_in[i];
		}
	}
	//start current call
	control[0x0] = 1;
	//wait for done
	while(control[0] & 0x2 != 1){
		asm("");
		__asm__("");
	}
	*matched_finished = *((unsigned int*)(control + 0xD0));
	*error_out = *((unsigned int*)(control + 0xD8));
	*database_size_out = *((unsigned int*)(control + 0xE0));
	*contacts_size_out = *((unsigned int*)(control + 0xE8));
	//read match result
	if(operation == 2){
		unsigned int matched_int = *((unsigned int*)(control + 0xCF));
		matched_out[0] = (bool)(matched_int & 0x1);
		matched_out[1] = (bool)(matched_int & 0x2);
		matched_out[2] = (bool)(matched_int & 0x4);
		matched_out[3] = (bool)(matched_int & 0x8);
		matched_out[4] = (bool)(matched_int & 0x10);
		matched_out[5] = (bool)(matched_int & 0x20);
		matched_out[6] = (bool)(matched_int & 0x40);
		matched_out[7] = (bool)(matched_int & 0x80);
		matched_out[8] = (bool)(matched_int & 0x100);
		matched_out[9] = (bool)(matched_int & 0x200);
	}
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
//			printf("Current rand: %i\n", current_rand);
			current_num.num[j] = current_rand;
//			printf("Current num: %i\n", current_num.num[j]);
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
//		printf("Current num:\n");
		for(j=0; j<10; j++){
			temp[j] = current_num.num[j];
//			printf("%i", temp[j]);
		}
//		printf("\n");
//		sha512(temp, 128, hash_out);
		sha512_init(&context);
		sha512_update(&context, temp, 128);
		sha512_final(&context, hash_out);
//		printf("Current hash:0x");
//		for(j=0; j<64; j++){
//			printf("%02x", hash_out[j]);
//		}
//		printf("\n");
		memcpy(db_hashes + i*64, hash_out, 64);
	}
}

void generate_contacts(){
	int i, j, random_index;
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
}

void populate_contacts_hw(){
	volatile int matched_finished, error_out, database_size_out, contacts_size_out;
	volatile bool matched_out[DATABASE_CHUNK_SIZE];
	printf("Populating contacts\n");
	//populate contacts
	std::set<std::string>::iterator it;
	int contacts_size = 0;
	for(it = contacts.begin(); it != contacts.end(); ++it){
		std::string current = *it;
		contact_discovery(
			0,
			(unsigned char*)current.data(),
			NULL,
			(bool*)matched_out,
			(int*)&matched_finished,
			(int*)&error_out,
			(int*)&database_size_out,
			(int*)&contacts_size_out
		);
		contacts_size++;
	}
}


int main(){
	unsigned int seed;
	int i, j, random_index;
	volatile unsigned char contact_in[64];
	volatile unsigned char database_in[64];
	volatile bool matched_out[DATABASE_CHUNK_SIZE];
	volatile int matched_finished, error_out, database_size_out, contacts_size_out;
	clock_t sw_start, sw_end, hw_start, hw_end;
	double sw_elapsed, hw_elapsed;

	// generate random database
	if(syscall(SYS_getrandom, (unsigned char*)(&seed), 4, 0) < 0){
		fprintf(stderr, "Error getting random seed\n");
		return -1;
	}
	srand(seed);

	generate_contacts();

	populate_contacts_hw();


	printf("Starting matching SW\n");
	int software_count = 0;
	sw_start = clock();
	for(i=0; i<DATABASE_SIZE; i++){
		unsigned char current_hash[64];
		// memcpy(current_hash, db_hashes + i*64, 64);
		std::string current((char*)(db_hashes + i*64), 64);
		if(contacts.count(current) > 0){
			software_count++;
		}
	}
	sw_end = clock();
	sw_elapsed = ((double)(sw_end - sw_start)/CLOCKS_PER_SEC);
	printf("Software matched: %i\n", software_count);
	printf("Software elapse time: %fs\n", sw_elapsed);


	printf("Starting matching HW\n");
	//build chunks and perform matching
	int current_chunk_size = 0;
	int current_chunk_count = 0;
	int num_matched = 0, num_unmatched = 0;
	bool matched_correct[DATABASE_CHUNK_SIZE];
	hw_start = clock();
	for(i=0; i<DATABASE_SIZE; i++){
		unsigned char current_hash[64];
		contact_discovery(
			1,
			NULL,
			db_hashes + i*64,
			(bool*)matched_out,
			(int*)&matched_finished,
			(int*)&error_out,
			(int*)&database_size_out,
			(int*)&contacts_size_out
		);
		current_chunk_size++;
		if(current_chunk_size >= DATABASE_CHUNK_SIZE || i+1 == DATABASE_SIZE){
			// printf("Starting matching for chunk %i\n", current_chunk_count);
			contact_discovery(
				2,
				NULL,
				NULL,
				(bool*)matched_out,
				(int*)&matched_finished,
				(int*)&error_out,
				(int*)&database_size_out,
				(int*)&contacts_size_out
			);
			for(j=0; j<current_chunk_size; j++){
				if(matched_out[j]){
					num_matched++;
				} else{
					num_unmatched++;
				}
			}
			// current_chunk_count++;
			current_chunk_size = 0;
			contact_discovery(
				3,
				(unsigned char*)NULL,
				(unsigned char*)NULL,
				(bool*)matched_out,
				(int*)&matched_finished,
				(int*)&error_out,
				(int*)&database_size_out,
				(int*)&contacts_size_out
			);
		}
	}
	hw_end = clock();
	hw_elapsed = ((double)(hw_end - hw_start)/CLOCKS_PER_SEC);
	printf("Hardware matched: %i\n", num_matched);
	printf("Hardware elapsed: %fs\n", hw_elapsed);
	return 0;
}

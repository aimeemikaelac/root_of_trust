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

#define DATABASE_CHUNK_SIZE 300
#define CONTACTS_SIZE 128
#define DATABASE_SIZE 7500
#define DATABASE_MAX 7500
#define BASE 0xB0000000


void contact_discovery(
	int operation,
	unsigned char contact_in[64],
	unsigned char database_in[64],
	bool matched_out[DATABASE_SIZE],
	int *matched_finished,
	int *error_out,
	int *database_size_out,
	int *contacts_size_out
){
	int i;
	volatile unsigned char *control;
    unsigned int temp;
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
    //set operation valid
    control[0x14] = 1;
	//wait for done
	while(control[0] & 0x2 != 1){
		asm("");
		__asm__("");
	}
//	*matched_finished = *((unsigned int*)(control + 0x4000));
    getValueAtAddress(BASE + 0x4000, (unsigned int*)matched_finished);
//	*error_out = *((unsigned int*)(control + 0x4008));
    getValueAtAddress(BASE + 0x4008, (unsigned int*)error_out);
//	*database_size_out = *((unsigned int*)(control + 0x4010));
    getValueAtAddress(BASE + 0x4010, (unsigned int *)database_size_out);
//	*contacts_size_out = *((unsigned int*)(control + 0x4018));
    getValueAtAddress(BASE + 0x4018, (unsigned int *)contacts_size_out);
	//read match result
	if(operation == 2){
    for(i=0; i<DATABASE_SIZE; i+=4){
//      matched_out[i] = (bool)(control[0x2000 + i]);
      getValueAtAddress(BASE + 0x2000 + i, (unsigned int*)(matched_out + i));
//      matched_out[i] = (bool)(temp);
    }
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

int main(){
	unsigned int seed;
	int i, j, random_index;
	volatile unsigned char contact_in[64];
	volatile unsigned char database_in[64];
	volatile bool matched_out[DATABASE_MAX];
	volatile int matched_finished, error_out, database_size_out, contacts_size_out;

	// generate random database
//	if(syscall(SYS_getrandom, (unsigned char*)(&seed), 4, 0) < 0){
//		fprintf(stderr, "Error getting random seed\n");
//		return -1;
//	}
//	srand(seed);
	srand(time(0));

	printf("Generating numbers database\n");

	generate_numbers();

	hash_numbers();

	printf("Generating contacts\n");

	//select a random numbers to be contacts
	while(contacts.size() < CONTACTS_SIZE){
		random_index = rand() % DATABASE_SIZE;
//		printf("Current rand: %i, current size: %i\n", random_index, contacts.size());
		unsigned char temp[64];
//		printf("Current val: 0x");
		for(j=0; j<64; j++){
			temp[j] = db_hashes[random_index*64 + j];
//			printf("%02x", temp[j]);
		}
//		printf("\n");
		std::string current((char*)temp, 64);
		if(contacts.count(current) > 0){
			continue;
		} else{
			contacts.insert(current);
		}
	}

	printf("Checking initial conditions\n");
	//check initial conditions of clearing db, contacts
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
	contact_discovery(
		4,
		(unsigned char*)NULL,
		(unsigned char*)NULL,
		(bool*)matched_out,
		(int*)&matched_finished,
		(int*)&error_out,
		(int*)&database_size_out,
		(int*)&contacts_size_out
	);
	assert(error_out == 0);
	assert(matched_finished == 0);
	assert(database_size_out == 0);
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
			NULL,
			(bool*)matched_out,
			(int*)&matched_finished,
			(int*)&error_out,
			(int*)&database_size_out,
			(int*)&contacts_size_out
		);
		contacts_size++;
//		printf("Current contacts size: %i\n", contacts_size);
		assert(error_out == 0);
		assert(database_size_out == 0);
  //      printf("contacts size out: %i\n", contacts_size_out);
		assert(contacts_size_out == contacts_size);
	}

	bool matched_correct[DATABASE_SIZE];
	printf("Populating database\n");
	for(i=0; i<DATABASE_SIZE; i++){
		unsigned char current_hash[64];
		memcpy(current_hash, db_hashes + i*64, 64);
		contact_discovery(
			1,
			NULL,
			current_hash,
			(bool*)matched_out,
			(int*)&matched_finished,
			(int*)&error_out,
			(int*)&database_size_out,
			(int*)&contacts_size_out
		);
		assert(error_out == 0);
		assert(database_size_out == i+1);
		std::string current((char*)(current_hash), 64);
		matched_correct[i] = (contacts.count(current) > 0);
	}


	printf("Starting matching\n");
	//build chunks and perform matching
	int current_chunk_size = 0;
	int current_chunk_count = 0;

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
	int num_matched = 0, num_unmatched = 0;
	for(j=0; j<DATABASE_SIZE; j++){
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

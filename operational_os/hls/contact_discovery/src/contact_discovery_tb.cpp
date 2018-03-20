//#include "unistd.h"
#include "stdio.h"
#include <stdlib.h>
//#include <sys/syscall.h>
#include "sha512.h"
#include "string.h"
#include <string>
#include <set>
#include <vector>
#include "assert.h"
#include "time.h"

#define __mbstate_t_defined	1
#define DATABASE_CHUNK_SIZE 10
#define CONTACTS_SIZE 128
#define DATABASE_SIZE 3000

extern void contact_discovery(
		int operation,
		unsigned char contact_in[512],
		unsigned char database_in[512],
		bool matched_out[DATABASE_CHUNK_SIZE],
		int *matched_finished,
		int *error_out,
		int *database_size_out,
		int *contacts_size_out
);

typedef struct number{
	unsigned char num[10];
} number;


number numbers[300];

unsigned char db_hashes[64*DATABASE_SIZE];

static std::set<std::string> contacts;

void generate_numbers(){
	int i, j;
	number current_num;

	for(i=0; i<DATABASE_SIZE; i++){
		current_num = numbers[i];
		for(j=0; j<10; j++){
			current_num.num[i] = ((unsigned char)rand()) % 10;
		}
	}
}

void hash_numbers(){
	int i, j;
	number current_num;

	for(i=0; i<DATABASE_SIZE; i++){
		current_num = numbers[i];
		sha512(current_num.num, 10, db_hashes + i*64);
	}
}

int main(){
	unsigned int seed;
	int i, j, random_index;
	volatile unsigned char contact_in[64];
	volatile unsigned char database_in[64];
	volatile bool matched_out[DATABASE_CHUNK_SIZE];
	volatile int matched_finished, error_out, database_size_out, contacts_size_out;

	// generate random database
//	if(syscall(SYS_getrandom, (unsigned char*)(&seed), 4, 0) < 0){
//		fprintf(stderr, "Error getting random seed\n");
//		return -1;
//	}
//	srand(seed);
	srand(time(0));

	generate_numbers();

	hash_numbers();

	//select a random numbers to be contacts
	while(contacts.size() < CONTACTS_SIZE){
		random_index = rand() % DATABASE_SIZE;
		std::string current((char*)db_hashes[random_index*64], 64);
		if(contacts.count(current) > 0){
			continue;
		} else{
			contacts.insert(current);
		}
	}

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
			(int*)matched_finished,
			(int*)error_out,
			(int*)database_size_out,
			(int*)contacts_size_out
		);
		contacts_size++;
		assert(error_out == 0);
		assert(database_size_out == 0);
		assert(contacts_size_out == contacts_size);
	}

	//build chunks and perform matching
	int current_chunk_size = 0;
	int current_chunk_count = 0;
	std::vector<std::string> current_chunk;
	for(i=0; i<DATABASE_SIZE; i++){
		contact_discovery(
			1,
			NULL,
			db_hashes + i*64,
			(bool*)matched_out,
			(int*)matched_finished,
			(int*)error_out,
			(int*)database_size_out,
			(int*)contacts_size_out
		);
		current_chunk.push_back(std::string((char*)(db_hashes + i*64), 64));
		current_chunk_size++;
		assert(current_chunk_size == database_size_out);
		if(current_chunk_size >= DATABASE_CHUNK_SIZE || i+1 == DATABASE_SIZE){
			contact_discovery(
				2,
				NULL,
				NULL,
				(bool*)matched_out,
				(int*)matched_finished,
				(int*)error_out,
				(int*)database_size_out,
				(int*)contacts_size_out
			);
			assert(matched_finished == 1);
			int num_matched = 0;
			for(j=0; j<DATABASE_CHUNK_SIZE; j++){
				if(matched_out[j]){
					assert(contacts.count(current_chunk[j]) > 0);
				}
				num_matched++;
			}
			printf("Matched %i contacts for block %i\n", num_matched, current_chunk_count);
			current_chunk_count++;
			current_chunk_size = 0;
			current_chunk.clear();
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
			assert(database_size_out == 0);
		}
	}
	return 0;
}














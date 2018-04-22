/*
 * user_mmap_driver.h
 *
 *  Created on: Mar 26, 2015
 *      Author: michael
 */

#ifndef USER_MMAP_DRIVER_H_
#define USER_MMAP_DRIVER_H_

#include <sys/mman.h>
#include <fcntl.h>
#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

//define the variables that will likely be true for calls to the fpga functions
#define AES_DEVICE "aes-qam"
#define UIO_DEVICE "/dev/uio1"
#define RST_DEVICE "axi-reset"
#define SHARED_SIZE 0x800000
//base address of /dev/uio1
#define BASE_ADDRESS 0x1f410000

#ifdef __cplusplus
extern "C" {
#endif

typedef struct shared_memory_struct{
	int fd;
	volatile void* ptr;
	volatile void* original_ptr;
	unsigned length;
	unsigned offset;
	unsigned page_size;
} shared_memory_struct;

typedef shared_memory_struct* shared_memory;

//get an int at an address in system memory
int getValueAtAddress(unsigned long long address, unsigned int* value);
//write an int to an address in system memory
int writeValueToAddress(unsigned int value, unsigned long long address);
//get a pointer to a memory region of a certain length through /dev/mem
shared_memory getSharedMemoryArea(unsigned long long address, unsigned length);
//cleanup a shared_memory struct
void cleanupSharedMemoryPointer(shared_memory mem);
//sync a shred_memory struct
//int syncSharedMemory(shared_memory mem);

shared_memory getUioMemoryArea(char* filename, unsigned mmap_length);
int writeValueToAddressUio(unsigned int value, int offset, char* filename, unsigned length);
int getValueAtAddressUio(int offset, unsigned int* value, char* filename, unsigned length);

#ifdef __cplusplus
}
#endif

#endif /* USER_MMAP_DRIVER_H_ */

#include "user_mmap_driver.h"
#include <stdio.h>
#include <errno.h>

//TODO: refactor this and write function, as setup and unmap is the same in both
//get the value at memory address gpio_addr in system address
//map using GPIO and /dev/map. program must be run as root
int getValueAtAddress(unsigned gpio_addr, unsigned int* value){
	shared_memory mem = getSharedMemoryArea(gpio_addr, 0);

	if(mem == NULL){
		return -1;
	}

	/* Read value from the device register */
	*value = *((unsigned int *)(mem->ptr));
//	printf("gpio dev-mem test: input: %08x\n", *value);

	cleanupSharedMemoryPointer(mem);

	return 0;
}

//write value to address in system memory map using gpio. program
//must still be run as root
int writeValueToAddress(unsigned int value, unsigned gpio_addr){
	shared_memory mem = getSharedMemoryArea(gpio_addr, 0);

	/* Write value to the device register */
	*((unsigned int *)(mem->ptr)) = value;
//	*((unsigned *)(ptr + page_offset + 8)) = value;
	cleanupSharedMemoryPointer(mem);

	return 0;
}

//get the value at memory address gpio_addr in system address
//map using GPIO and /dev/map. program must be run as root
int getValueAtAddressUio(int offset, unsigned int* value, char* filename, unsigned length){
	shared_memory mem = getUioMemoryArea(filename, length);

	if(mem == NULL){
		return -1;
	}

	/* Read value from the device register */
	*value = ((unsigned int *)(mem->ptr))[offset];
//	printf("gpio dev-mem test: input: %08x\n", *value);

	cleanupSharedMemoryPointer(mem);

	return 0;
}

//write value to address in uio memory map using uio. program
//must still be run as root
int writeValueToAddressUio(unsigned int value, int offset, char* filename, unsigned length){
	shared_memory mem = getUioMemoryArea(filename, length);

	/* Write value to the device register */
	((unsigned int *)(mem->ptr))[offset] = value;
//	*((unsigned *)(ptr + page_offset + 8)) = value;
	cleanupSharedMemoryPointer(mem);

	return 0;
}

shared_memory getSharedMemoryArea(unsigned sharedMemoryAddress, unsigned length){
	unsigned page_addr, page_offset;
	//get page size from system
	unsigned page_size=sysconf(_SC_PAGESIZE);
	unsigned mmap_length = page_size;
	if(length != 0){
		mmap_length = length;
	}
	int fd;
	void * ptr = NULL;

	if (sharedMemoryAddress == 0) {
		printf("GPIO physical address is required.\n");
		return NULL;
	}

	/* Open /dev/mem file */
	fd = open ("/dev/mem", O_RDWR|O_SYNC);
	if (fd < 1) {
		perror("Error opening /dev/mem in getValueAtAddress: ");
		return NULL;
	}

	/* mmap the device into memory */
	page_addr = (sharedMemoryAddress & (~(page_size-1)));
	page_offset = sharedMemoryAddress - page_addr;
	ptr = mmap(NULL, mmap_length, PROT_READ|PROT_WRITE, MAP_SHARED, fd, page_addr);
	if(ptr == NULL){
		perror("Error mmapping /dev/mem");
		close(fd);
		return NULL;
	}
	shared_memory mem = malloc(sizeof(shared_memory_struct));
	if(mem != NULL){
		mem -> original_ptr = ptr;
	} else{
		perror("Error mallocing shared mem struct");
		close(fd);
		return NULL;
	}
	//increment ptr to be at the point specified by the input address
	ptr = ptr + ((char)page_offset);

	mem->fd = fd;
	mem->ptr = ptr;
	mem->length = mmap_length;
	mem->offset = page_offset;
	mem->page_size = page_size;
	return mem;
}

shared_memory getUioMemoryArea(char* filename, unsigned mmap_length){
	unsigned page_addr, page_offset;
	//get page size from system
	unsigned page_size=sysconf(_SC_PAGESIZE);
//	unsigned mmap_length = page_size;
//	if(length != 0){
//		mmap_length = length;
//	}
//	mmap_length = 0x10000;
	int fd;
	void * ptr = NULL;

	/* Open /dev/uio0 file */
	fd = open (filename, O_RDWR|O_SYNC);
	if (fd < 1) {
		printf("Error opening uio file: %s\n", filename);
		perror("Error opening uio file in getValueAtAddress: ");
		return NULL;
	}

	/* mmap the device into memory */
	unsigned sharedMemoryAddress = 0x0;
	page_addr = (sharedMemoryAddress & (~(page_size-1)));
	page_offset = sharedMemoryAddress - page_addr;
	ptr = mmap(NULL, mmap_length, PROT_READ|PROT_WRITE, MAP_SHARED, fd, page_addr);
	if(ptr == NULL){
		printf("Error mmaping uio file: %s\n", filename);
		perror("Error mmapping uio file");
		close(fd);
		return NULL;
	}
	shared_memory mem = malloc(sizeof(shared_memory_struct));
	if(mem != NULL){
		mem -> original_ptr = ptr;
	} else{
		printf("Error calling malloc\n");
		perror("Error mallocing shared mem struct");
		close(fd);
		return NULL;
	}
	//increment ptr to be at the point specified by the input address
	ptr = ptr + ((char)page_offset);

	mem->fd = fd;
	mem->ptr = ptr;
	mem->length = mmap_length;
	mem->offset = page_offset;
	mem->page_size = page_size;
//	printf("Test2-----------------------------------\n");
	return mem;
}

//int syncSharedMemory(shared_memory mem){
//	printf("\nAddr: %p\n", mem->ptr);
//	int err = msync(mem->ptr, 1, MS_INVALIDATE|MS_SYNC);
//	if(err == -1){
//	//	printf("\nError encounterd in sync. Error string: %s\n", strerror(errno));
//		perror("msync()");
//	}
//	return err;
//}

void cleanupSharedMemoryPointer(shared_memory mem){
	munmap((void *)mem->ptr, mem->page_size);

	close(mem->fd);

	free(mem);
}

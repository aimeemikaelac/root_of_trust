#include "user_mmap_driver.h"
#include <stdio.h>
#include <errno.h>

//TODO: refactor this and write function, as setup and unmap is the same in both
//get the value at memory address gpio_addr in system address
//map using GPIO and /dev/map. program must be run as root
int getValueAtAddress(unsigned long long gpio_addr, unsigned int* value){
	shared_memory mem = getSharedMemoryArea(gpio_addr, 0);

	if(mem == NULL){
		return -1;
	}

	/* Read value from the device register */
	*value = *((unsigned int*)(mem->ptr));
//	printf("gpio dev-mem test: input: %08x\n", *value);

	cleanupSharedMemoryPointer(mem);

	return 0;
}

//write value to address in system memory map using gpio. program
//must still be run as root
int writeValueToAddress(unsigned int value, unsigned long long gpio_addr){
	shared_memory mem = getSharedMemoryArea(gpio_addr, 4);

	/* Write value to the device register */
    // unsigned int *base = (unsigned int*)(mem->ptr);
    // *base = value;
	*((unsigned int*)(mem->ptr)) = value;
//	*((unsigned *)(ptr + page_offset + 8)) = value;
	cleanupSharedMemoryPointer(mem);

	return 0;
}


shared_memory getSharedMemoryArea(unsigned long long sharedMemoryAddress, unsigned int length){
	unsigned long long page_addr, page_base;
  unsigned long long page_offset;
	//get page size from system
	unsigned long long page_size=sysconf(_SC_PAGESIZE);
	unsigned long long mmap_length = 2*page_size;
/*	if(length != 0){
		mmap_length = length;
	}*/
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
//	page_base = (sharedMemoryAddress & (~(page_size-1)));
	page_base = (sharedMemoryAddress / page_size) * page_size;
	page_offset = sharedMemoryAddress - page_base;
	ptr = mmap(NULL, mmap_length, PROT_READ|PROT_WRITE, MAP_SHARED, fd, page_base);
	if(ptr == MAP_FAILED){
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
	ptr = ptr + page_offset;

	mem->fd = fd;
	mem->ptr = ptr;
	mem->length = mmap_length;
	mem->offset = page_offset;
	mem->page_size = page_size;
	return mem;
}


void cleanupSharedMemoryPointer(shared_memory mem){
	munmap((void *)mem->original_ptr, mem->length);

	close(mem->fd);

	free(mem);
}

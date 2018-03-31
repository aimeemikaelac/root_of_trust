#include <unistd.h>
#include "user_mmap_driver.h"
#include <sys/stat.h>
#include "time.h"

#define ICAP 0xB0010000
#define WRITE_FIFO_OFFSET 0x100
#define SIZE_REG_OFFSET 0x108
#define CONTROL_REG_OFFSET 0x10C
#define STATUS_REG_OFFSET 0x110
#define VACANCY_REG_OFFSET 0x114
#define EOS 0xA0040000
#define DEVCFG_CTRL 0xF8007000

unsigned long get_size_by_fd(int fd) {
    struct stat statbuf;
    if(fstat(fd, &statbuf) < 0) exit(-1);
    return statbuf.st_size;
}

void usage(void)
{
	printf("*argv[0] -f <FILE>\n");
	printf("    -f          File to progam\n");
	return;
}


int main(int argc, char *argv[]){
  char *filename = NULL;
  unsigned int *file_buffer = NULL;
  unsigned int control = 1, status = 1, c = 0, vacancy = 0, devcfg = 0;
  clock_t start, end;
  double elapsed;
  int i;
  while((c = getopt(argc, argv, "f:")) != -1) {
    switch(c) {
    case 'f':
      filename=optarg;
      break;
    default:
      printf("invalid option: %c\n", (char)c);
      usage();
      return -1;
    }

  }

  if(filename == NULL){
    printf("A filename is required\n");
    return -1;
  }

  int fp = open(filename, O_RDONLY);
  if(fp < 0){
    printf("Invalid file: %s\n", filename);
    return -1;
  }
  long fsize = get_size_by_fd(fp);

  file_buffer = (unsigned int*)mmap(0, fsize, PROT_READ, MAP_SHARED, fp, 0);
  if(file_buffer == MAP_FAILED){
    printf("Could not map file\n");
    return -1;
  }

//  getValueAtAddress(ICAP + CONTROL_REG_OFFSET, &control);
/*  if(control != 0){
    printf("ICAP in use. Aborting\n");
  }*/

//  printf("Starting status of control register: %08x\n", control);
//  getValueAtAddress(ICAP + STATUS_REG_OFFSET, &status);
//  printf("Starting status of status register: %08x\n", status);
//  getValueAtAddress(DEVCFG_CTRL, &devcfg);
//  printf("Current devcfg control reg: %08x\n", devcfg);


//  printf("Setting EOS\n");
//  writeValueToAddress(0x1, EOS);

//  printf("Disabling PCAP\n");
//  devcfg &= 0xF3FFFFFF;
//  writeValueToAddress(devcfg, DEVCFG_CTRL);
//  getValueAtAddress(DEVCFG_CTRL, &devcfg);
//  printf("Current devcfg control reg: %08x\n", devcfg);

//  printf("Writing bitstream to FIFO\n");
  start = clock();
  for(i=0; i<fsize/4; i++){
    writeValueToAddress(file_buffer[i], ICAP + WRITE_FIFO_OFFSET);
    getValueAtAddress(ICAP + VACANCY_REG_OFFSET, &vacancy);
//    printf("FIFO vacancy: %08x\n", vacancy);
    if(vacancy == 0){
//      printf("Triggering write in ICAP\n");
      writeValueToAddress(0x1, ICAP + CONTROL_REG_OFFSET);
//      printf("Waiting for control registers to clear\n");
      do{
        getValueAtAddress(ICAP + CONTROL_REG_OFFSET, &control);
      } while(control != 0);
    }
  }

  munmap(file_buffer, fsize);
  close(fp);


//  printf("Triggering write in ICAP\n");
  writeValueToAddress(0x1, ICAP + CONTROL_REG_OFFSET);
//  printf("Waiting for control registers to clear\n");
  do{
    getValueAtAddress(ICAP + CONTROL_REG_OFFSET, &control);
  } while(control != 0);
  end = clock();

//  printf("Final status of control register: %08x\n", control);
//  getValueAtAddress(ICAP + STATUS_REG_OFFSET, &status);
//  printf("Final status of status register: %08x\n", status);
  elapsed = (double)(end-start)/CLOCKS_PER_SEC;
  printf("%f,%li\n",elapsed,fsize);
  return 0;
}

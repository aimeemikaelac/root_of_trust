SOURCES		:= $(wildcard *.c)
CC		:= gcc

.PHONY: clean

all: tb

tb: $(SOURCES)
	$(CC) -o testbench.out $^

clean:
	rm -rf *.o
	rm testbench.out

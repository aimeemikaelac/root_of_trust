CC=g++
CPP_LIBS=-lstdc++ -lc
CFLAGS=-I. -I../user_mmap_driver/ -I/usr/local/include -Ied25519_ecdsa/
LDFLAGS=-L/usr/local/lib/ -lpthread
ED25519=$(wildcard ed25519_ecdsa/*.c)
SOURCES=../user_mmap_driver/user_mmap_driver.c ecdsa_runner_test.cpp $(ED25519)
EXECUTABLE=ecdsa_runner_test

all: $(EXECUTABLE)

$(EXECUTABLE): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS) $(CPP_LIBS)

generate_keypair:
	$(CC) $(CFLAGS) -o $@ generate_keypair.cpp $(ED25519) $(LDFLAGS) $(CPP_LIBS)

clean:
	rm -f ecdsa_runner_test

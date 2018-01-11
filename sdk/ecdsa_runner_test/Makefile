CC=g++
THRIFT_GEN_DIR=../gen-cpp-arm
CPP_LIBS=-lstdc++ -lc
CFLAGS=-I. -I../user_mmap_driver/ -I/usr/local/include/thrift/ -I/usr/local/include -I/usr/local/include/thrift/cpp -I$(THRIFT_GEN_DIR) -Ied25519_ecdsa/
LDFLAGS=-L/usr/local/lib/  -lthrift -lpthread
ED25519=$(wildcard ed25519_ecdsa/*.c)
SOURCES=$(THRIFT_GEN_DIR)/CommunicationToProgram.cpp $(THRIFT_GEN_DIR)/server_to_enclave_program_constants.cpp $(THRIFT_GEN_DIR)/server_to_enclave_program_types.cpp ../user_mmap_driver/user_mmap_driver.c ecdsa_runner_test.cpp $(ED25519)
EXECUTABLE=ecdsa_runner_test

all: $(EXECUTABLE)

$(EXECUTABLE): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS) $(CPP_LIBS)

generate_keypair:
	$(CC) $(CFLAGS) -o $@ generate_keypair.cpp $(ED25519) $(LDFLAGS) $(CPP_LIBS)

clean:
	rm -f ecdsa_runner_test

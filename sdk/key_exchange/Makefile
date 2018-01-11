CC=gcc
CFLAGS=-I. -Ied25519_ecdsa/
ED25519=$(wildcard ed25519_ecdsa/*.c)
SOURCES=key_exchange.c $(ED25519)
EXECUTABLE=key_exchange

all: $(EXECUTABLE)

$(EXECUTABLE): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(EXECUTABLE)

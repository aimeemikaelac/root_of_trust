CC=gcc
INCLUDES=-Iopenssl_out/include/
LIBS=-Lopenssl_out/lib/
CFLAGS=
LDFLAGS=$(LIBS) -lcrypto -lssl
EXECUTABLE=ca_test.o
SOURCES=generate_ed25519_certificate.c

all: $(EXECUTABLE)

$(EXECUTABLE): $(SOURCES)
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ $^ $(LDFLAGS)

clean:
	rm -f $(EXECUTABLE)

CC=g++
CPP_LIBS=-lpistache
LDFLAGS=-Lpistache/build/src $(CPP_LIBS)
CFLAGS=-fPIC -shared -I. -Ipistache/include -Ipicojson/ -Icpp-base64 -I.. -I../user_mmap_driver
SOURCES=enclave_library.cpp
LIBRARY=libenclave.so

all: $(LIBRARY)

$(LIBRARY): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

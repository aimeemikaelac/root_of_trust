#gcc -I. -I../user_mmap_driver/ $(pkg-config --cflags glib-2.0) remote_attestation_demo-arm.c arm_code.c gen-c_glib/remote_attestation_demo_types.c gen-c_glib/remote_attestation_demo.c ../user_mmap_driver/user_mmap_driver.c $(pkg-config --libs glib-2.0) -L/usr/lib/x86_64-linux-gnu -o test.o
CC=gcc
CPP_LIBS=-lstdc++ -lc
CFLAGS=-I. -I../user_mmap_driver/ -I/usr/local/include/thrift/ -I/usr/local/include/thrift/cpp
LDFLAGS=-L/usr/local/lib/ -lthrift
THRIFT_GEN_DIR=gen-cpp
SOURCES=$(wildcard $(THRIFT_GEN_DIR)/*.cpp) arm_code.c ../user_mmap_driver/user_mmap_driver.c
OUTDIR=output
EXECUTABLE=test.o
MKDIR=mkdir -p

all: $(OUTDIR) $(EXECUTABLE)

$(OUTDIR):
	$(MKDIR) $(OUTDIR)

$(EXECUTABLE): $(SOURCES)
	$(CC) $(CFLAGS) -o $(OUTDIR)/$@ $^ $(LDFLAGS) $(CPP_LIBS)

clean:
	rm -rf output/

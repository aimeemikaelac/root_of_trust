INCLUDES        := -I user_mmap_driver/
CFLAGS          := $(INCLUDES)
CXXFLAGS        := $(INCLUDES)
LDFLAGS         :=
LIBS            := user_mmap_driver/user_mmap_driver.o sha512.o
TEST_STREAMING  := contact_discovery_test
EXP_STREAMING		:= contact_discovery_experiment

.PHONY: clean

all: $(EXP_STREAMING)

$(TEST_STREAMING): $(TEST_STREAMING).o $(LIBS)
	$(CXX) -o $@ $^ $(LDFLAGS)

$(EXP_STREAMING): $(EXP_STREAMING).o $(LIBS)
	$(CXX) -o $@ $^ $(LDFLAGS)

clean:
	$(RM) -rf $(LIBS)
	$(RM) -rf *.o
	$(RM) -rf $(TEST_STREAMING)
	$(RM) -rf $(EXP_STREAMING)

INCLUDES  := -I user_mmap_driver/
CFLAGS    := $(INCLUDES)
CXXFLAGS  := $(INCLUDES)
LDFLAGS		:=
LIBS      := user_mmap_driver/user_mmap_driver.o sha512.o
TEST      := contact_discovery_tester
EXP				:= contact_discovery_experiment

.PHONY: clean

all: $(EXP)

exp: $(EXP)

test: $(TEST)

$(EXP): $(EXP).o $(LIBS)
	$(CXX) -o $@ $^ $(LDFLAGS)

$(TEST): $(TEST).o $(LIBS)
	$(CXX) -o $@ $^ $(LDFLAGS)

clean:
	$(RM) -rf $(LIBS)
	$(RM) -rf *.o
	$(RM) -rf $(EXEC)
	$(RM) -rf $(TEST)

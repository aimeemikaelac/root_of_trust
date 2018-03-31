INCLUDES  := -I user_mmap_driver/
CFLAGS    := $(INCLUDES)
CXXFLAGS  := $(INCLUDES)
LDFLAGS		:=
LIBS      := user_mmap_driver/user_mmap_driver.o sha512.o
TEST_DB_LOAD      := contact_discovery_tester_db_load
TEST_DB_ONE		:= contact_discovery_tester_db_one_load
DB_EXP				:= contact_discovery_experiment_db_loading

.PHONY: clean

all: $(DB_EXP)

db_exp: $(DB_EXP)

test_db_load: $(TEST_DB_LOAD)

test_db_one: $(TEST_DB_ONE)

$(DB_EXP): $(DB_EXP).o $(LIBS)
	$(CXX) -o $@ $^ $(LDFLAGS)

$(TEST_DB_LOAD): $(TEST_DB_LOAD).o $(LIBS)
	$(CXX) -o $@ $^ $(LDFLAGS)

$(TEST_DB_ONE): $(TEST_DB_ONE).o $(LIBS)
	$(CXX) -o $@ $^ $(LDFLAGS)

clean:
	$(RM) -rf $(LIBS)
	$(RM) -rf *.o
	$(RM) -rf $(DB_EXP)
	$(RM) -rf $(TEST_DB_LOAD)
	$(RM) -rf $(TEST_DB_ONE)

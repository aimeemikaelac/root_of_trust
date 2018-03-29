SRCS_C    := $(wildcard *.c) $(wildcard **/*.c)
SRCS_CPP  := $(wildcard *.cpp) $(wildcard **/*.cpp)
INCLUDES  := -I user_mmap_driver/
CFLAGS    := $(INCLUDES)
CXXFLAGS  := $(INCLUDES)
LDFLAGS		:=
OBJS      := $(SRCS_CPP:.cpp=.o) $(SRCS_C:.c=.o)
EXEC      := contact_discovery_runner

.PHONY: clean

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CXX) -o $@ $^ $(LDFLAGS)

clean:
	$(RM) -rf $(OBJS)
	$(RM) -rf $(EXEC)

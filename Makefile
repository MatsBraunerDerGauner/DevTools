CFLAGS = gcc -g 

MAIN_BINARIES = $(basename $(wildcard *Main.c))
HEADERS = $(wildcard Include/*.h)
OBJECTS = $(addsuffix .o, $(basename $(filter-out %Main.c, $(wildcard *.c))))

INCLUDE = 
LIB = 

.PRECIOUS: %.o 
.SUFFIXES:

all: compile

debug: compile
	gdb $(basename $(wildcard *Main.exe))

compile: $(MAIN_BINARIES)

%Main: %Main.o $(OBJECTS)
	$(CFLAGS) -o $@ $^ $(LIB) 

%.o: %.c $(HEADERS)
	$(CFLAGS) $(INCLUDE) -c $*.c

clean:
	rm *.o
	rm $(MAIN_BINARIES).exe

run:
	$(basename $(wildcard *Main.exe))

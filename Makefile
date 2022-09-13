 # the compiler: gcc for C program, define as g++ for C++
CC = g++

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall

# the build target executable:
TARGET = main

all: $(TARGET)

$(TARGET): utilities.o ppm.o mrn.o sppm.o spmf.o init.o config.o
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).cpp utilities.o ppm.o mrn.o sppm.o spmf.o init.o config.o

utilities.o: utilities.cpp config.h utilities.h ppm.h

ppm.o: ppm.cpp utilities.h ppm.h mrn.h

mrn.o: mrn.cpp utilities.h mrn.h

sppm.o: sppm.cpp utilities.h ppm.h mrn.h sppm.h

spmf.o: spmf.cpp utilities.h sppm.h spmf.h mrn.h

init.o: init.cpp ppm.h init.h

config.o: config.cpp config.h mrn.h ppm.h


.PHONY: clean
clean:
	$(RM) $(TARGET) *.o *~
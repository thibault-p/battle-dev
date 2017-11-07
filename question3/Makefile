# the compiler: gcc for C program, define as g++ for C++
CC = gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall

# the build target executable:
TARGET = main

all: $(TARGET)

$(TARGET): src/$(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) src/$(TARGET).c

clean:
	rm -f $(TARGET)

test: $(TARGET)
	../runtest.sh .

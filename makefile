# Define the compiler
CC = gcc

# Define the flags
CFLAGS = -Wall -Wextra

# Define the target executable
TARGET = hello

# Find all C source files in the current directory
SRC = $(wildcard *.c)

# Define the object files
OBJ = $(SRC:.c=.o)

# Default target to build the executable
all: $(TARGET)

# Link object files to create the executable
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# Compile each C file into an object file
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -f $(OBJ) $(TARGET)
#
# Top-level makefile; starts the whole shebang rolling
#
CC=gcc
CFLAGS=-std=c11 -pedantic -Wall -Werror -g

TARGET=package/demo
SUBDIRS=src

#
# Marking these targets as .PHONY means they will
# always build, even if there's a file with 
# the same name in the directory.
#
.PHONY: all clean $(TARGET) $(SUBDIRS)

all: $(TARGET)

clean: $(SUBDIRS)
	rm -rf $(TARGET)

#
# Target depends on all subdirectories having built successfully
#
$(TARGET): $(SUBDIRS)
	$(CC) -o $@ $(CFLAGS) $(wildcard build/*.o)

#
# Build all subdirectories
#
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)


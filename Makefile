CC=gcc
CFLAGS=-std=c11 -pedantic -Wall -Werror -g

TARGET=package/demo
SUBDIRS=src

.PHONY: all clean $(TARGET) $(SUBDIRS)

all: $(TARGET)

clean: $(SUBDIRS)
	rm -rf $(TARGET)

$(TARGET): $(SUBDIRS)
	$(CC) -o $@ $(CFLAGS) $(wildcard build/*.o)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)


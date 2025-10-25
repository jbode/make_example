CC=gcc
CFLAGS=-std=c11 -pedantic -Wall -Werror -g

TOPDIR=..

#
# Object files will be written to $BLDDIR,
# header files will be copied to $INCDIR
#
BLDDIR=$(TOPDIR)/build
INCDIR=$(TOPDIR)/include

#
# Add $INCDIR to the list of directories to be
# searched for header files
#
CFLAGS += -I $(INCDIR)

SRCS=main.c

#
# Make sure objects are build to the build subdirectory
# main.c => ../build/main.o
#
OBJS=$(SRCS:%.c=$(BLDDIR)/%.o)

#
# Anything with a name ending in "dir" is
# a subdirectory to be built.
#
SUBDIRS=$(wildcard *dir)

.PHONY: all clean $(SUBDIRS)

all: $(SUBDIRS) $(OBJS)

clean: $(SUBDIRS)
	rm -rf $(OBJS)

$(OBJS): $(SRCS)
	$(CC) -c -o $@ $(CFLAGS) $<

# 
# Recursively call make for each subdirectory
#
$(SUBDIRS):
	echo making $@
	$(MAKE) -C $@ $(MAKECMDGOALS)

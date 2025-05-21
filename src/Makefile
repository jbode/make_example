CC=gcc
CFLAGS=-std=c11 -pedantic -Wall -Werror -g

TOPDIR=..
BLDDIR=$(TOPDIR)/build
INCDIR=$(TOPDIR)/include

CFLAGS += -I $(INCDIR)

SRCS=main.c
OBJS=$(SRCS:%.c=$(BLDDIR)/%.o)

SUBDIRS=$(wildcard *dir)

.PHONY: all clean $(SUBDIRS)

all: $(SUBDIRS) $(OBJS)

clean: $(SUBDIRS)
	rm -rf $(OBJS)

.SECONDEXPANSION:

$(OBJS): $$(patsubst $(BLDDIR)/%.o, %.c, $$@)
	$(CC) -c -o $@ $(CFLAGS) $<

$(SUBDIRS):
	echo making $@
	$(MAKE) -C $@ $(MAKECMDGOALS)

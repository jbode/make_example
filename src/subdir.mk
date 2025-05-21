CC=gcc
CFLAGS=-std=c11 -pedantic -Wall -Werror -g

TOPDIR=../..
BLDDIR=$(TOPDIR)/build
INCDIR=$(TOPDIR)/include

OBJS=$(SRCS:%.c=$(BLDDIR)/%.o)
HDRS=$(SRCS:%.c=$(INCDIR)/%.h)

.PHONY: all clean

.SECONDEXPANSION:

all: $(OBJS) $(HDRS)

clean:
	rm -rf $(OBJS) $(HDRS)

$(OBJS): $$(patsubst $(BLDDIR)/%.o, %.c, $$@)
	$(CC) -c -o $@ $(CFLAGS) $<

$(HDRS): $$(patsubst $(INCDIR)/%.h, %.h, $$@)
	cp $< $(INCDIR)


SHELL = /bin/sh
NULLCMD = :

#### Start of system configuration section. ####

srcdir = .
VPATH = $(srcdir)/missing

CC = gcc
YACC = bison -y
PURIFY =
OBJS = eval.o parse.o
CFLAGS = -g -O2
LD = gcc
LDADD = 

default: $(OBJS)
	$(LD) $(LDADD) $(OBJS) -o tp1

.c.o:
	$(CC) $(CFLAGS)    -DRUBY_EXPORT -D_GNU_SOURCE=1  -I. -I.    -c $<

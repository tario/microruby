SHELL = /bin/sh
NULLCMD = :

#### Start of system configuration section. ####

srcdir = .
VPATH = $(srcdir)/missing

CC = gcc
YACC = bison -y
PURIFY =
OBJS = eval.o parse.o gc.o string.o error.o class.o variable.o hash.o st.o enumerator.o array.o object.o numeric.o bignum.o signal.o enum.o compar.o util.o sprintf.o re.o regex.o range.o random.o io.o inits.o file.o time.o ruby.o process.o struct.o  version.o prec.o
CFLAGS = -g -O2
LD = gcc
LDADD = -lm -lrt

default: $(OBJS)
	$(LD) $(LDADD) $(OBJS) -o tp1

.c.o:
	$(CC) $(CFLAGS)    -DRUBY_EXPORT -D_GNU_SOURCE=1  -I. -I.    -c $<

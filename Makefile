SHELL = /bin/sh
NULLCMD = :

#### Start of system configuration section. ####

srcdir = .
VPATH = $(srcdir)/missing

CC = gcc
YACC = bison -y
PURIFY =
OBJS = eval.o parse.o gc.o string.o error.o class.o variable.o hash.o st.o enumerator.o array.o object.o numeric.o bignum.o signal.o enum.o compar.o util.o sprintf.o re.o regex.o range.o random.o inits.o time.o ruby.o struct.o  version.o prec.o main.o
CFLAGS = -g -O0
LD = gcc
LDADD = -lm -lrt

default: $(OBJS)
	$(LD) $(LDADD) $(OBJS) -o microruby

.c.o:
	$(CC) $(CFLAGS)    -DRUBY_EXPORT -D_GNU_SOURCE=1  -I. -I.    -c $<

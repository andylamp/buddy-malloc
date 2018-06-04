CFLAGS= -O3 -Wall -fPIC -pg

LIB= lib-buddy.a

OBJS= lib-buddy.o

all: $(LIB)

lib-buddy.o: buddy-malloc.c
	cc $(CFLAGS) -c buddy-malloc.c -o $@

lib-buddy.a: $(OBJS)
	ar rcs $@ $(OBJS)

clean:
	rm $(OBJS) lib-buddy.a

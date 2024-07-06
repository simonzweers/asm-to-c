AS=/usr/bin/as
LD=/usr/bin/ld
CC=/usr/bin/cc

all: main

main: main.o start.o # link
	${LD} -o $@ $^ -nostdlib -static

main.o: main.c # compile main.c
	${CC} -o $@ $^ -c -nostdlib -static

start.o: start.s # compile start.s 
	${AS} -o $@ $^

clean:
	rm *.o main
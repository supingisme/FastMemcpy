
CC=aarch64-unknown-nto-qnx7.0.0-gcc
all: FastMemcpy

CFLAGS +=  -O2 -fomit-frame-pointer -fno-strength-reduce 

FastMemcpy: FastMemcpy.c memcpy.o
	${CC} ${CFLAGS} -o FastMemcpy FastMemcpy.c memcpy.o -lm


memcpy.o: memcpy.S
	${CC} ${CFLAGS} -c memcpy.S

clean:
	-rm -f FastMemcpy
	-rm -f *.o

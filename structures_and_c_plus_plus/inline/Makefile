# http://pirate.shu.edu/~minimair/assembler/Makefile
#
all: main

main :
	g++ -m32 -o main main.cpp

convert2nasm : main.cpp
	g++ -m32 -fno-asynchronous-unwind-tables -s -c -o main.o main.cpp
	# requires objconv to be installed
	# https://www.agner.org/optimize/#objconv
	objconv -fnasm main.o

asymain: main.asm
	nasm -f elf main.asm
	g++ -m32 main.o -o main

run : main
	./main

debug:
	gdb ./main

clean :
	@rm *.o *.s main.asm main

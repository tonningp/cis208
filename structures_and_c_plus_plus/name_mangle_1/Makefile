# http://pirate.shu.edu/~minimair/assembler/Makefile
#
all: main

zero_y.o : zero_y.asm
	nasm -f elf -g -F stabs zero_y.asm -o zero_y.o

main : zero_y.o 
	g++ -m32 -o main *.o main.cpp

run : main
	./main
edit:
	vim zero_y.asm
debug:
	gdb ./main
clean :
	@rm *.o *.list main

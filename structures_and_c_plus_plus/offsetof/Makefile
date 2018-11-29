# http://pirate.shu.edu/~minimair/assembler/Makefile
#
all: main

asm_io.o : asm_io.asm
	nasm -dELF_TYPE -f elf -g asm_io.asm -o asm_io.o


zero_y.o : zero_y.asm
	nasm -f elf -g -F stabs zero_y.asm -o zero_y.o

main : zero_y.o asm_io.o
	gcc -m32 -o main *.o main.c

run : main
	./main
edit:
	vim zero_y.asm
debug:
	gdb ./main
clean :
	@rm *.o *.list main

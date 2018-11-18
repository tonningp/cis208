# http://pirate.shu.edu/~minimair/assembler/Makefile
#
all: main

asm_io.o : asm_io.asm
	nasm -dELF_TYPE -f elf -g asm_io.asm -o asm_io.o

sub4.o : sub4.asm
	nasm -l sub4.list -f elf -g -F stabs sub4.asm -o sub4.o

main4.o : main4.asm
	nasm -l main4.list -f elf -g -F stabs main4.asm -o main4.o

main : asm_io.o sub4.o main4.o
	gcc -m32 -o main sub4.o main4.o asm_io.o main.c

run : 
	./main

edit:
	vim sub4.asm

debug:
	gdb ./main

clean :
	@rm *.o *.list main

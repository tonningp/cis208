# http://pirate.shu.edu/~minimair/assembler/Makefile
#
all: main

asm_io.o : asm_io.asm
	nasm -dELF_TYPE -f elf -g asm_io.asm -o asm_io.o

sub1.o : sub1.asm
	nasm -l sub1.list -f elf -g -F stabs sub1.asm -o sub1.o

main : asm_io.o sub1.o
	gcc -m32 -o main sub1.o asm_io.o main.c

run : 
	./main

edit:
	vim sub1.asm

debug:
	gdb ./main

clean :
	@rm *.o *.list main

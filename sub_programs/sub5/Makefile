# http://pirate.shu.edu/~minimair/assembler/Makefile
#
all: main

asm_io.o : asm_io.asm
	nasm -dELF_TYPE -f elf -g asm_io.asm -o asm_io.o

sub5.o : sub5.asm
	nasm -l sub5.list -f elf -g -F stabs sub5.asm -o sub5.o

main : asm_io.o sub5.o main5.o
	gcc -m32 -o main sub5.o asm_io.o main5.c

run : 
	./main

edit:
	vim sub5.asm

debug:
	gdb ./main

clean :
	@rm *.o *.list main

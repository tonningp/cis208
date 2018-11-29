# http://pirate.shu.edu/~minimair/assembler/Makefile
#
all: main

asm_io.o : asm_io.asm
	nasm -dELF_TYPE -f elf -g asm_io.asm -o asm_io.o


bitfield_size.o : bitfield_size.asm
	nasm -f elf -g -F stabs bitfield_size.asm -o bitfield_size.o

main : bitfield_size.o asm_io.o
	gcc -m32 -o main *.o main.c

run : main
	./main
edit:
	vim bitfield_size.asm
debug:
	gdb ./main
clean :
	@rm *.o *.list main

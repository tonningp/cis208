# http://pirate.shu.edu/~minimair/assembler/Makefile
#
all: main

asm_io.o : asm_io.asm
	nasm -dELF_TYPE -f elf -g asm_io.asm -o asm_io.o

asm_main.o : asm_main.asm
	nasm -l asm_main.list -f elf -g -F stabs asm_main.asm -o asm_main.o

main : asm_io.o asm_main.o
	gcc -m32 -o main asm_main.o asm_io.o main.c

run : 
	./main
edit:
	vim asm_main.asm

debug:
	gdb ./main

idebug:
	gdb ./main

nidbg:
	gdb --quiet --command=debug/asm_main.gdb ./main

clean :
	@rm *.o *.list main

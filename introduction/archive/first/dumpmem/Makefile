dumpmem : dumpmem.o
	gcc -m32 -o dumpmem dumpmem.o asm_io.o

dumpmem.o : dumpmem.s
	nasm -l dumpmem.list -f elf -g -F stabs dumpmem.s -o dumpmem.o

run : 
	./dumpmem

clean :
	rm dumpmem.o dumpmem

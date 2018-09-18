eatsyscall : eatsyscall.o
	#ld -melf_i386 -o eatsyscall eatsyscall.o asm_io.o
	gcc -m32 -o eatsyscall eatsyscall.o asm_io.o

eatsyscall.o : eatsyscall.s
	nasm -f elf -g -F stabs eatsyscall.s -o eatsyscall.o
	#nasm -f elf -g  eatsyscall.asm -o eatsyscall.o

run : 
	./eatsyscall

clean :
	rm eatsyscall.o eatsyscall

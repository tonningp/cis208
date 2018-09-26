addtwo : addtwo.o
	ld -m elf_i386 -o addtwo addtwo.o 

addtwo.o : addtwo.asm
	nasm -l addtwo.list -f elf32 -g -F stabs addtwo.asm -o addtwo.o

run : 
	./addtwo

debug : addtwo
	gdb --batch --command=debug.gdb --args ./addtwo
clean :
	rm addtwo.o addtwo 2>/dev/null

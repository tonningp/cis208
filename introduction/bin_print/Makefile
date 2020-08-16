addtwo : addtwo.o
	gcc -m32 -o addtwo addtwo.o asm_io.o

addtwo.o : addtwo.s
	nasm -l addtwo.list -f elf -g -F stabs addtwo.s -o addtwo.o

run : addtwo
	./addtwo

clean :
	rm addtwo.o addtwo

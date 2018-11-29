# http://pirate.shu.edu/~minimair/assembler/Makefile
#
all: main


big_math.o : big_math.asm
	nasm -f elf -g -F stabs big_math.asm -o big_math.o

big_int.o : big_int.cpp
	g++ -m32 -c big_int.cpp

main : big_math.o big_int.o
	g++ -m32 -o main big_math.o big_int.o main.cpp

run : main
	./main

edit:
	vim asm_main.asm
debug:
	gdb ./main
clean :
	@rm *.o *.list main

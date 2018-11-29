# http://pirate.shu.edu/~minimair/assembler/Makefile
#
all: main

main :
	g++ -m32 -o main main.c

run : main
	./main

debug:
	gdb ./main

clean :
	@rm *.o *.s main.asm main

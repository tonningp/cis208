# http://pirate.shu.edu/~minimair/assembler/Makefile
#
all: main

asm_io.o : asm_io.asm
	nasm -dELF_TYPE -f elf -g asm_io.asm -o asm_io.o

asm_main.o : asm_main.asm
	nasm -l asm_main.list -f elf -g -F stabs asm_main.asm -o asm_main.o

bubble_sort.o : bubble_sort.asm
	nasm -l bubble_sort.list -f elf -g -F stabs bubble_sort.asm -o bubble_sort.o

fill_array.o : fill_array.asm
	nasm -l fill_array.list -f elf -g -F stabs fill_array.asm -o fill_array.o

get_random.o : get_random.asm
	nasm -l get_random.list -f elf -g -F stabs get_random.asm -o get_random.o

print_array.o : print_array.asm
	nasm -l print_array.list -f elf -g -F stabs print_array.asm -o print_array.o

swap.o : swap.asm
	nasm -l swap.list -f elf -g -F stabs swap.asm -o swap.o

main : asm_io.o asm_main.o bubble_sort.o fill_array.o get_random.o print_array.o swap.o main.c
	@echo "compiling main.c and linking"
	@gcc -m32 -o main \
		asm_main.o \
		bubble_sort.o \
		fill_array.o \
		get_random.o \
		print_array.o \
		swap.o \
		asm_io.o \
		main.c

run : 
	./main

edit:
	vim asm_main.asm
debug:
	gdb ./main
dbs:
	gdb -x gdb.init ./main

clean :
	@rm *.o *.list main

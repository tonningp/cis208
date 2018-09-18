hello: hello.o
	@ld -m elf_i386 -o hello hello.o

hello.o: hello.asm
	@nasm -f elf hello.asm

clean:
	@rm hello hello.o
	@echo 'cleaned'
run: hello
	@./hello

edit:
	@vim hello.asm

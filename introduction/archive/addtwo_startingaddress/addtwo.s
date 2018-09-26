%include "asm_io.inc"
%include "util.inc"

segment .data

segment .bss

segment .text
	global main
	extern _start

main:
	nop
test:
	mov	eax,_start
	dump_regs 1		; registers before
test2:
    mov     eax, 10       ; store address of input1 into ebx
	dump_regs 2		; registers after putting 10 in eax
    add eax,20		; add 20 to what is currently in eax
test3:
	dump_regs 3		; registers after addition
	nop
	call 	exit_program      ; exit the program

%include "asm_io.inc"

segment .data

mesg1: db 0,1,2,3,4,5,6,7,8,9,0xA,0xB,0xC,0xD,0xE,0xF
mesg2: db "0123456789ABCDEF"
mesg3: db "0123456789ABCDEF"
mesg4: db "0123456789ABCDEF"
mesg5: db "0123456789ABCDEF"
EatMsg: db "Eat at Joe's!",10,0
outmesg1: db "This is the output",0

EatLen: equ $-EatMsg

segment .bss

segment .text
	global main

main:
	nop
	mov 	eax,EatMsg
	call 	print_string
	dump_regs 1
	dump_mem 2,mesg1,1

	mov eax,1
	mov ebx,0
	int 80H

%include "asm_io.inc"

segment .data

EatMsg: db "Eat at Joe's!",10,0

EatLen: equ $-EatMsg

segment .bss

segment .text
	global main

main:
	nop
	mov eax,4
	mov ebx,1
	mov ecx,EatMsg
	mov edx,EatLen
	int 80H


	mov eax,1
	mov ebx,0
	int 80H

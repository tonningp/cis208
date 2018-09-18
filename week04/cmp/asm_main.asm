;
; file: math.asm
; This program demonstrates how the integer multiplication and division
; instructions work.
;
; To create executable:
; nasm -f coff math.asm
; gcc -o math math.o driver.c asm_io.o

%include "asm_io.inc"

segment .data
;
; Output strings
;
prompt          db    "Enter a number: ", 0

segment .bss
input   resd 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha


b1:
	mov eax,20
	mov ebx,10

	cmp eax,ebx
b2:
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret







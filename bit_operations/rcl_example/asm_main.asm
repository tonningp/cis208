; file: asm_main.asm
;
; 

%include "asm_io.inc"

extern printf
segment .data
;
; Output strings
;
num1: db 0x3
uint_format: db "%u",10,0

segment .bss
input:   resb 100H
segment .text
        global  asm_main,printf
asm_main:
        enter   0,0             ;setup routine
        pusha
        mov     ax,0C123H
        clc
		mov		eax,0xFFFFFFFF
		push    eax
		push    dword uint_format
		call    printf
		pop ecx
		pop ecx
b1:
        rcl     ax,1
        rcl     ax,1
        rcl     ax,1
        rcr     ax,2
        rcr     ax,1

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

%include "asm_io.inc"
;
; file: array1.asm
; This program demonstrates arrays in assembly
;
; To create executable:
; nasm -f coff array1.asm
; gcc -o array1 array1.o array1c.c
;

segment .data
array1 dd 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
string1 db "This is some junk data",0

segment .bss
array2 resd 10


segment .text
        global  asm_main
asm_main:
        enter   0,0       
        cld ; don’t forget this!
        mov esi, array1
        mov edi, array2
        mov ecx, 10
lp:
        lodsd
        stosd
        loop lp

        mov ecx,10
        mov edi, string1
        xor eax,eax
        mov al,'X'
        rep stosb
b1:
        mov     eax, 0            ; return back to C
        leave                     
        ret


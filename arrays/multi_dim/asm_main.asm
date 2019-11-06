%include "asm_io.inc"

%define DWORD_FACTOR 4
segment .data

matrix:  dd 11,12,21,22,31,32

segment .text
        global  asm_main
        

asm_main:
        enter   0,0            
        pusha

        mov ebx, matrix  

        mov eax, [ebx + 2*(DWORD_FACTOR * 1) + DWORD_FACTOR * 1]
b1:
        call print_int 
        call print_nl

        popa
        mov   eax,0
        leave
        ret


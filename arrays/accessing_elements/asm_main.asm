%include "asm_io.inc"
;
; file: array1.asm
; This program demonstrates arrays in assembly
;
; To create executable:
; nasm -f coff array1.asm
; gcc -o array1 array1.o array1c.c
;

%define ARRAY_SIZE 5
%define BYTE 1
%define WORD 2
%define DOUBLEWORD 4

segment .data

array1  db  5,4,3,2,1 ; array of bytes
array2  dw  5,4,3,2,1 ; array of words

array3  dd  5,4,3,2,1 ; array of words

segment .bss

 

segment .text
        global  asm_main
asm_main:
        enter   0,0       
        xor eax,eax 
        mov al,byte[array1+2]
b1:
        mov ebx,array2
        mov ecx,ARRAY_SIZE
loop1:
        mov al,[ebx]
        call print_int
        add ebx,WORD
        loop loop1

        call print_nl

        xor eax,eax 
        mov ebx,array3
        mov ecx,ARRAY_SIZE
        mov edx,0
loop2:
        mov eax,[ebx+DOUBLEWORD*edx]
        call print_int
        inc edx
        loop loop2

        call print_nl

        mov     eax, 0            ; return back to C
        leave                     
        ret


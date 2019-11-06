%include "asm_io.inc"

;
; file: array1.asm
; This program demonstrates arrays in assembly
;
; To create executable:
; nasm -f coff array1.asm
; gcc -o array1 array1.o array1c.c
;

%define ARRAY_SIZE 100
%define NEW_LINE 10

segment .data

array1  db  5,4,3,2,1 ; array of bytes

segment .bss

 

segment .text
        global  asm_main
asm_main:
        enter   0,0       

        xor eax,eax 

        mov ebx,array1 ; ebx = address of array1
        mov dx, 0 ; dx will hold sum
        mov ecx, 5
lp:
        add dl, [ebx] ; dl += *ebx
        adc dh,   0 ; dh += carry flag + 0
        inc ebx   ; bx++
        loop lp   ;

        mov  al,dl
        call print_int
        call print_nl

        mov     eax, 0            ; return back to C
        leave                     
        ret


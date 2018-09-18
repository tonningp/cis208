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

b1:                               ;make a label for breaks
        mov eax,10
        call print_int
        call print_nl

        jmp b3
b2:
        mov eax,20
        call print_int
        call print_nl
b3:
        mov eax,30
        call print_int
        call print_nl
       
        mov eax,30
        mov ebx,30
        cmp eax,ebx
aftercmp:
        jz b5

b4:     
        mov eax,100
        call print_int
        call print_nl
b5:
        
        mov eax,200
        call print_int
        call print_nl
    
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
















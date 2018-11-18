;
; file: sub3.asm
; Subprogram example program
;

%include "asm_io.inc"

segment .data
sum     dd   0

segment .bss
input   resd 1

 

segment .text
        global  asm_main

asm_main:
        enter   0,0               ; setup routine
        pusha
        ;push    dword 10
        ;push    dword 20
        call    add
        ;pop     eax
        ;pop     eax

        popa
        leave                     
        ret

segment .data
prompt1 db "Enter first number",10,0
prompt2 db "Enter second number",10,0
segment .bss
input1  resd 1
input2  resd 1
segment .text
add:
        push    ebp
        mov     ebp, esp
        mov     eax,prompt1
        call    print_string
        call    read_int
        push    eax
        mov     eax,prompt2
        call    print_string
        mov     eax,input2
        call    read_int
        add     eax,[esp]
        mov     eax,0xFFFFFFFF
        call    print_uint
        call    print_nl
        pop     eax
        pop     ebp
        ret







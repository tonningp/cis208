;
; file: asm_main.asm
; description: this file demonstrates simple compares
;

%include "asm_io.inc"

segment .data
;
; Output strings
;
before          db    "Before cmp: ",10,0
after           db    "After cmp: ",10,0

segment .bss
input   resd 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha


        mov eax,1
        mov ebx,1
        cmp eax,ebx
b1:

        mov eax,1
        mov ebx,2
        cmp eax,ebx

b2:
        mov eax,20
        mov ebx,10
        cmp eax,ebx

b3:
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret







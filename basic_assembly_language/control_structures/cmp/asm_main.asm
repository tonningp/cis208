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


b1:
        mov eax,before
        call print_string
        mov eax,20
        mov ebx,20
        dump_regs 1
        cmp eax,ebx
        dump_regs 2
        mov eax,before
        call print_string
        mov eax,10
        mov ebx,20
        dump_regs 3
        cmp eax,ebx
        dump_regs 4
        mov eax,before
        call print_string
        mov eax,20
        mov ebx,10
        dump_regs 5
        cmp eax,ebx
        dump_regs 6

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret







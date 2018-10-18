; file: asm_main.asm
;
; 

%include "asm_io.inc"

segment .data
;
; Output strings
;
num1: db 0x3

segment .bss
input:   resb 100H


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha
        mov     ax,0C123H
b1:
        rol     ax,1
        rol     ax,1
        rol     ax,1
        rol     ax,1
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

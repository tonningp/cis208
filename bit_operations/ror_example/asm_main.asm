; file: asm_main.asm
;
; 

%include "asm_io.inc"

segment .data
;
; Output strings
;
num1: db 0xf

segment .bss
input:   resb 100H


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha
        mov     eax,0x0
        mov     al,[num1]
b1:
        ror     al,1
        ror     al,1
        ror     al,1
        ror     al,1
        ror     al,1
b2:
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

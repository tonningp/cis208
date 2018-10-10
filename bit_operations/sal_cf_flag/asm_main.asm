; file: asm_main.asm
;
; An assembly function that repeatedly asks user for an r p or s for rock, paper scissors
; The function will keep on asking the user for the number until it is valid. 
; 

%include "asm_io.inc"

segment .data
;
; Output strings
;
num1: dd -1

segment .bss


segment .text
        global  asm_main
asm_main:
            enter   0,0             ;setup routine
            pusha

            mov     ax,0C123H
            sal     ax,1
            sal     ax,1
            sar     ax,2

    
            popa
            mov     eax, 0            ; return back to C
            leave                     
            ret

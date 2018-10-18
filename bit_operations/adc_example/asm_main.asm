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

segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha

        mov     eax,0xFFFFFFFF
        mov 	ebx,0
        shl     ah,1
b1:
        mov     al,2
        mov     bl,1
        adc     al,bl
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

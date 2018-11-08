; file: asm_main.asm
;
; 

%include "asm_io.inc"

segment .data

array1: dd 10,20,30,40,50,60,70,80,90,100

segment .bss

array2  resd 10

segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha
        cld                   ; don’t forget this!
        mov    esi, array1
        mov    edi, array2
        mov    ecx, 10
lp:
        lodsd
        stosd 
        loop lp
b1:
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

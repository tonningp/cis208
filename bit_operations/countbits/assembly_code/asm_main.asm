; file: asm_main.asm
;
; counting bits in a register
; 

%include "asm_io.inc"

segment .data
;
; Output strings
;
num1: dw 0x7F34
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha
        mov bl, 0 		; bl will contain the count of ON bits
        mov ecx, 16 		; ecx is the loop counter
        mov ax,[num1]
count_loop:
        shl ax, 1 ; shift bit into carry flag
        jnc skip_inc ; if CF == 0, goto skip_inc
        inc bl
skip_inc:
        loop count_loop
b1:
        mov eax,0
        mov al,bl
        call print_int
        call print_nl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

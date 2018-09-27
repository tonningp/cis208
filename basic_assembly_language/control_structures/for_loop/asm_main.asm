;
; file: math.asm
; This program demonstrates the loop ; instruction works.  

%include "asm_io.inc"

segment .data
;
; Output strings
;

segment .bss
input   resd 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
		mov eax,0
		mov ecx,10
loop_start:
		add eax,ecx
		loop loop_start
loop_end:
		call print_int
		call print_nl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret







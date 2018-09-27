;
; file: math.asm
; This program demonstrates how the integer multiplication and division
; instructions work.
;

%include "asm_io.inc"

segment .data
;
; Output strings
;

yes_string db    "Yes",10, 0
no_string db    "No",10, 0
end_string db    "End",10, 0

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







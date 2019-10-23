; file: asm_main.asm
; test xchg opcode

%include "asm_io.inc"

segment .data
;
; Output strings
;
num1: db 24
num2: db 8

segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha

	     mov 	eax,1
	     mov 	ebx,2
        xchg  eax,ebx

	     call 	print_int
	     call 	print_nl
        mov    eax,ebx
	     call 	print_int
	     call 	print_nl
    
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

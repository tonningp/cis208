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

	mov 	eax,0
	mov 	eax, 64H
	mov 	ebx, 0000000FH
	and 	ebx,eax
	call 	print_int
	call 	print_nl
	mov 	eax,ebx
	call 	print_int
	call 	print_nl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

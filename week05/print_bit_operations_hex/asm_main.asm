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
	mov 	ax, 01100000100100011B
	or 	ax,8
	call 	print_hex
	call 	print_nl
	and 	ax,0FFDFH
	call 	print_hex
	call 	print_nl
	xor 	ax,8000H
	call 	print_hex
	call 	print_nl
	or 	ax,0F00H
	call 	print_hex
	call 	print_nl
	and 	ax,0FFF0H
	call 	print_hex
	call 	print_nl
	xor 	ax,0F00FH
	call 	print_hex
	call 	print_nl
	xor 	ax,0FFFFH
	call 	print_hex
	call 	print_nl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

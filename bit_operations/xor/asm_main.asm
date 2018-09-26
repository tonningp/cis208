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
num1: db 24
num2: db 8

segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha

	mov 	eax,0
	mov 	al,[num1]	; set lower byte to value of num1
	mov 	bl,[num2]	; set lower byte to value of num2
	xor 	al,bl
	call 	print_int
	call 	print_nl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

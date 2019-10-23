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
num1: dw 0xC123
num2: dw 0x82F6

segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha

	mov 	eax,0
	mov 	ax,[num1]	; set lower byte to value of num1

	not 	ax

b1:
	call 	print_int
	call 	print_nl
    
    xor     eax,eax
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

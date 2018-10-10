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
num1: dd -1

segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha

	mov 	ecx,5		; set the counter to 5
	mov 	eax,0
	mov 	eax,[num1]	; set lower byte to 1
loop1:
	sal	    eax,1	
	call 	print_int
	call 	print_nl
	loop 	loop1

	mov 	ecx,5		; set the counter to 5
loop2:
	sar	    eax,1	
	call 	print_int
	call 	print_nl
	loop 	loop2

    popa
    mov     eax, 0            ; return back to C
    leave                     
    ret

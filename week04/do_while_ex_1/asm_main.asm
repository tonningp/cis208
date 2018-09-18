; file: asm_main.asm
;
; An assembly program that asks the user to enter an integer that is greater than 0. 
; The function will keep on asking the user for the number until it is valid. 
; 

%include "asm_io.inc"

segment .data
;
; Output strings
;
prompt_string db    "Enter an integer (will break on integer > 10): ", 0

segment .bss
input   resd 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha


	mov ebx,11
; loop until user enters a value greater than 10
do:
	mov eax,prompt_string	; load address of the yes_string
	call print_string	; print out the prompt
	call read_int
	mov [input],eax
	cmp eax,ebx		; compare the values
	jb do			; jump if eax < ebx


        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

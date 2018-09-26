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
prompt_string db    "Enter an 'y' or 'Y' to continue:", 0

segment .bss
input   resb 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

	mov bl,'y'

; loop until user enters a value greater than 10
do:
	mov eax,prompt_string	; load address of the yes_string
	call print_string	; print out the prompt
	mov eax,0		; clear eax
	call read_char
	mov [input],al
	call read_char		; clear the buffer of the \n
	cmp bl,[input]		; compare the values
	jz do			; jump if [input] != ebx


        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

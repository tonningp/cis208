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
rock db 'r'  ; declare a constant for rock
paper db 'p'  ; declare a constant for paper
scissors db 's'  ; declare a constant for scissors
nl db 10  ; declare a constant for newline

segment .bss
input:   resb 100H


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha

	mov ebx,input		;start address of input buffer

; read characters until user enters a newline
do:
	call read_char		; defined in asm_io
	mov  [ebx],al		; ebx is a pointer to the location of input
	inc  ebx		; increment pointer value in ebx
	cmp  [nl],al		; compare the value at nl with al
	jnz  do			; jump if al != 10
enddo:
	mov eax,input		; load address of the input
	call print_string	; print out the prompt

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

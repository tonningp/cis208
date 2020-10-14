;
; file: math.asm
; This program demonstrates how the integer multiplication and division
; instructions work.
;
; To create executable:
; nasm -f coff math.asm
; gcc -o math math.o driver.c asm_io.o

%include "asm_io.inc"

segment .data
;
; Output strings
;
space db " ",0
yes_string db    "Yes",10, 0
no_string db    "No",10, 0
end_string db    "End",10, 0

segment .bss
input       resd 1
tempvalue   resd 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha


	mov eax,10
	mov ebx,20
    ; while (eax < ebx)

__while__01:
	cmp eax,ebx
	jae __endwhile__01
	;mov [tempvalue],eax
    call print_int
	mov ecx,eax		; cache the value of eax
    call print_string
	mov eax,yes_string
	call print_string
	mov eax,ecx
	inc eax
	jmp __while__01
__endwhile__01:

	mov eax,end_string
	call print_string

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret







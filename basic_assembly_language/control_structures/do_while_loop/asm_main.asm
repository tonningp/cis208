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

yes_string db    "Yes",10, 0
no_string db    "No",10, 0
end_string db    "End",10, 0

segment .bss
input   resd 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha


b1:
	mov eax,10
	mov ebx,13

; example of a do while loop

do:
	mov ecx,eax 		; save state of eax
    dump_regs 0
	mov eax,yes_string	; load address of the yes_string
	call print_string	; print out Yes
	mov eax,ecx		    ; restore eax
	inc eax  		    ; increment eax by 1
	cmp eax,ebx		    ; compare the values
	jb do			    ; jump if eax < ebx
enddo:
    dump_regs 1
	mov eax,end_string
	call print_string

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret







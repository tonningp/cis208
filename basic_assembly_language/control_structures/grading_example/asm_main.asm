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
prompt_string1 db    "Enter Score: ", 0
a: db "A",0
b: db "B",0
c: db "C",0
d: db "D",0
f: db "F",0
slash: db "/",0

segment .bss
input   resd 1

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	mov eax,0
	mov ebx,0
	mov ecx,5
loop_start:
        mov eax,prompt_string1	  ; move address of prompt to eax
	mov eax,input         	  ; assign address for the input 
	call read_int
isA:	
	cmp eax,90		  ; check if an A
	jb isB
	add ebx,eax
	mov eax,a
	call print_string
	call print_nl
	jmp endif
isB:    cmp eax,80
	jb isC
	add ebx,eax
	mov eax,b
	call print_string
	call print_nl
	jmp endif
isC:    cmp eax,70
	jb isD
	add ebx,eax
	mov eax,c
	call print_string
	call print_nl
	jmp endif
isD:    cmp eax,60
	jb isF
	add ebx,eax
	mov eax,d
	call print_string
	call print_nl
	jmp endif
isF:
	add ebx,eax
	mov eax,f
	call print_string
	call print_nl
	jmp endif
endif:
        mov eax,ebx	
	dec ecx
	jnz loop_start
loop_end:
	mov eax,ebx
	cdq
	mov ecx,5
	div ecx
	call print_int
	mov eax,slash
	call print_string
	mov eax,edx
	call print_int
	call print_nl
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret







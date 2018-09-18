; file: asm_main.asm
;
; 

%include "asm_io.inc"

segment .data
s1: db "Enter a:",0
s2: db "Enter b:",0

evenlabel: db "even",0
oddlabel: db "odd",0


segment .bss
a: resb 1
b: resb 1

segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha
	mov eax,s1
	call print_string
	mov eax,0
	call read_int
	mov [a],al
	mov eax,s2
	call print_string
	mov eax,0
	call read_int



	mov [b],al

	mov eax,0
	mov al,[a]

	and eax,1
	jnc even
odd:
	mov eax,oddlabel
	call print_string
	call print_nl
	jmp end
even:
	mov eax,evenlabel
	call print_string
	call print_nl
end:

;	mov eax,0
;	mov eax,[a]
;	call print_int
;	call print_nl
;	mov eax,0
;	mov al,[b]
;	call print_int
;	call print_nl

;lp:
;	loop 	lp

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

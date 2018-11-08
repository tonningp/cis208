; file: asm_main.asm
;
; 

%include "asm_io.inc"

segment .data

array1: db 5,4,3,2,1    ; array of bytes
array2: dw 5,4,3,2,1    ; array of words
array3: TIMES 25 dw 0   ; array of words

segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha
	    mov ebx, array1         ; ebx = address of array1
	    mov dx,0		; dx will hold sum
	    mov ah, 0		; ?
	    mov ecx,5

lp:
	    mov 	al,[ebx]	; al = *ebx
	    add 	dx,ax 		; dx += ax (not al!)
	    inc 	ebx		; bx++
	    loop 	lp
	    mov 	eax,0		; zero out eax
	    mov 	ax,dx
b1:
	    call	print_int
	    call 	print_nl
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

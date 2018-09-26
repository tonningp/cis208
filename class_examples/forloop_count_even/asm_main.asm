; file: asm_main.asm
;
; 

%include "asm_io.inc"

segment .data
;
; Output strings
;

segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha
       	mov ecx,0 
	mov cx,50
	mov eax,0
lp:
	mov ax,2
        mul cx 
	;add ax,bx
	call print_int 
	call print_nl
	loop 	lp

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

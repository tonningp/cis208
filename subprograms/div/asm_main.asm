;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data


; uninitialized data is put in the .bss segment
;
segment .bss

;
; code is put in the .text segment
;
segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

	mov eax,1256
	cdq
	mov ecx,10
	idiv ecx
	call print_int
	call print_nl
	mov eax,edx
	call print_int
	call print_nl
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



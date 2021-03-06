;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data
num1: dd 0xABCDFEFF

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
; next print out result message as series of steps
	mov 	eax,[num1]	
	call print_bin
	call print_nl
	call print_hex
	call print_nl
	dump_regs 1

	sal 	eax,2
	call print_bin
	call print_nl
	call print_hex
	call print_nl
	dump_regs 2

	shr 	eax,2
	call print_bin
	call print_nl
	dump_regs 3
	call print_hex
	call print_nl
	
	mov ax, 0x0C123
	call print_bin
	call print_nl
	mov  ax, 0E831H
	call print_bin
	call print_nl

	mov ax, 0x0C123
	or  ax, 0E831H
	call print_bin
	call print_nl
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



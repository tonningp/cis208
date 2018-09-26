%include "asm_io.inc"
%include "util.inc"

segment .data

message1: db "The number is entered",0
placeholder1: db "0123456789",0
prompt1: db "Enter the number:",0

segment .bss

input1  resd 1

segment .text
	global main

main:
	nop
        mov     ebx, input1       ; store address of input1 into ebx
        mov     ecx, ret1         ; store return address into ecx
	dump_regs 1
        jmp     short get_int     ; read integer
ret1:
        mov     eax, message1     ; get the message into eax
	call 	print_string
	call 	print_nl
        mov     eax, [input1]     ; eax += dword at input2
        call    print_int         ; print out input1
	call 	print_nl
	call	dump_regs 5
	call 	exit_program      ; exit the program

	
; subprogram get_int
; Parameters:
;   ebx - address of dword to store integer into
;   ecx - address of instruction to return to
; Notes:
;   value of eax is destroyed
get_int:
	dump_regs 2
        mov     eax, prompt1      ; print out prompt
	dump_regs 3
	call print_string
        call    read_int
	dump_regs 4
        mov     [ebx], eax         ; store input into memory
        jmp     ecx                ; jump back to caller

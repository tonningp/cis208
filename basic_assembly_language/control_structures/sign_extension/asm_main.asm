;
; file: asm_main.asm
;
; To create executable:
; nasm -f coff math.asm
; gcc -o math math.o driver.c asm_io.o

%include "asm_io.inc"

segment .data
;
; Output strings
;
prompt          db    "Enter a number: ", 0

segment .bss
input   resd 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        mov     eax, prompt
        call    print_string

        call    read_int
        mov     [input], al

        mov     eax,[input]
        call    print_int
	call	print_nl

	mov     edx,0 	          ;clear out edx
	cbw			  ; ax sign-extend of al
b1:
	cwd			  ; sign-extend ax int dx:ax
b2:
	mov al,0xff		  ; set ax to -1
	mov ah,0xfe		  ; set ax to -1
b3:
	movzx eax,al
b4:
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret







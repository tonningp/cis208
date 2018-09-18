;

; file: asm_main.asm



%include "asm_io.inc"

;

; initialized data is put in the .data segment

;

section .data

        hello: db 'Hello Class!', 10

        helloLen: equ $-hello

        syswrite: equ 4

        stdout: equ 1

        exit: equ 1

        SUCCESS: equ 0

        kernelcall: equ 80h





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

        mov eax,syswrite        ; 4 is the vector for the syswrite function

        mov ebx,stdout          ; standard output, 1 is for stdout

        mov ecx,hello           ; the address of the string

        mov edx,helloLen        ; size of the string (number of characters)

        int kernelcall          ; call the interrupt to execute the syswrite function

; next print out result message as series of steps



        popa

        mov     eax, SUCCESS    ; return back to C

        leave

        ret

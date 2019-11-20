;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data

a: dd 11
b: dd 10

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

        xor     edx,edx
        mov     eax,[a]
        mov     ebx,[b]
        div     ebx
b1:

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data
a: dd 0xffffffff
b: dd 0xffffffff

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
b1:
        mov   eax, [a]
        mov   edx, [b]
        mov   ebx, [a]
        mov   ecx, [b]

        add   eax,ecx  ; add lower 32 bits
        adc   edx, ebx ; add upper 32-bits and carry from previous sum

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



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
        mov     eax,0
        mov     al, -5
        add     al, 132
        add     al, 1
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



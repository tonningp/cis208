;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data
;DB, DW, DD, DQ, DT, DO, DY and DZ are used, much as in MASM, to declare initialized data in the output file. They can be invoked in a wide range of ways:

a      db    11111111b       ; a byte with the bit pattern 11111111b
b      db    11111110b       ; a byte with the bit pattern 11111110b
c      db    11111011b       ; a byte with the bit pattern 11111011b
d      db    11111011b       ; a byte with the bit pattern 11111011b
;e      dd    0xFFFFFFFF  


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
        mov     al,[a]
        add     al,[b]
        mov     cl,[c]
        add     cl,[d]
        sub     al,cl
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



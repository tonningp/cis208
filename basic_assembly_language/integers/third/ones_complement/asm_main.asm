;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data
;DB, DW, DD, DQ, DT, DO, DY and DZ are used, much as in MASM, to declare initialized data in the output file. They can be invoked in a wide range of ways:

a      dd    10  ; a byte with the bit pattern 11111111b
b      dd    2  ; a byte with the bit pattern 11111110b
c      dd    3       ; a byte with the bit pattern 11111011b
d      dd    4       ; a byte with the bit pattern 11111011b


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

        mov     eax,[a]
        add     eax,[b]
        mov     ecx,[c]
        add     ecx,[d]
        sub     eax,ecx

        call print_int
        call print_nl
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data
;DB, DW, DD, DQ, DT, DO, DY and DZ are used, much as in MASM, to declare initialized data in the output file. They can be invoked in a wide range of ways:

n1      dd    11111111b  ; a byte with the bit pattern 11111111b
n2      dd    11111110b  ; a byte with the bit pattern 11111110b
n3      db    0xFF,0,0,0  ; a byte with the bit pattern 11111011b
n4      db    0xFE,0,0,0  ; a byte with the bit pattern 11111011b


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
        mov  eax,0
        mov  eax,[n1]
        call print_int
        call print_nl
        mov  eax,[n2]
        call print_int
        call print_nl
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



;
; file: asm_main.asm
; Notes:
;*******************************
; gdb
;       view assembly code - layout asm
;       or display/i $pc
;*******************************
%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data
;DB, DW, DD, DQ, DT, DO, DY and DZ are used, much as in MASM, to declare initialized data in the output file. They can be invoked in a wide range of ways:

a      db    10,0,0,0
b      db    3,0,0,0
c      db    10,0,0,0
d      db    1,0,0,0


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
; calculate a = (a+b) - (c+d)
        mov  eax,[a]
        add  eax,[b]
        mov  ecx,[c]
        add  ecx,[d]
        sub  eax,ecx
        mov  [a],eax
        call print_int
        call print_nl
        call print_hex
        call print_nl
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



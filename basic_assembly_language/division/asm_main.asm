;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data
;DB, DW, DD, DQ, DT, DO, DY and DZ are used, much as in MASM, to declare initialized data in the output file. They can be invoked in a wide range of ways:

ab     db    21  ; byte decimal 21
a      dw    10  ; word decimal 10
ad     dd    21  ; word decimal 21
b      dd    2   ; double word decimal 2


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
        ; 8 bit (byte) division
        xor     edx,edx
        xor     eax,eax
        mov     al,[ab]
        mov     bl,2
        div     bl
        dump_regs 0
        call print_int
        call print_nl

        ; 16 bit (word) division
        mov     edx,0x0
        mov     eax,0x0
        mov     ax,[a]
        mov     bx,2
        div     bx
        dump_regs 1
        call print_int
        call print_nl

        ; 32 bit (double word) division
        mov     edx,0x0
        mov     eax,0x0
        mov     eax,[ad]
        mov     ebx,2
        div     ebx
        dump_regs 2

        call print_int
        call print_nl
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



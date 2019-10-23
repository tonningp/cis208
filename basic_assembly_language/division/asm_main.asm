;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data
;DB, DW, DD, DQ, DT, DO, DY and DZ are used, much as in MASM, to declare initialized data in the output file. They can be invoked in a wide range of ways:

a      dw    10  ; word decimal 10
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
; next print out result message as series of steps
        mov     eax,0x0
        mov     ax,[a]
        mov     bx,2
        div     bx
b1:
        call print_int
        call print_nl
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



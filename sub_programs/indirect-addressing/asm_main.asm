;
; file: sub1.asm
; Subprogram example program

%include "asm_io.inc"

segment .data

var1    dd  100
var2    dd  200

segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        mov     eax,[var1]
        call    print_int
        call    print_nl
        mov     ebx,var2
        mov     eax,[ebx-4]
        call    print_int
        call    print_nl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


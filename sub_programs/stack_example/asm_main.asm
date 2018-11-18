;
; file: sub1.asm
; Subprogram example program

%include "asm_io.inc"

segment .data

segment .bss
;
; These labels refer to double words used to store the inputs
;

 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        push    dword 101
        call    sub_dump_regs
        pusha
        push    dword 0
        push    dword 10
        push    dword 1001
        call    sub_dump_stack

        mov     ebx,10
        push    ebx
        mov     ebx,20
        push    ebx
        ;call    dump_regs 10
        push    dword 102
        call    sub_dump_regs
        push    dword 0
        push    dword 10
        push    dword 1002
        call    sub_dump_stack
        ;mov     eax,[ebp-36]
        ;call    print_int
        ;call    print_nl
        pop     eax
        ;call    print_int
        pop     eax
        ;call    print_int


        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


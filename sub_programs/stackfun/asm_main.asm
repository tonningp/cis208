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
; next print out result message as series of steps
        push  dword 10
        push  dword 20
        push  dword 30
        dump_regs 2

        pop   eax
        pop   ebx
        pop   edx
        
        dump_regs 3
        mov   ecx,$ + 23 
        jmp   ecx
        mov   ebx,$
        mov   ebx,$

        mov   eax,0xf
        call  print_int
        call  print_nl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



; file: asm_main.asm
; description: finds a value in the array
;   the value to find is in eax
; 

%include "asm_io.inc"


segment .bss

array  resd 50

segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha
        cld                   ; don’t forget this!
        mov    edi, array
        mov    [edi+4*49],DWORD 13
        mov    ecx,50
        mov    eax, 13
lp:
        scasd
        je      found
        loop lp
        jmp     notfound
found:
        sub     edi,4
        mov     eax,1
        call    print_int
        call    print_nl
        jmp     end
notfound:
        mov     eax,0
        call    print_int
        call    print_nl
end:
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

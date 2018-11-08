;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data

array1 dd 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

; uninitialized data is put in the .bss segment
;
segment .bss

array2 resd 10

;
; code is put in the .text segment
;
segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha



        cld ; don’t forget this!

        mov esi, array1
        mov edi, array2
        mov ecx, 10
lp:
        mov eax,[esi]
        call print_int
        call print_nl
        lodsd
        stosd
        loop lp

        mov ecx,10
        mov ebx,0

lp1:
        xor eax,eax
        mov al,[array1+ebx]
        call print_int
        call print_nl
        add ebx,4
        loop lp1

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



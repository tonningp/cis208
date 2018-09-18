;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data
;
; These labels refer to strings used for output
;
;
; uninitialized data is put in the .bss segment
;
segment .bss
;
; These labels refer to double words used to store the inputs
;

;
; code is put in the .text segment
;
segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
; next print out result message as series of steps
        mov eax,100               ; move 100 so it can be printed
        call print_int            ; print the integer
        call print_nl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



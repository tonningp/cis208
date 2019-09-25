;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data

msg: db 'Hello',10,0
num: db 20
num1: dw 21
num2: dd 22
;num3: dq 23

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

        mov     eax,msg
        call    print_string

b1:
        mov     eax,0
        mov     al,[num]
        call    print_int
        call    print_nl

        mov     ax,[num1]
        call    print_int
        call    print_nl

        mov     eax,[num2]
        call    print_int
        call    print_nl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



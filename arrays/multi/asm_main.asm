;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data

array1: db 1,2,3,4,5,6          ; 1 byte elements

; uninitialized data is put in the .bss segment
;
segment .bss
array5: resb 10
array6: resw 10
array7: resd 10

;
; code is put in the .text segment
;
segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
; next print out result message as series of steps
        xor     eax,eax
        mov     al,[array1+3]
        call    print_int
        call    print_nl

        mov     bl,100
        mov     [array1],bl
        mov     al,[array1]
        call    print_int
        call    print_nl

        mov     al,[array1+1]
        call    print_int
        call    print_nl

        mov     ax,[array2]     ; moves into the word (16bit) register the value 11
        call    print_int
        call    print_nl
        mov     ax,[array2+4]   ; should move in 13
        call    print_int
        call    print_nl

        mov     eax,[array3]     ; moves into the double word (32 bit) register the value 21
        call    print_int
        call    print_nl
        mov     eax,[array3+8]   ; should move in 23
        call    print_int
        call    print_nl

        mov     eax,[array4]     ; moves into the double word (32 bit) register the value 31
        call    print_int
        call    print_nl
        mov     eax,[array4+8]   ; should move in 32
        call    print_int
        call    print_nl


        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



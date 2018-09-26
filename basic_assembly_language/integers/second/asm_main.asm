;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data
hello_string: db "Hello There",10,0     ; it's very important to include the 0 in the list

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
        global  asm_main          ; name of the function that is called in the driver
asm_main:
        enter   0,0               ; setup routine
        pusha
; next print out result message as series of steps
        mov  eax,hello_string
        call print_string         ; print the integer

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



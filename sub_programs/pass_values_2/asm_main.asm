

;
; file: asm_main.asm
; Subprogram to C interfacing example
;return a + b;
;
segment .data
a: dd 0
b: dd 0

segment .text
        global  add
add:
        enter   0,0               ; make room for sum on stack
b1:
        pusha        
        mov   eax,[ebp+8]        ; should be a
        mov   ebx,[ebp+12]       ; should be b
        add   eax,ebx
b2:
        popa
        leave
        ret





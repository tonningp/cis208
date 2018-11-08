
segment .data
a1  db 'h','e','l','l','o','\0'
a2  dw 10,9,8,7,6
a3  dd 10,9,8,7,6
a4  TIMES 10 dw 0

segment .bss
a5 resw 10
a6 resd 10

 

segment .text
        global  asm_main

asm_main:
        enter   0,0            
        pusha

b1:     
        popa
        mov     eax,0
        leave
        ret





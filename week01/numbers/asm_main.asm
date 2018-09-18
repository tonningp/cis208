;**************************************
; print out hello world
;***************************************

section .data
      hello: db 'Hello World!', 10
      bindata: dd 0b10101
      helloLen: equ $-hello

section .text
      global asm_main

asm_main:             
    mov eax,[bindata]
l1:

end_start:
      mov eax,1           ; vector for the exit function
      mov ebx,0           ; return code 0
      int 80h             ; call the interrupt to execute the exit function

;**************************************
; print out hello world
;***************************************

section .data
      hello: db 'Hello World!', 10
      helloLen: equ $-hello

section .text
      global asm_main

asm_main:             
      mov eax,4           ; 4 is the vector for the syswrite function
      mov ebx,1           ; standard output, 1 is for stdout
      mov ecx,hello       ; the address of the string
      mov edx,helloLen    ; size of the string (number of characters)
      int 80h             ; call the interrupt to execute the syswrite function

end_start:
      mov eax,1           ; vector for the exit function
      mov ebx,0           ; return code 0
      int 80h             ; call the interrupt to execute the exit function

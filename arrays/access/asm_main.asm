
segment .data
a1  db 'h','e','l','l','o','\0'
a2  dw 10,9,8,7,6
a3  dd 10,9,8,7,6
a4  TIMES 10 dd 0

segment .bss
a5 resw 10
a6 resd 10

 
%define BYTESIZE 1 
%define WORDSIZE 2 
%define DWORDSIZE 4 
%define QWORDSIZE 8 

segment .text
        global  asm_main

asm_main:
        enter   0,0            
        pusha
        ;mov ebx,[a2+2*4] ; indexing [base address + data size * index]
        ;mov ebx,[a3+4*4] ; [ base reg + factor * index ]

        mov eax,a4
        mov edx,0    ; we'll make edx the index
        mov [eax + WORDSIZE * edx ],DWORD 10
        inc edx
        mov [eax + WORDSIZE * edx ],DWORD 9
        inc edx
        mov [eax + WORDSIZE * edx ],DWORD 8
        inc edx
        mov [eax + WORDSIZE * edx ],DWORD 7

b1:     
        popa
        mov     eax,0
        leave
        ret





%include "asm_io.inc"
;
; file: array1.asm
; This program demonstrates arrays in assembly
;
; To create executable:
; nasm -f coff array1.asm
; gcc -o array1 array1.o array1c.c
;

segment .data
;array1 db 1,2,3,4,5,6,9,10,11,12
array1 db 1,2,3,4,5,6,7,8,9,10
array2 db 1,2,3,4,5,6,7,8,9,10

segment .bss
segment .text
        global  asm_main
asm_main:
        enter   0,0       
        cld
        mov    esi, array1
        mov    edi, array2
        mov    ecx, 10
        repe   cmpsb
; address of first block
; address of second block
; size of blocks in bytes
; repeat while Z flag is set
; if Z set, blocks equal
       je     equal
; code to perform if blocks are not equal
	   mov eax,0
	   call print_int
	   call print_nl
jmp    onward
equal:
   ; code to perform if equal
	  mov eax,1
	  call print_int
	  call print_nl
onward:
       mov     eax, 0            ; return back to C
       leave                     
       ret


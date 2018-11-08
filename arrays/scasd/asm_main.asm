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

segment .bss
array        resd 100
segment .text
        global  asm_main
asm_main:
        enter   0,0       
      cld
      mov    edi, array
      mov    ecx, 100
      mov    eax, 12
fill: 
      mov [array+4*ecx],ecx
      loop fill

      mov    ecx, 100
lp:
	  scasd
	  je found
; pointer to start of array
; number of elements
; number to scan for
loop   lp
 ; code to perform if not found
      jmp    onward
found:
      sub    edi, 4         ; edi now points to 12 in array
      mov   eax,ecx
      call  print_int
      call  print_nl
 ; code to perform if found
onward:
        mov     eax, 0            ; return back to C
        leave                     
        ret


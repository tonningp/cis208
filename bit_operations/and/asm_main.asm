; file: asm_main.asm
;
; An assembly function that repeatedly asks user for an r p or s for rock, paper scissors
; The function will keep on asking the user for the number until it is valid. 
; 

%include "asm_io.inc"

segment .data
%define B0 0x1
%define B1 0x2
%define B2 0x4
%define B3 0x8
%define B4 0x10
%define B5 0x20
%define B6 0x40
%define B7 0x80
%define B8 0x100
%define B9 0x200
%define B10 0x400
%define B11 0x800
%define B12 0x1000
%define B13 0x2000
%define B14 0x4000
%define B15 0x8000
%define B16 0x10000
%define B17 0x20000
%define B18 0x40000
%define B19 0x80000
%define B20 0x100000
%define B21 0x200000
%define B22 0x400000
%define B23 0x800000
%define B24 0x1000000
%define B25 0x2000000
%define B26 0x4000000
%define B27 0x8000000
%define B25 0x10000000
%define B26 0x20000000
%define B27 0x40000000
%define B28 0x80000000
%define B29 0x100000000
%define B30 0x200000000
%define B31 0x400000000
%define B32 0x800000000
;
; Output strings
;
num1: dd 25 
num2: dd 2

segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha

	mov 	eax,0
	mov 	eax,[num1]	
	mov 	ebx,B3	  
	and 	eax,ebx
	call 	print_int
	call 	print_nl

    popa
    mov     eax, 0            ; return back to C
        leave                     
        ret

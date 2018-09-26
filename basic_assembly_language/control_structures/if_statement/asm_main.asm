;
; file: math.asm
; This program demonstrates how the integer multiplication and division
; instructions work.
;
; To create executable:
; nasm -f coff math.asm
; gcc -o math math.o driver.c asm_io.o

%include "asm_io.inc"

segment .data
;
; Output strings
;

yes_string db    "Yes",10, 0
no_string db    "No",10, 0
end_string db    "End",10, 0
value1 dd  10
value2 dd  20

segment .bss
input   resd 1
j1      resw 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

	mov eax,10	  	       ; literal 10 into eax,
	mov ebx,20	          ; literal 20 into ebx

	cmp eax,ebx		  ; compare the 2 values
b1:
	jb else			  ; if eax < ebx then jump to elseblock
then:
	mov ecx,eax		  ;   then 
	mov eax,yes_string        ; 
	call print_string	  ;     print yes_string
	jmp endif
else:
	mov eax,no_string
	call print_string
endif:
	;mov eax,b1
	;mov [j1],eax
	;jmp [j1]
	;mov eax,10
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

; file: asm_main.asm
;
; An assembly function that repeatedly asks user for an r p or s for rock, paper scissors
; The function will keep on asking the user for the number until it is valid. 
; 

%include "asm_io.inc"
%define SIZE 5
segment .data
;
; Output strings
;

segment .bss
array        resq SIZE
sum          resq 1


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha
        mov    DWORD [array],0
        mov    DWORD [array+4],1
        mov    DWORD [array+8],0
        mov    DWORD [array+12],2
        mov    DWORD [array + 16],0
        mov    DWORD [array + 20],3
        mov    DWORD [array + 24],0
        mov    DWORD [array + 28],4
        mov    DWORD [array + 32],0
        mov    DWORD [array + 36],5
		mov    ecx, SIZE
		mov    esi, array
		fldz   			; ST0 = 0
lp:
		fadd   qword [esi] ; ST0 += *(esi)
		add    esi, 8 		; move to next double
		loop   lp
b1:
		fstp   QWORD [sum] 	; store result into sum
        
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

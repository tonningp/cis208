; file: asm_main.asm
;
; 

%include "asm_io.inc"
;n quadratic
;finds solutions to the quadratic equation:
;      a*x^2 + b*x + c = 0
;C prototype:
;  int quadratic( double a, double b, double c,
;                 double * root1, double *root2 )
;Parameters: a,b,c- root1 - root2 -
;coefficients of powers of quadratic equation (see above)
;pointer to double to store first root in
;pointer to double to store second root in
;Return value:
;  returns 1 if real roots found, else 0
%define a qword [ebp+8]
%define b qword [ebp+16]
%define c qword [ebp+24]
%define root1 dword [ebp+32]
%define root2 dword [ebp+36]
%define disc qword [ebp-8]

segment .data
;
; Output strings
;



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

%include "defines.inc"

; function swap
; C-callable function that swaps the values in 2 integer locations
; signed integers.
; C prototype:
; void swap( int * a, int * b);
; Parameters:
;   a - pointer to location of first integer
;   b - pointer to location of second integer

%define A_ADDR [ebp+12]
%define B_ADDR [ebp+8]
%define A_VAL [eax]
%define B_VAL [ebx]

segment .data

segment .text
        global  swap
swap:
        enter   0,0
        pusha 

        mov     eax, A_ADDR             ; eax = address of first param
        mov     ebx, B_ADDR             ; ebx = address of second param
        mov     edx,A_VAL               ; value of tmp = value of a
        mov     ecx,B_VAL               ; value of tmp = value of a
	mov 	[eax],ecx
	mov 	[ebx],edx
        popa

        leave
        ret

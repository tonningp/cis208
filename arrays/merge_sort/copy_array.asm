%include "defines.inc"

; function copy_array
; C-callable function that swaps the values in 2 integer locations and the size
; signed integers.
; C prototype:
; void copy_array( int * a, int * b,int n);
; Parameters:
;   a - pointer to location of first integer
;   b - pointer to location of second integer
;   n - size of array

%define N [ebp+16]
%define B_ADDR [ebp+12]
%define A_ADDR [ebp+8]

segment .data
msg db "value (%d)",10,0
segment .text
        global  copy_array
	extern  printf
copy_array:
        enter   0,0
        pusha 

	mov 	ecx,N
loop1:
	mov 	ebx,N
      	sub     ebx,ecx
        mov     eax, A_ADDR             ; eax = address of first param
        lea     eax,[eax+ESIZE*ebx]
	mov 	edx,B_ADDR
        lea     edx,[edx+ESIZE*ebx]
	
	push 	ecx
	push 	dword [eax]
	push 	msg
	call 	printf
	add 	esp,8
	pop 	ecx
	loop 	loop1
        popa

        leave
        ret

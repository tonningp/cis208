%include "defines.inc"

; routine fill_array
; C-callable routine that prints out elements of a double word array as
; signed integers.
; C prototype:
; void fill_array( const int * a, int n);
; Parameters:
;   a - pointer to array to print out (at ebp+8 on stack)
;   n - number of integers to print out (at ebp+12 on stack)
%define ESIZE 4
segment .text
        global  fill_array
	extern  get_random

fill_array:
        enter   0,0
	pusha

        xor     edi, edi                  ; edi = 0
        mov     edx, [ebp+16]             ; edx = scale
        mov     ecx, [ebp+12]             ; ecx = n
        mov     ebx, [ebp+8]              ; ebx = address of array

fill_loop:
	push 	ecx
	push 	edx
	call    get_random
        add     esp, 4                   ; remove parameters
	mov     [ebx + ESIZE * edi],eax
        inc     edi
	pop     ecx
        loop    fill_loop

	popa
        leave
        ret

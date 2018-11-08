%include "defines.inc"

;
; function insertion_sort
; C-callable function that sorts a given array using the bubble sort algorithm
;
; C prototype:
; void insertion_sort( const int * a, int n);
; Parameters:
;   a - pointer to array to sort (at ebp+8 on stack)
;   n - number of integers to sort (at ebp+12 on stack)

;procedure insertion_sort( A : list of sortable items , n : length of A)
;i ← 1
;while i < length(A)
;    j ← i
;    while j > 0 and A[j-1] > A[j]
;        swap A[j] and A[j-1]
;        j ← j - 1
;    end while
;    i ← i + 1
;end while
;end procedure

%define N   dword [ebp+12]
%define A   dword [ebp+8]
;%define I   dword [ebp-4]
;%define J   dword [ebp-8]
%define I   esi
%define J   edi
%define tmp_a  dword[ebp-12]
%define tmp_b  dword[ebp-16]

segment .data

segment .text
        global  insertion_sort
	extern  swap

insertion_sort:
        enter   16,0
        pusha 
        mov    I,1		      ; start at index = 1
while:
	cmp     I,N
        jge     done
	mov	J,I
while_2:
	cmp     J,0
	jle     end_while_2
	mov     ebx,A			  ; assign the base address of the array to ebx
    lea     eax,[ebx+ESIZE*(J-1)] ; get the previous element from current index
	mov     tmp_a,eax
    lea     ebx,[ebx+ESIZE*J]	  ; get the element at the current index
	mov     tmp_b,ebx
	mov     eax,[eax]
	mov     ebx,[ebx]
    cmp     eax,ebx
	jle     end_while_2
; otherwise
swap_them:
    push    tmp_a
    push    tmp_b
    call    swap               ; calls function to swap the two values
	add 	esp,8		   ; clean the stack
next:
	dec     J
	jmp 	while_2
end_while_2:
	inc 	I
	jmp 	while

done:
        popa
        leave
        ret

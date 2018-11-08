%include "defines.inc"

;
; function bubble_sort
; C-callable function that sorts a given array using the bubble sort algorithm
;
; C prototype:
; void bubble_sort( const int * a, int n);
; Parameters:
;   a - pointer to array to sort (at ebp+8 on stack)
;   n - number of integers to sort (at ebp+12 on stack)

;procedure bubble_sort( A : list of sortable items , n : length of A)
;    repeat
;        swapped = false
;        for i = 1 to n-1 inclusive do
;            if A[i-1] > A[i] then
;                swap(A[i-1], A[i])
;                swapped = true
;            end if
;        end for
;        n = n - 1
;    until not swapped
;end procedure

%define INDEX edi
%define N   dword [ebp+12]
%define A   dword [ebp+8]
%define SWAPPED dword [ebp-4]
%define SWAPPED_TRUE mov SWAPPED,1
%define SWAPPED_FALSE mov SWAPPED,0
%define tmp_a  dword[ebp-8]
%define tmp_b  dword[ebp-12]

segment .data

segment .text
        global  bubble_sort
	extern  swap

bubble_sort:
        enter   12,0
        pusha 
	sub 	N,1   		      ; make N = N - 1

repeat:
        mov    INDEX,1		      ; start at index = 1
        SWAPPED_FALSE

scan_and_swap:
	mov     ebx,A			  ; assign the base address of the array to ebx
        lea     eax,[ebx+ESIZE*(INDEX-1)] ; get the previous element from current index
	mov     tmp_a,eax
        lea     ebx,[ebx+ESIZE*INDEX]	  ; get the element at the current index
	mov     tmp_b,ebx
	mov     eax,[eax]
	mov     ebx,[ebx]
        cmp     eax,ebx
        jle     check_next         ; if less than or equal to, check the next one

; otherwise
swap_them:
        push    tmp_a
        push    tmp_b
        call    swap               ; calls function to swap the two values
	add 	esp,8		   ; clean the stack
        SWAPPED_TRUE

check_next:
	mov edx,N		; restore the value of N to edx
        cmp INDEX,edx		; is index < N ?
	pushf			; store flags, this is really important
	inc INDEX		; because inc changes the flags
	popf			; so store the flag state, then pop them back
        jl  scan_and_swap

	sub    N,1
        cmp    SWAPPED,1        ; checks if swapped is true
        jz     repeat		; if so then repeat the scan

done:
        popa
        leave
        ret

%include "defines.inc"

;
; function merge_sort
; C-callable function that sorts a given array using the bubble sort algorithm
;
; C prototype:
; void merge_sort( const int * a, int n);
; Parameters:
;   a - pointer to array to sort (at ebp+8 on stack)
;   n - number of integers to sort (at ebp+12 on stack)
; // Array A[] has the items to sort; array B[] is a work array.
; TopDownMergeSort(A[], B[], n)
; {
;     CopyArray(A, 0, n, B);           // duplicate array A[] into B[]
;     TopDownSplitMerge(B, 0, n, A);   // sort data from B[] into A[]
; }
; 
; // Sort the given run of array A[] using array B[] as a source.
; // iBegin is inclusive; iEnd is exclusive (A[iEnd] is not in the set).
; TopDownSplitMerge(B[], iBegin, iEnd, A[])
; {
;     if(iEnd - iBegin < 2)                       // if run size == 1
;         return;                                 //   consider it sorted
;     // split the run longer than 1 item into halves
;     iMiddle = (iEnd + iBegin) / 2;              // iMiddle = mid point
;     // recursively sort both runs from array A[] into B[]
;     TopDownSplitMerge(A, iBegin,  iMiddle, B);  // sort the left  run
;     TopDownSplitMerge(A, iMiddle,    iEnd, B);  // sort the right run
;     // merge the resulting runs from array B[] into A[]
;     TopDownMerge(B, iBegin, iMiddle, iEnd, A);
; }
; 
; //  Left source half is A[ iBegin:iMiddle-1].
; // Right source half is A[iMiddle:iEnd-1   ].
; // Result is            B[ iBegin:iEnd-1   ].
; TopDownMerge(A[], iBegin, iMiddle, iEnd, B[])
; {
;     i = iBegin, j = iMiddle;
;  
;     // While there are elements in the left or right runs...
;     for (k = iBegin; k < iEnd; k++) {
;         // If left run head exists and is <= existing right run head.
;         if (i < iMiddle && (j >= iEnd || A[i] <= A[j])) {
;             B[k] = A[i];
;             i = i + 1;
;         } else {
;             B[k] = A[j];
;             j = j + 1;
;         }
;     }
; }
; 
; CopyArray(A[], iBegin, iEnd, B[])
; {
;     for(k = iBegin; k < iEnd; k++)
;         B[k] = A[k];
; }

%define N   dword [ebp+12]
%define A   dword [ebp+8]
%define tmp_array   dword [ebp-4]
%define I   esi
%define J   edi

segment .data
msg db "merge_sort - malloc %d",10,0


segment .text
        global  merge_sort
	extern  copy_array
	extern  swap
	extern  malloc
	extern  printf
	extern  print_array

merge_sort:
        enter   4,0
        pusha 

	mov     eax,N 		; get the memory for the array dynamically
	mov 	ebx,ESIZE
	mul 	ebx
	push    dword eax
	call    malloc			; call the system malloc function
	add     esp,4			; clean up the stack
	test    eax,eax
	jz   	fail_exit
	mov 	tmp_array,eax

	push 	N
	push    tmp_array	
	push 	A
	call 	copy_array
	add 	esp,12
done:
        popa
        leave
        ret
fail_exit:
	jmp   done

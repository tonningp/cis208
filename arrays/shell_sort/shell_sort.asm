%include "defines.inc"
%include "asm_io.inc"

; **********************************************************************************************
; procedure shell_sort()
;   A : array of items 
;	
;   /* calculate interval*/
;   while interval < A.length /3 do:
;      interval = interval * 3 + 1	    
;   end while
;   
;   while interval > 0 do:
;
;      	for outer = interval; outer < A.length; outer ++ do:
;      		/* select value to be inserted */
;      		value_to_insert = A[outer]
;      		inner = outer;
;
;         	/*shift element towards right*/
;         	while inner > interval -1 && A[inner - interval] >= value_to_insert do:
;            		A[inner] = A[inner - interval]
;            		inner = inner - interval
;         	end while
;
;      		/* insert the number at hole position */
;      		A[inner] = value_to_insert
;      	end for
;
;   /* calculate interval*/
;	interval = (interval -1) /3;	  
;
;   end while
;   
;end procedure
; 
; **********************************************************************************************

%define n   	dword [ebp+12]
%define array   dword [ebp+8]
%define I   esi
%define J   edi
%define FRAME_SIZE 16
%define	interval dword[ebp-4]
%define	value_to_insert dword[ebp-8]
%define	inner dword[ebp-12]

segment .data
msg db "shell_sort(%d):  %d",10,0

segment .text
        global  shell_sort
        extern 	printf
shell_sort:
        enter   FRAME_SIZE,0
        pusha 

	; calculate the interval
	mov 	interval,0
	mov 	eax,n
	xor 	edx,edx
	mov 	ebx,3
	div 	ebx
	mov 	ebx,eax
	mov 	eax,0
	mov	ecx,3

	jmp 	while_interval_cond
while_interval:
	mul 	ecx
	inc 	eax
while_interval_cond:
	cmp 	eax,ebx
	jl 	while_interval
end_while_interval:

	jmp 	while_interval_gt_0_cond
while_interval_gt_0:
;      	for outer = interval; outer < A.length; outer ++ do:
	mov 	ecx,eax 	; outer = ecx, interval == eax
for_loop1:
	push 	eax
	push 	ebx
	mov 	eax,array
	lea 	eax,[eax+ESIZE*ecx]   ; address of array[outer]
	mov	eax,[eax]
	mov 	value_to_insert,eax
	mov 	inner,ecx
	pop 	ebx
	pop 	eax
	jmp 	while1_cond
while1:
	push 	eax
	push 	ebx
	push 	ecx
	mov 	eax,array
	mov 	ebx,inner
	lea 	eax,[eax+ESIZE*ebx]
	mov 	ecx,inner
	sub 	ecx,interval
	mov 	ebx,array
	lea 	ebx,[ebx+ESIZE*ecx]
	mov 	ebx,[ebx]
	mov 	[eax],ebx
	pop 	ecx
	pop 	ebx
	pop 	eax
	push 	eax
	push 	ebx
	mov 	ebx,inner
	sub 	ebx,eax
	mov 	inner,ebx
	pop 	ebx
	pop 	eax
while1_cond:
	push  	eax
	push  	ebx
	mov 	ebx,eax
	mov 	eax,inner
	dec 	ebx
	cmp    	eax,ebx
	pop 	ebx
	pop 	eax
	jle	    end_while1  	; short circuit evaluation
	push 	eax
	push 	ebx
	mov     ebx,inner
	sub 	ebx,eax		; inner - interval
	mov 	eax,array
	lea 	eax,[eax + ESIZE * ebx]
	mov 	eax,[eax]
	mov 	ebx,value_to_insert
	cmp 	eax,ebx
	pop 	ebx
	pop 	eax
	jge 	while1
end_while1:
	push 	eax
	push 	ebx
	mov 	eax,array
	mov 	ebx,inner
	lea	    eax,[eax + ESIZE * ebx]
	mov 	ebx,value_to_insert
	mov 	[eax],ebx
	pop 	ebx 
	pop	eax
; for loop, increment counter
	inc 	ecx
	cmp 	ecx,n
	jl  	for_loop1
end_for_loop1:

; calculate the interval
	dec 	eax
	xor 	edx,edx
	mov 	ebx,3
	div     ebx	
while_interval_gt_0_cond:
	mov 	interval,eax
	cmp 	eax,0
	jg 	    while_interval_gt_0
end_while_interval_gt_0:

done:
        popa
        leave
        ret

%include "asm_io.inc"
%include "defines.inc"
;
; This c callable function demonstrates a simple bubble sort algorithm
;
;


segment .data
before_string db 10,"Before sort",10,"-------------",10,0
after_string db 10,"After sort",10,"-------------",10,0
memory_failure db 10,"Failure to allocate memory",10,"-------------",10,0
L1 db 10,"memory allocated %d",10,"-------------",10,0

segment .bss

%define scale dword[ebp + 12]
%define n dword[ebp + 8]
%define array dword[ebp - 4]

segment .text
        global  asm_sort
        extern  puts, printf, scanf, dump_line 
	extern  malloc
	extern  bubble_sort
	extern  fill_array
	extern  print_array
	extern  seed_random

asm_sort:
        enter   4,0
	pusha

	call    seed_random	
	; get the memory for the array dynamically
	mov     eax,n 		; size of the array
	mov 	ebx,ESIZE
	mul 	ebx
	push    eax
	push    eax
	call    malloc			; call the system malloc function
	test    eax,eax
	jz   	fail_exit
	mov     array,eax
	add     esp,4			; clean up the stack
	pop 	eax
	push    eax
	push    dword L1
	call    printf
	add     esp,8


        push    scale		; range of random numbers 1,N
        push    n		; size of array
        push    array		; address of array
	call	fill_array
	add 	esp,12

	push    dword before_string
	call    printf
	add     esp,4
	
        push    n
        push    array
        call    print_array           ; print elements of array
        add     esp, 8

        push    n
        push    array
        call    bubble_sort           ; sort the array
        add     esp, 8

	push    dword after_string
	call    printf
	add     esp,4
        push    n
        push    array
        call    print_array           ; print elements of array
        add     esp, 8
done:
	popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

fail_exit:
	push dword memory_failure
	call printf
	add  esp,8
	jmp  done

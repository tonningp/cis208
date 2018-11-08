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
array        resd 1
scale_size   resd 1
array_size   resd 1

segment .text
        global  asm_sort
        extern  puts, printf, scanf, dump_line 
	extern  malloc
	extern  merge_sort
	extern  fill_array
	extern  print_array
	extern  seed_random

asm_sort:
        enter   0,0
	pusha

	call    seed_random	

	mov     eax,[ebp + 8] 		; get the memory for the array dynamically
	mov 	ebx,ESIZE
	mul 	ebx
	push    dword eax
	call    malloc			; call the system malloc function
	test    eax,eax
	jz   	fail_exit
	mov     [array],eax
	;push    eax
	;push    dword L1
	;call    printf
	;add     esp,8
	add     esp,4			; clean up the stack


        push    dword [ ebp + 12]	; range of random numbers 1,N
        push    dword [ebp + 8]		; size of array
        push    dword array		; address of array
	call	fill_array
	add 	esp,12

	push    dword before_string
	call    printf
	add     esp,4
	
        push    dword[ebp + 8]
        push    dword array
        call    print_array           ; print elements of array
        add     esp, 8

        push    dword [ebp + 8]
        push    dword array
        call    merge_sort           ; sort the array
        add     esp, 8

	push    dword after_string
	call    printf
	add     esp,4
        push    dword [ebp + 8]
        push    dword array
        call    print_array           ; print elements of array
        add     esp, 8
	jmp	done
fail_exit:
	push dword memory_failure
	call printf
	add  esp,8
done:
	popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


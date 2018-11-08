%include "defines.inc"

segment .text
       global get_random
       extern rand

get_random:
     enter 0,0
     push  ebx
     push  edx

     mov  ebx,[ebp+8]
     call rand
     xor  edx,edx	; rand messes with edx, so do this after call to rand
     idiv  ebx
     mov  eax,edx	; scales to what was passed as parameter
     add  eax,1		; shifts by 1
     pop  edx
     pop  ebx
     leave
     ret

segment .text
	global seed_random
        extern  srand,time

seed_random:
	enter 0,0
	pusha
	push    dword 0
	call    time
	push    dword eax
	call    srand
	add     esp,8
	popa
	leave
	ret


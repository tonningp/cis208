segment .data
sum dw 0
segment .bss

segment .text
	global _start
_start:
	nop			    ; no operation
        mov	eax,123456          ; store 123456 into register eax
        add 	eax,20		    ; add 10 to the number that  is currently in eax
	mov	[sum],eax
        mov eax,1
        mov ebx,0
        int 80H			 ;exit the program




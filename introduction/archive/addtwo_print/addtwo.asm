;nasm -f elf addtwo.o
;ld -m elf_i386 -o addtwo hello.o
segment .data
	ruler: db 		"0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF",10
	rulerLen: equ $-ruler
	outputString: db 	"****************",10
	outputLen: equ $-outputString
	divisor: db 10
segment .bss
	res resw 1
	res2 resw 1
segment .text
	global _start
_start:
	nop				; no operation
	mov	eax,4			; The system call for write (sys_write)
	mov	ebx,1			; File descriptor 1 - standard output
	mov	ecx,ruler		; 
	mov	edx,rulerLen		; length of string
	int	80h			; print the ruler
        mov	ax,12          		; store 12 into register ax
        add 	ax,30			; add 30 to the number that  is currently in eax
	mov	[res],ax		; move the value in ax to the res variable
        mov 	bx,10			; store the divisor into bx
	div	bl
	add	ah,48			; convert the remainder to ASCII
	add	al,48			; convert the quotient to ASCII
	mov	[outputString],al	; format the string with the value in the lower byte
	mov	[outputString+0x1],ah	; format the string with the value in the upper byte
	mov	eax,4			; The system call for write (sys_write)
	mov	ebx,1			; File descriptor 1 - standard output
	mov	ecx,outputString	; 
	mov	edx,outputLen		; length of string
	int	80h
	mov	ax,[res]		; format the string with the value in the lower byte
	mov	[res],al		; format the string with the value in the lower byte of al
	mov	ax,10
	mov	[res+0x1],al		; format the string with the value in the lower byte of al
	mov	eax,4			; The system call for write (sys_write)
	mov	ebx,1			; File descriptor 1 - standard output
	mov	ecx,res			; 
	mov	edx,2			; length of string
	int	80h
        mov 	eax,1
        mov 	ebx,0
        int 	80H			 ;exit the program




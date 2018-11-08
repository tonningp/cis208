;
; file: asm_main.asm

%include "asm_io.inc"
extern printf,scanf
;
; initialized data is put in the .data segment
;
segment .data

array1: dd 1.3,2.5,3.5,4.5,5.5,6.5,7.5,8.5,9.25,10.25          ; 1 byte elements
scan_format: db "%f",0
print_format: db "%0.2f",0xa,0

; uninitialized data is put in the .bss segment
;
segment .bss
tempf: resd 1
v1: resq 1
;
; code is put in the .text segment
;
segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
        mov ebx,array1
        mov edx,0x0
        mov ecx,10
; next print out result message as series of steps

while:
	pusha			; save state of all registers
	push tempf
	push scan_format
	call scanf
	add esp,8
	popa			; restore state of all registers
	mov eax,[tempf]
	mov [ebx+4*edx],eax
	fld dword [ebx+4*edx]
	fadd dword [tempf]
	fadd dword [tempf]
	fstp qword [v1]
	pusha			; save state of all registers
	push dword [v1+4]	; the float needs to be converted to a qword
	push dword [v1]		; do this by push upper and lower halves onto the stack
	push print_format	; the printf format string address is pushed on the stack
	call printf		; we'll call printf instead of using the subroutine
	add esp,12		; same as popping 3 dwords
	popa			; restore state of all registers
	;call dump_math edx
        inc edx			; increment the pointer that walks through the array
        cmp edx,ecx
        jne while
endwhile:        
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data

array1: dd 1.3,2.5,3.5,4.5,5.5,6.5,7.5,8.5,9.25,10.25          ; 1 byte elements
v1: dd 1.1

; uninitialized data is put in the .bss segment
;
segment .bss

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
        ;mov ax,[ebx+8*edx]
	fld dword [ebx+4*edx]
	call dump_math edx
	fstp dword [v1]
        inc edx
        cmp edx,ecx
        jne while
endwhile:        
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

print_it:
        enter   0,0
        pusha
        call print_int
        call print_nl
        popa
        leave
        ret

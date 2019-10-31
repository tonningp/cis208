;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data


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

	mov eax,1256

while:
         cdq
   ;      dump_regs 1
         mov ecx,10
         idiv ecx
;         call print_int
;         call print_nl
         mov ebx,eax
         mov eax,edx
         call print_int
         call print_nl
         mov eax,ebx
         cmp eax,0
         jnz while

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data

array1: dw 1,2,3,4,5,6,7,8,9,10          ; 1 word elements
array1_copy: dw 0,0,0,0,0,0,0,0,0,0          ; 1 word elements


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
; next print out result message as series of steps
        mov     eax,0             ; clear out the eax register
        mov ebx, array1           ; ebx = address of array1
        mov edx, array1_copy           ; ebx = address of array2

        mov ecx,10 

lp:

        ;  mov [edx], [ebx]      ; this would be ideal, but you can't do direct memory to memory indirect addressing
        mov ax,[ebx]             ; need a scratch register
        mov [edx],ax             ; then mov it into the memory location pointed to by edx
        call print_int           ;
        call print_nl

        add ebx,2                ; bx++
        add edx,2                ; dx++

        loop lp

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



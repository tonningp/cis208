%include "asm_io.inc"

;
; file: asm_main.asm
; Subprogram to C interfacing example

; subroutine calc
; finds the sum of the integers from a to b
; Parameters:
;   n    - what to sum up to (at [ebp + 8])
; Return value:
;   value of sum
; pseudo C code:
; int calc( int a , int b)
; {
;   sum = 0;
;   for( i=a; i <= b; i++ )
;     sum += i;
;   return sum;
; }
;

segment .text
        global  calc

;
; local variable:
;   sum at [ebp-4]
calc:
        push    ebp      ; create room on the stack by first saving the state of ebp
        mov     ebp,esp  ; then make ebp the top of the stack 
        sub     esp,4    ; now "push" a dword on the stack, this will be sum
        pusha            ; we will need to save the state of all the registers

        mov     dword [ebp-4],0   ; [ebp - 4] is the local variable sum, so now sum = 0
        mov     ebx, [ebp+8]            ; ebx is "i" and [ebp+8] is the parameter a 

for_loop:
        cmp     ebx, [ebp+12]      ; cmp i and b  (b is [ebp+12]
        jnle    end_for           ; if not i <= b, quit

        add     [ebp-4], ebx      ; sum += i
        inc     ebx
        jmp     short for_loop   ; it's just a short jump

end_for:

        popa                       ; restore the registers
        mov     eax,[ebp - 4]      ; this puts the local value sum in the eax register
        mov     esp,ebp            ; clean up the stack
        pop     ebp                ; restore the return address

        ret


%include "asm_io.inc"

;
; file: asm_main.asm
; Subprogram to C interfacing example

; subroutine calc_sum
; finds the sum of the integers 1 through n
; Parameters:
;   n    - what to sum up to (at [ebp + 8])
; Return value:
;   value of sum
; pseudo C code:
; int calc_sum( int n )
; {
;   int i, sum = 0;
;   for( i=1; i <= n; i++ )
;     sum += i;
;   return sum;
; }
;

segment .text
        global  calc_sum

;
; local variable:
;   sum at [ebp-4]
calc_sum:
        push    ebp
        mov     ebp,esp
        sub     esp,4
        ;push    ebx
        pusha

        mov     dword [ebp-4],0   ; sum = 0
        mov     ebx, 1            ; ebx is i in pseudocode

for_loop:
        cmp     ebx, [ebp+8]      ; cmp i and n
        jnle    end_for           ; if not i <= n, quit

        add     [ebp-4], ebx      ; sum += i
        inc     ebx
        jmp     short for_loop

end_for:
        mov     ebx, [ebp+12]      ; ebx = the pointer to the first parameter
        mov     eax,[ebp - 4]      ; this puts the local value sum in the eax register
        mov     [ebx], eax         ; the pointer to the first parameter now has the sum

        popa
        mov     esp,ebp
        pop     ebp

        ret


%include "defines.inc"

;
; routine print_array
; C-callable routine that prints out elements of a double word array as
; signed integers.
; C prototype:
; void print_array( const int * a, int n);
; Parameters:
;   a - pointer to array to print out (at ebp+8 on stack)
;   n - number of integers to print out (at ebp+12 on stack)
segment .data
OutputFormat    db   "%-5d %5d", NEW_LINE, 0

segment .text
        global  print_array
	extern  printf
print_array:
        enter   0,0
        pusha

        xor     esi, esi                  ; esi = 0
        mov     ecx, [ebp+12]             ; ecx = n
        mov     ebx, [ebp+8]              ; ebx = address of array

print_loop:
        push    ecx                       ; printf might change ecx!

        push    dword [ebx + 4*esi]       ; push array[esi]
        push    esi
        push    dword OutputFormat
        call    printf
        add     esp, 12                   ; remove parameters (leave ecx!)

        inc     esi
        pop     ecx
        loop    print_loop

	popa
        leave
        ret

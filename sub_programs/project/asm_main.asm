;
; file: sub2.asm
; Subprogram example program
;

%include "asm_io.inc"

segment .data
prompt1 db    "Enter the integer: ", 0       ; don't forget nul terminator
prompt2 db    "Enter the digit to find: ", 0

segment .bss
;
; These labels refer to double words used to store the inputs
;
input1  resd 1

 

segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        mov     eax, prompt1      ; print out prompt
        call    print_string
        call    read_int
        mov     [input1],eax
        mov     eax, prompt2      ; print out prompt
        call    print_string
        call    read_int
        mov     ebx,eax
        mov     eax,[input1]
        call    checkDigit 
        call    print_int
        call    print_nl
;
; next print out result message as series of steps
;


        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
;
; subprogram checkDigit
; Parameters:
;   eax - value of integer to search
;   ebx - value of digit
; Notes:
;   value of eax is destroyed

checkDigit:

        mov ecx,10
start:
        xor edx,edx
        idiv ecx
        cmp eax,0
        jz  end
        cmp edx,ebx
        jz  is_true 
        jmp start

is_true:
        mov eax,1
        jmp end
end:     
        ret                        ; jump back to caller



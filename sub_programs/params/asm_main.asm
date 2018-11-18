;
; file: sub1.asm
; Subprogram example program

%include "asm_io.inc"

segment .data
print_format db "p1=%d,p2=%d,local1=%d,local2=%d",10,0
segment .bss
;
; These labels refer to double words used to store the inputs
;

%define  p1 [ebp+8] 
%define  p2 [ebp+12] 

segment .text
        global  asm_main
        extern  printf

asm_main:
        enter   8,0               ; setup routine
        pusha

        mov   eax,p1
        mov   ebx,p2
        mov   ecx,10
        mov   [ebp-4],ecx
        mov   ecx,20
        mov   [ebp-8],ecx
        push  dword [ebp-8]
        push  dword [ebp-4]
        push  ebx
        push  eax
        push  print_format
        call  printf
        add   esp,20
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret
;
; subprogram get_int
; Parameters:
;   ebx - add ess of dword to store integer into
;   ecx - address of instruction to return to
; Notes:
;   value of eax is destroyed
get_int:
        call    read_int
        mov     [ebx], eax         ; store input into memory
        jmp     ecx                ; jump back to caller



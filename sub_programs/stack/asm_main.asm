%include "asm_io.inc"

segment .data
var1    dd  1

segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

        mov     eax,'a' ; (gdb) x/c $esp+28 0xffffd9d4:     97 'a'
        mov     ebx,'b' ; (gdb) x/c $esp+16 0xffffd9c8:     98 'b'
        mov     ecx,'c' ; (gdb) x/c $esp+24 0xffffd9d0:     99 'c'
        mov     edx,'d' ; (gdb) x/c $esp+20 0xffffd9cc:     100 'd'
b1:
        pusha
        mov     eax,'X'
        mov     [esp+28],eax
b2:
        popa
        push dword [var1]       ; 1 stored 
        push dword 2            ; 2 stored 
        push dword 3            ; 3 stored 
        pop eax ; EAX = 3, ESP = 
        pop ebx ; EBX = 2, ESP = 
        pop ecx ; ECX = 1, ESP = 

        push dword 1
        add  esp, 4          ; Pop null

        call print_int
        call print_nl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



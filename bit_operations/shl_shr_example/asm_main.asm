; file: asm_main.asm
;
; 

%include "asm_io.inc"

segment .data
;
; Output strings
;
num1: db 0x2
num2: db 0xff
msg1: db "odd",10,0
msg2: db "even",10,0

segment .bss
input:   resb 100H


segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha

        mov     eax,0

        mov     ax,[num1]

        shl     eax,1
b1:
        mov     ax,[num1]
        shr     eax,1
        jc      then
        mov     eax,msg2
        jmp     end
then:   
        mov     eax,msg1
end:        
        call print_string
        mov     bl,[num2]
b2:
        shl     bl,0x1
b3:
        xor    ebx,ebx
        mov    eax,3
        mov    ecx,2
        cmp    eax,ecx
        setg   bl

b4:
        xor    ebx,ebx
        mov    eax,2
        mov    ecx,3
        cmp    eax,ecx
        setg   bl

b5:
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

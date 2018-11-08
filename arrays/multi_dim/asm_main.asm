segment .data
board  db '-','-','-',0,'-','-','-',0,'-','-','-',0
format_str db "%s",10,0
segment .text
        global  asm_main
        extern  printf
        

asm_main:
        enter   0,0            
        pusha
        mov    [board + 5],BYTE 'X'
        call   pboard
b1:     
        popa
        mov     eax,0
        leave
        ret

pboard:
        enter   0,0            
        pusha
        mov    eax,board
        push   eax
        push   format_str
        call   printf
        add    esp,8
        mov    eax,board + 4
        push   eax
        push   format_str
        call   printf
        add    esp,8
        mov    eax,board + 8
        push   eax
        push   format_str
        call   printf
        add    esp,8
        popa
        leave
        ret


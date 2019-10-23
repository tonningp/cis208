;
; file: asm_main.asm
;
; For unsigned integers, there are two flags (bits in the FLAGS register)
; that are important: the zero (ZF) and carry (CF) flags. The zero flag is
; set (1) if the resulting difference would be zero. The carry flag is used as a
; borrow flag for subtraction. Consider a comparison like:
; cmp vleft, vright
; The difference of vleft - vright is computed and the flags are set accordingly. If the difference of the of CMP is zero,
; vleft = vright, then ZF is set
; (i.e. 1) and the CF is unset (i.e. 0). If vleft > vright, then ZF is unset
; and CF is unset (no borrow). If vleft < vright, then ZF is unset and CF
; is set (borrow).
;

%include "asm_io.inc"

segment .data
;
; Output strings
;
before          db    "Before cmp: ",10,0
after           db    "After cmp: ",10,0

segment .bss
input   resd 1


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha


        mov eax,20
        mov ebx,10
        cmp eax,ebx

b3:
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret







;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data


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
b1:
        mov   eax, 0x5   ; eax = 0x5, SF = 0
;The CDQ (Convert Doubleword to Quadword) instruction extends the sign bit of EAX into the EDX register.
        cdq              ; edx = 0x00000000
        mov   eax, 0x5   ; eax = 0x5
        neg   eax        ; eax = 0xFFFFFFFB, SF = 1
        cdq              ; edx = 0xFFFFFFFF

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret



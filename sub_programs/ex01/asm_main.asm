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

        push   DWORD 100
        call sum

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


sum:
      pusha

      push ebp
      mov  ebp,esp
      sub  esp,4
      mov  [ebp + 4],0

      ; this is where I can add my assembly code

      pop ebp
      ret



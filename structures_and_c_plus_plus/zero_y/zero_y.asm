; file: zero_y.asm
;
; 

segment .data
%define     y_offset    4

segment .text
        global  zero_y:
zero_y:
        enter   0,0             ;setup routine

	    mov 	eax,[ebp + 8]   ; get s_p (struct pointer) from stack
        mov     dword [eax + y_offset],0
        leave                     
        ret

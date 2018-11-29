; file: bitfield_size.asm
;
; 

segment .data

segment .text
        global  bitfield_size:

bitfield_size:
        enter   0,0             ;setup routine

	    mov 	eax,[ebp + 8]   ; get s_p (struct pointer) from stack
        mov     ebx,[eax]
b1:
        leave                     
        ret

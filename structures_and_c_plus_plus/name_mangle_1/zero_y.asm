; file: zero_y.asm
;
; An assembly function that repeatedly asks user for an r p or s for rock, paper scissors
; The function will keep on asking the user for the number until it is valid. 
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

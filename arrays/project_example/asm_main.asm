; file: asm_main.asm
;Write an assembly language function that will do the following:
 
;1.   provide a function that will take 3 parameters:
;The base address of a word (16 bit) array
;The length of the array
;An integer -- a scalar
;The function will iterate over the array and will multiply the scalar by each element in the array.  Each element of the array will then be changed to the scalar multiple.  This is an example
;a1:  dw  1,2,3,4,5
;This looks like:
;a1[0]   a1[1]   a1[2]   a1[3]   a1[4]
;1           2        3        4         5
; 
;if the function is called with the above array and a scalar of 5 then the result would be:
;a1[0]   a1[1]   a1[2]     a1[3]       a1[4]
;5           10        15        20        2 5

%include "asm_io.inc"

segment .data

array1: dw 1,2,3,4,5,6,7,8,9,10

segment .text
        global  asm_main
asm_main:
        enter   0,0             ;setup routine
        pusha
		mov		eax,array1
		push    eax
		mov		eax,10
		push    eax
		mov		eax,5
		push    eax
		call    scalar_mult	
		add		esp,12

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret

scalar_mult:
        enter   0,0             ;setup routine
        pusha
								; ebp + 16 is address of array	
								; ebp + 12 is size of array	
								; ebp + 8 is scalar
		mov    eax,[ebp+8]

		call   print_int
        call   print_nl
        popa
		leave
		ret

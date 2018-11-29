; Disassembly of file: main.o
; Wed Nov 28 19:50:46 2018
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


global main: function
global _Z3sqri: function                                ; Note: Weak.

extern __cxa_atexit                                     ; near
extern _ZNSt8ios_base4InitD1Ev                          ; byte
extern __dso_handle                                     ; byte
extern _ZNSt8ios_base4InitC1Ev                          ; near


SECTION .text   align=1 execute                         ; section number 1, code

main:   ; Function begin
        lea     ecx, [esp+4H]                           ; 0000 _ 8D. 4C 24, 04
        and     esp, 0FFFFFFF0H                         ; 0004 _ 83. E4, F0
        push    dword [ecx-4H]                          ; 0007 _ FF. 71, FC
        push    ebp                                     ; 000A _ 55
        mov     ebp, esp                                ; 000B _ 89. E5
        push    ecx                                     ; 000D _ 51
        sub     esp, 20                                 ; 000E _ 83. EC, 14
        sub     esp, 12                                 ; 0011 _ 83. EC, 0C
        push    10                                      ; 0014 _ 6A, 0A
        call    _Z3sqri                                 ; 0016 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 001B _ 83. C4, 10
        mov     dword [ebp-0CH], eax                    ; 001E _ 89. 45, F4
        mov     eax, 0                                  ; 0021 _ B8, 00000000
        mov     ecx, dword [ebp-4H]                     ; 0026 _ 8B. 4D, FC
        leave                                           ; 0029 _ C9
        lea     esp, [ecx-4H]                           ; 002A _ 8D. 61, FC
        ret                                             ; 002D _ C3
; main End of function

_Z41__static_initialization_and_destruction_0ii:; Local function
        push    ebp                                     ; 002E _ 55
        mov     ebp, esp                                ; 002F _ 89. E5
        sub     esp, 8                                  ; 0031 _ 83. EC, 08
        cmp     dword [ebp+8H], 1                       ; 0034 _ 83. 7D, 08, 01
        jnz     ?_001                                   ; 0038 _ 75, 33
        cmp     dword [ebp+0CH], 65535                  ; 003A _ 81. 7D, 0C, 0000FFFF
        jnz     ?_001                                   ; 0041 _ 75, 2A
        sub     esp, 12                                 ; 0043 _ 83. EC, 0C
        push    _ZStL8__ioinit                          ; 0046 _ 68, 00000000(d)
        call    _ZNSt8ios_base4InitC1Ev                 ; 004B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0050 _ 83. C4, 10
        sub     esp, 4                                  ; 0053 _ 83. EC, 04
        push    __dso_handle                            ; 0056 _ 68, 00000000(d)
        push    _ZStL8__ioinit                          ; 005B _ 68, 00000000(d)
        push    _ZNSt8ios_base4InitD1Ev                 ; 0060 _ 68, 00000000(d)
        call    __cxa_atexit                            ; 0065 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 006A _ 83. C4, 10
?_001:  nop                                             ; 006D _ 90
        leave                                           ; 006E _ C9
        ret                                             ; 006F _ C3

_GLOBAL__sub_I_main:; Local function
        push    ebp                                     ; 0070 _ 55
        mov     ebp, esp                                ; 0071 _ 89. E5
        sub     esp, 8                                  ; 0073 _ 83. EC, 08
        sub     esp, 8                                  ; 0076 _ 83. EC, 08
        push    65535                                   ; 0079 _ 68, 0000FFFF
        push    1                                       ; 007E _ 6A, 01
        call    _Z41__static_initialization_and_destruction_0ii; 0080 _ E8, FFFFFFA9
        add     esp, 16                                 ; 0085 _ 83. C4, 10
        leave                                           ; 0088 _ C9
        ret                                             ; 0089 _ C3


SECTION .data   align=1 noexecute                       ; section number 2, data


SECTION .bss    align=1 noexecute                       ; section number 3, bss

_ZStL8__ioinit:                                         ; byte
        resb    1                                       ; 0000


SECTION .text._Z3sqri align=1 execute                   ; section number 4, code

_Z3sqri:; Function begin, weak
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0003 _ 8B. 45, 08
        imul    eax, dword [ebp+8H]                     ; 0006 _ 0F AF. 45, 08
        pop     ebp                                     ; 000A _ 5D
        ret                                             ; 000B _ C3
; _Z3sqri End of function


SECTION .init_array align=4 noexecute                   ; section number 5, data

        dd _GLOBAL__sub_I_main                          ; 0000 _ 00000070 (d)


SECTION .eh_frame align=4 noexecute                     ; section number 6, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 7CH, 08H, 01H       ; 0008 _ .zR..|..
        db 1BH, 0CH, 04H, 04H, 88H, 01H, 00H, 00H       ; 0010 _ ........
        db 1CH, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _ ........
        dd _Z3sqri-$-20H                                ; 0020 _ 00000000 (rel)
        dd 0000000CH, 080E4100H                         ; 0024 _ 12 135151872 
        dd 0D420285H, 0CC54805H                         ; 002C _ 222429829 214255621 
        dd 00000404H, 00000028H                         ; 0034 _ 1028 40 
        dd 0000003CH                                    ; 003C _ 60 
        dd main-$-40H                                   ; 0040 _ 00000000 (rel)
        dd 0000002EH, 010C4400H                         ; 0044 _ 46 17581056 
        dd 05104700H, 43007502H                         ; 004C _ 84952832 1124103426 
        dd 7C75030FH, 010C5B06H                         ; 0054 _ 2088043279 17586950 
        dd 43C54100H, 0004040CH                         ; 005C _ 1137000704 263180 
        dd 0000001CH, 00000068H                         ; 0064 _ 28 104 
        dd main-$-3EH                                   ; 006C _ 0000002E (rel)
        dd 00000042H, 080E4100H                         ; 0070 _ 66 135151872 
        dd 0D420285H, 0CC57E05H                         ; 0078 _ 222429829 214269445 
        dd 00000404H, 0000001CH                         ; 0080 _ 1028 28 
        dd 00000088H                                    ; 0088 _ 136 
        dd main-$-1CH                                   ; 008C _ 00000070 (rel)
        dd 0000001AH, 080E4100H                         ; 0090 _ 26 135151872 
        dd 0D420285H, 0CC55605H                         ; 0098 _ 222429829 214259205 
        dd 00000404H                                    ; 00A0 _ 1028 



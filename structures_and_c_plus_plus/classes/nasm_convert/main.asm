; Disassembly of file: main.o
; Wed Nov 28 19:52:39 2018
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386, 80x87


global _ZN5PointC1Ev: function
global _ZN5PointC2Ev: function
global _ZN5PointC1Edd: function
global _ZN5PointC2Edd: function
global _ZN5Point5set_xEd: function
global _ZN5Point5set_yEd: function
global set_x: function
global main: function

extern __cxa_atexit                                     ; near
extern _ZNSt8ios_base4InitD1Ev                          ; byte
extern __dso_handle                                     ; byte
extern _ZNSt8ios_base4InitC1Ev                          ; near
extern __stack_chk_fail                                 ; near


SECTION .text   align=2 execute                         ; section number 1, code

_ZN5PointC1Ev:; Function begin

_ZN5PointC2Ev:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0003 _ 8B. 45, 08
        fldz                                            ; 0006 _ D9. EE
        fstp    qword [eax+8H]                          ; 0008 _ DD. 58, 08
        mov     eax, dword [ebp+8H]                     ; 000B _ 8B. 45, 08
        fld     qword [eax+8H]                          ; 000E _ DD. 40, 08
        mov     eax, dword [ebp+8H]                     ; 0011 _ 8B. 45, 08
        fstp    qword [eax]                             ; 0014 _ DD. 18
        nop                                             ; 0016 _ 90
        pop     ebp                                     ; 0017 _ 5D
        ret                                             ; 0018 _ C3
; _ZN5PointC1Ev End of function

        nop                                             ; 0019 _ 90

_ZN5PointC1Edd:; Function begin

_ZN5PointC2Edd:
        push    ebp                                     ; 001A _ 55
        mov     ebp, esp                                ; 001B _ 89. E5
        sub     esp, 16                                 ; 001D _ 83. EC, 10
        mov     eax, dword [ebp+0CH]                    ; 0020 _ 8B. 45, 0C
        mov     dword [ebp-8H], eax                     ; 0023 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 0026 _ 8B. 45, 10
        mov     dword [ebp-4H], eax                     ; 0029 _ 89. 45, FC
        mov     eax, dword [ebp+14H]                    ; 002C _ 8B. 45, 14
        mov     dword [ebp-10H], eax                    ; 002F _ 89. 45, F0
        mov     eax, dword [ebp+18H]                    ; 0032 _ 8B. 45, 18
        mov     dword [ebp-0CH], eax                    ; 0035 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0038 _ 8B. 45, 08
        fld     qword [ebp-8H]                          ; 003B _ DD. 45, F8
        fstp    qword [eax]                             ; 003E _ DD. 18
        mov     eax, dword [ebp+8H]                     ; 0040 _ 8B. 45, 08
        fld     qword [ebp-10H]                         ; 0043 _ DD. 45, F0
        fstp    qword [eax+8H]                          ; 0046 _ DD. 58, 08
        nop                                             ; 0049 _ 90
        leave                                           ; 004A _ C9
        ret                                             ; 004B _ C3
; _ZN5PointC1Edd End of function

_ZN5Point5set_xEd:; Function begin
        push    ebp                                     ; 004C _ 55
        mov     ebp, esp                                ; 004D _ 89. E5
        sub     esp, 8                                  ; 004F _ 83. EC, 08
        mov     eax, dword [ebp+0CH]                    ; 0052 _ 8B. 45, 0C
        mov     dword [ebp-8H], eax                     ; 0055 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 0058 _ 8B. 45, 10
        mov     dword [ebp-4H], eax                     ; 005B _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 005E _ 8B. 45, 08
        fld     qword [ebp-8H]                          ; 0061 _ DD. 45, F8
        fstp    qword [eax]                             ; 0064 _ DD. 18
        nop                                             ; 0066 _ 90
        leave                                           ; 0067 _ C9
        ret                                             ; 0068 _ C3
; _ZN5Point5set_xEd End of function

        nop                                             ; 0069 _ 90

_ZN5Point5set_yEd:; Function begin
        push    ebp                                     ; 006A _ 55
        mov     ebp, esp                                ; 006B _ 89. E5
        sub     esp, 8                                  ; 006D _ 83. EC, 08
        mov     eax, dword [ebp+0CH]                    ; 0070 _ 8B. 45, 0C
        mov     dword [ebp-8H], eax                     ; 0073 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 0076 _ 8B. 45, 10
        mov     dword [ebp-4H], eax                     ; 0079 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 007C _ 8B. 45, 08
        fld     qword [ebp-8H]                          ; 007F _ DD. 45, F8
        fstp    qword [eax+8H]                          ; 0082 _ DD. 58, 08
        nop                                             ; 0085 _ 90
        leave                                           ; 0086 _ C9
        ret                                             ; 0087 _ C3
; _ZN5Point5set_yEd End of function

set_x:  ; Function begin
        push    ebp                                     ; 0088 _ 55
        mov     ebp, esp                                ; 0089 _ 89. E5
        sub     esp, 8                                  ; 008B _ 83. EC, 08
        mov     eax, dword [ebp+0CH]                    ; 008E _ 8B. 45, 0C
        mov     dword [ebp-8H], eax                     ; 0091 _ 89. 45, F8
        mov     eax, dword [ebp+10H]                    ; 0094 _ 8B. 45, 10
        mov     dword [ebp-4H], eax                     ; 0097 _ 89. 45, FC
        sub     esp, 4                                  ; 009A _ 83. EC, 04
        push    dword [ebp-4H]                          ; 009D _ FF. 75, FC
        push    dword [ebp-8H]                          ; 00A0 _ FF. 75, F8
        push    dword [ebp+8H]                          ; 00A3 _ FF. 75, 08
        call    _ZN5Point5set_xEd                       ; 00A6 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00AB _ 83. C4, 10
        nop                                             ; 00AE _ 90
        leave                                           ; 00AF _ C9
        ret                                             ; 00B0 _ C3
; set_x End of function

main:   ; Function begin
        lea     ecx, [esp+4H]                           ; 00B1 _ 8D. 4C 24, 04
        and     esp, 0FFFFFFF0H                         ; 00B5 _ 83. E4, F0
        push    dword [ecx-4H]                          ; 00B8 _ FF. 71, FC
        push    ebp                                     ; 00BB _ 55
        mov     ebp, esp                                ; 00BC _ 89. E5
        push    ecx                                     ; 00BE _ 51
        sub     esp, 36                                 ; 00BF _ 83. EC, 24
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 00C2 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 00C8 _ 89. 45, F4
        xor     eax, eax                                ; 00CB _ 31. C0
        sub     esp, 4                                  ; 00CD _ 83. EC, 04
        lea     eax, [ebp-20H]                          ; 00D0 _ 8D. 45, E0
        push    eax                                     ; 00D3 _ 50
        call    _ZN5PointC1Ev                           ; 00D4 _ E8, FFFFFFFC(rel)
        add     esp, 8                                  ; 00D9 _ 83. C4, 08
        sub     esp, 4                                  ; 00DC _ 83. EC, 04
        fld     qword [?_003]                           ; 00DF _ DD. 05, 00000000(d)
        lea     esp, [esp-8H]                           ; 00E5 _ 8D. 64 24, F8
        fstp    qword [esp]                             ; 00E9 _ DD. 1C 24
        lea     eax, [ebp-20H]                          ; 00EC _ 8D. 45, E0
        push    eax                                     ; 00EF _ 50
        call    _ZN5Point5set_xEd                       ; 00F0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00F5 _ 83. C4, 10
        sub     esp, 4                                  ; 00F8 _ 83. EC, 04
        fld     qword [?_004]                           ; 00FB _ DD. 05, 00000008(d)
        lea     esp, [esp-8H]                           ; 0101 _ 8D. 64 24, F8
        fstp    qword [esp]                             ; 0105 _ DD. 1C 24
        lea     eax, [ebp-20H]                          ; 0108 _ 8D. 45, E0
        push    eax                                     ; 010B _ 50
        call    _ZN5Point5set_yEd                       ; 010C _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0111 _ 83. C4, 10
        mov     eax, 0                                  ; 0114 _ B8, 00000000
        mov     edx, dword [ebp-0CH]                    ; 0119 _ 8B. 55, F4
; Note: Absolute memory address without relocation
        xor     edx, dword [gs:14H]                     ; 011C _ 65: 33. 15, 00000014
        jz      ?_001                                   ; 0123 _ 74, 05
        call    __stack_chk_fail                        ; 0125 _ E8, FFFFFFFC(rel)
?_001:  mov     ecx, dword [ebp-4H]                     ; 012A _ 8B. 4D, FC
        leave                                           ; 012D _ C9
        lea     esp, [ecx-4H]                           ; 012E _ 8D. 61, FC
        ret                                             ; 0131 _ C3
; main End of function

_Z41__static_initialization_and_destruction_0ii:; Local function
        push    ebp                                     ; 0132 _ 55
        mov     ebp, esp                                ; 0133 _ 89. E5
        sub     esp, 8                                  ; 0135 _ 83. EC, 08
        cmp     dword [ebp+8H], 1                       ; 0138 _ 83. 7D, 08, 01
        jnz     ?_002                                   ; 013C _ 75, 33
        cmp     dword [ebp+0CH], 65535                  ; 013E _ 81. 7D, 0C, 0000FFFF
        jnz     ?_002                                   ; 0145 _ 75, 2A
        sub     esp, 12                                 ; 0147 _ 83. EC, 0C
        push    _ZStL8__ioinit                          ; 014A _ 68, 00000000(d)
        call    _ZNSt8ios_base4InitC1Ev                 ; 014F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0154 _ 83. C4, 10
        sub     esp, 4                                  ; 0157 _ 83. EC, 04
        push    __dso_handle                            ; 015A _ 68, 00000000(d)
        push    _ZStL8__ioinit                          ; 015F _ 68, 00000000(d)
        push    _ZNSt8ios_base4InitD1Ev                 ; 0164 _ 68, 00000000(d)
        call    __cxa_atexit                            ; 0169 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 016E _ 83. C4, 10
?_002:  nop                                             ; 0171 _ 90
        leave                                           ; 0172 _ C9
        ret                                             ; 0173 _ C3

_GLOBAL__sub_I__ZN5PointC2Ev:; Local function
        push    ebp                                     ; 0174 _ 55
        mov     ebp, esp                                ; 0175 _ 89. E5
        sub     esp, 8                                  ; 0177 _ 83. EC, 08
        sub     esp, 8                                  ; 017A _ 83. EC, 08
        push    65535                                   ; 017D _ 68, 0000FFFF
        push    1                                       ; 0182 _ 6A, 01
        call    _Z41__static_initialization_and_destruction_0ii; 0184 _ E8, FFFFFFA9
        add     esp, 16                                 ; 0189 _ 83. C4, 10
        leave                                           ; 018C _ C9
        ret                                             ; 018D _ C3


SECTION .data   align=1 noexecute                       ; section number 2, data


SECTION .bss    align=1 noexecute                       ; section number 3, bss

_ZStL8__ioinit:                                         ; byte
        resb    1                                       ; 0000


SECTION .init_array align=4 noexecute                   ; section number 4, data

        dd _GLOBAL__sub_I__ZN5PointC2Ev                 ; 0000 _ 00000174 (d)


SECTION .rodata align=8 noexecute                       ; section number 5, const

?_003:                                                  ; qword
        dq 4024000000000000H                            ; 0000 _ 10.0 

?_004:  dq 4026000000000000H                            ; 0008 _ 11.0 


SECTION .eh_frame align=4 noexecute                     ; section number 6, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 7CH, 08H, 01H       ; 0008 _ .zR..|..
        db 1BH, 0CH, 04H, 04H, 88H, 01H, 00H, 00H       ; 0010 _ ........
        db 1CH, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _ ........
        dd _ZN5PointC2Ev-$-20H                          ; 0020 _ 00000000 (rel)
        dd 00000019H, 080E4100H                         ; 0024 _ 25 135151872 
        dd 0D420285H, 0CC55505H                         ; 002C _ 222429829 214258949 
        dd 00000404H, 0000001CH                         ; 0034 _ 1028 28 
        dd 0000003CH                                    ; 003C _ 60 
        dd _ZN5PointC2Ev-$-26H                          ; 0040 _ 0000001A (rel)
        dd 00000032H, 080E4100H                         ; 0044 _ 50 135151872 
        dd 0D420285H, 0CC56E05H                         ; 004C _ 222429829 214265349 
        dd 00000404H, 0000001CH                         ; 0054 _ 1028 28 
        dd 0000005CH                                    ; 005C _ 92 
        dd _ZN5PointC2Ev-$-14H                          ; 0060 _ 0000004C (rel)
        dd 0000001DH, 080E4100H                         ; 0064 _ 29 135151872 
        dd 0D420285H, 0CC55905H                         ; 006C _ 222429829 214259973 
        dd 00000404H, 0000001CH                         ; 0074 _ 1028 28 
        dd 0000007CH                                    ; 007C _ 124 
        dd _ZN5PointC2Ev-$-16H                          ; 0080 _ 0000006A (rel)
        dd 0000001EH, 080E4100H                         ; 0084 _ 30 135151872 
        dd 0D420285H, 0CC55A05H                         ; 008C _ 222429829 214260229 
        dd 00000404H, 0000001CH                         ; 0094 _ 1028 28 
        dd 0000009CH                                    ; 009C _ 156 
        dd _ZN5PointC2Ev-$-18H                          ; 00A0 _ 00000088 (rel)
        dd 00000029H, 080E4100H                         ; 00A4 _ 41 135151872 
        dd 0D420285H, 0CC56505H                         ; 00AC _ 222429829 214263045 
        dd 00000404H, 00000028H                         ; 00B4 _ 1028 40 
        dd 000000BCH                                    ; 00BC _ 188 
        dd _ZN5PointC2Ev-$-0FH                          ; 00C0 _ 000000B1 (rel)
        dd 00000081H, 010C4400H                         ; 00C4 _ 129 17581056 
        dd 05104700H, 43007502H                         ; 00CC _ 84952832 1124103426 
        dd 7C75030FH, 0C6E0206H                         ; 00D4 _ 2088043279 208536070 
        dd 0C5410001H, 04040C43H                        ; 00DC _ -985595903 67374147 
        dd 0000001CH, 000000E8H                         ; 00E4 _ 28 232 
        dd _ZN5PointC2Ev-$+46H                          ; 00EC _ 00000132 (rel)
        dd 00000042H, 080E4100H                         ; 00F0 _ 66 135151872 
        dd 0D420285H, 0CC57E05H                         ; 00F8 _ 222429829 214269445 
        dd 00000404H, 0000001CH                         ; 0100 _ 1028 28 
        dd 00000108H                                    ; 0108 _ 264 
        dd _ZN5PointC2Ev-$+68H                          ; 010C _ 00000174 (rel)
        dd 0000001AH, 080E4100H                         ; 0110 _ 26 135151872 
        dd 0D420285H, 0CC55605H                         ; 0118 _ 222429829 214259205 
        dd 00000404H                                    ; 0120 _ 1028 



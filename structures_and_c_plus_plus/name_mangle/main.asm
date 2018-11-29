; Disassembly of file: main.o
; Wed Nov 28 19:37:45 2018
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386, 80x87


global _Z1fi: function
global _Z1fd: function
global g: function
global _Z1hNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: function
global main: function

extern __cxa_atexit                                     ; near
extern _ZNSt8ios_base4InitD1Ev                          ; byte
extern __dso_handle                                     ; byte
extern _ZNSt8ios_base4InitC1Ev                          ; near
extern _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE ; near
extern printf                                           ; near
extern _ZNSolsEd                                        ; near
extern _ZNSolsEPFRSoS_E                                 ; near
extern _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_ ; byte
extern _ZNSolsEi                                        ; near
extern _ZSt4cout                                        ; byte


SECTION .text   align=1 execute                         ; section number 1, code

_Z1fi:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 8                                  ; 0003 _ 83. EC, 08
        sub     esp, 8                                  ; 0006 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0009 _ FF. 75, 08
        push    _ZSt4cout                               ; 000C _ 68, 00000000(d)
        call    _ZNSolsEi                               ; 0011 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0016 _ 83. C4, 10
        sub     esp, 8                                  ; 0019 _ 83. EC, 08
        push    _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; 001C _ 68, 00000000(d)
        push    eax                                     ; 0021 _ 50
        call    _ZNSolsEPFRSoS_E                        ; 0022 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0027 _ 83. C4, 10
        nop                                             ; 002A _ 90
        leave                                           ; 002B _ C9
        ret                                             ; 002C _ C3
; _Z1fi End of function

_Z1fd:  ; Function begin
        push    ebp                                     ; 002D _ 55
        mov     ebp, esp                                ; 002E _ 89. E5
        sub     esp, 24                                 ; 0030 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0033 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0036 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 0039 _ 8B. 45, 0C
        mov     dword [ebp-0CH], eax                    ; 003C _ 89. 45, F4
        sub     esp, 4                                  ; 003F _ 83. EC, 04
        push    dword [ebp-0CH]                         ; 0042 _ FF. 75, F4
        push    dword [ebp-10H]                         ; 0045 _ FF. 75, F0
        push    _ZSt4cout                               ; 0048 _ 68, 00000000(d)
        call    _ZNSolsEd                               ; 004D _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0052 _ 83. C4, 10
        sub     esp, 8                                  ; 0055 _ 83. EC, 08
        push    _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; 0058 _ 68, 00000000(d)
        push    eax                                     ; 005D _ 50
        call    _ZNSolsEPFRSoS_E                        ; 005E _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0063 _ 83. C4, 10
        nop                                             ; 0066 _ 90
        leave                                           ; 0067 _ C9
        ret                                             ; 0068 _ C3
; _Z1fd End of function

g:      ; Function begin
        push    ebp                                     ; 0069 _ 55
        mov     ebp, esp                                ; 006A _ 89. E5
        sub     esp, 8                                  ; 006C _ 83. EC, 08
        mov     eax, dword [ebp+8H]                     ; 006F _ 8B. 45, 08
        fld     qword [eax]                             ; 0072 _ DD. 00
        sub     esp, 4                                  ; 0074 _ 83. EC, 04
        lea     esp, [esp-8H]                           ; 0077 _ 8D. 64 24, F8
        fstp    qword [esp]                             ; 007B _ DD. 1C 24
        push    ?_002                                   ; 007E _ 68, 00000000(d)
        call    printf                                  ; 0083 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0088 _ 83. C4, 10
        nop                                             ; 008B _ 90
        leave                                           ; 008C _ C9
        ret                                             ; 008D _ C3
; g End of function

_Z1hNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:; Function begin
        push    ebp                                     ; 008E _ 55
        mov     ebp, esp                                ; 008F _ 89. E5
        sub     esp, 8                                  ; 0091 _ 83. EC, 08
        sub     esp, 8                                  ; 0094 _ 83. EC, 08
        push    dword [ebp+8H]                          ; 0097 _ FF. 75, 08
        push    _ZSt4cout                               ; 009A _ 68, 00000000(d)
        call    _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE; 009F _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00A4 _ 83. C4, 10
        sub     esp, 8                                  ; 00A7 _ 83. EC, 08
        push    _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_; 00AA _ 68, 00000000(d)
        push    eax                                     ; 00AF _ 50
        call    _ZNSolsEPFRSoS_E                        ; 00B0 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00B5 _ 83. C4, 10
        nop                                             ; 00B8 _ 90
        leave                                           ; 00B9 _ C9
        ret                                             ; 00BA _ C3
; _Z1hNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE End of function

main:   ; Function begin
        lea     ecx, [esp+4H]                           ; 00BB _ 8D. 4C 24, 04
        and     esp, 0FFFFFFF0H                         ; 00BF _ 83. E4, F0
        push    dword [ecx-4H]                          ; 00C2 _ FF. 71, FC
        push    ebp                                     ; 00C5 _ 55
        mov     ebp, esp                                ; 00C6 _ 89. E5
        push    ecx                                     ; 00C8 _ 51
        sub     esp, 4                                  ; 00C9 _ 83. EC, 04
        sub     esp, 12                                 ; 00CC _ 83. EC, 0C
        push    1                                       ; 00CF _ 6A, 01
        call    _Z1fi                                   ; 00D1 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00D6 _ 83. C4, 10
        sub     esp, 8                                  ; 00D9 _ 83. EC, 08
        fld     qword [?_003]                           ; 00DC _ DD. 05, 00000008(d)
        lea     esp, [esp-8H]                           ; 00E2 _ 8D. 64 24, F8
        fstp    qword [esp]                             ; 00E6 _ DD. 1C 24
        call    _Z1fd                                   ; 00E9 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 00EE _ 83. C4, 10
        mov     eax, 0                                  ; 00F1 _ B8, 00000000
        mov     ecx, dword [ebp-4H]                     ; 00F6 _ 8B. 4D, FC
        leave                                           ; 00F9 _ C9
        lea     esp, [ecx-4H]                           ; 00FA _ 8D. 61, FC
        ret                                             ; 00FD _ C3
; main End of function

_Z41__static_initialization_and_destruction_0ii:; Local function
        push    ebp                                     ; 00FE _ 55
        mov     ebp, esp                                ; 00FF _ 89. E5
        sub     esp, 8                                  ; 0101 _ 83. EC, 08
        cmp     dword [ebp+8H], 1                       ; 0104 _ 83. 7D, 08, 01
        jnz     ?_001                                   ; 0108 _ 75, 33
        cmp     dword [ebp+0CH], 65535                  ; 010A _ 81. 7D, 0C, 0000FFFF
        jnz     ?_001                                   ; 0111 _ 75, 2A
        sub     esp, 12                                 ; 0113 _ 83. EC, 0C
        push    _ZStL8__ioinit                          ; 0116 _ 68, 00000000(d)
        call    _ZNSt8ios_base4InitC1Ev                 ; 011B _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 0120 _ 83. C4, 10
        sub     esp, 4                                  ; 0123 _ 83. EC, 04
        push    __dso_handle                            ; 0126 _ 68, 00000000(d)
        push    _ZStL8__ioinit                          ; 012B _ 68, 00000000(d)
        push    _ZNSt8ios_base4InitD1Ev                 ; 0130 _ 68, 00000000(d)
        call    __cxa_atexit                            ; 0135 _ E8, FFFFFFFC(rel)
        add     esp, 16                                 ; 013A _ 83. C4, 10
?_001:  nop                                             ; 013D _ 90
        leave                                           ; 013E _ C9
        ret                                             ; 013F _ C3

_GLOBAL__sub_I__Z1fi:; Local function
        push    ebp                                     ; 0140 _ 55
        mov     ebp, esp                                ; 0141 _ 89. E5
        sub     esp, 8                                  ; 0143 _ 83. EC, 08
        sub     esp, 8                                  ; 0146 _ 83. EC, 08
        push    65535                                   ; 0149 _ 68, 0000FFFF
        push    1                                       ; 014E _ 6A, 01
        call    _Z41__static_initialization_and_destruction_0ii; 0150 _ E8, FFFFFFA9
        add     esp, 16                                 ; 0155 _ 83. C4, 10
        leave                                           ; 0158 _ C9
        ret                                             ; 0159 _ C3


SECTION .data   align=1 noexecute                       ; section number 2, data


SECTION .bss    align=1 noexecute                       ; section number 3, bss

_ZStL8__ioinit:                                         ; byte
        resb    1                                       ; 0000


SECTION .rodata align=8 noexecute                       ; section number 4, const

?_002:                                                  ; byte
        db 25H, 66H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ %f......

?_003:  dq 4027000000000000H                            ; 0008 _ 11.5 


SECTION .init_array align=4 noexecute                   ; section number 5, data

        dd _GLOBAL__sub_I__Z1fi                         ; 0000 _ 00000140 (d)


SECTION .eh_frame align=4 noexecute                     ; section number 6, const

        db 14H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0000 _ ........
        db 01H, 7AH, 52H, 00H, 01H, 7CH, 08H, 01H       ; 0008 _ .zR..|..
        db 1BH, 0CH, 04H, 04H, 88H, 01H, 00H, 00H       ; 0010 _ ........
        db 1CH, 00H, 00H, 00H, 1CH, 00H, 00H, 00H       ; 0018 _ ........
        dd _Z1fi-$-20H                                  ; 0020 _ 00000000 (rel)
        dd 0000002DH, 080E4100H                         ; 0024 _ 45 135151872 
        dd 0D420285H, 0CC56905H                         ; 002C _ 222429829 214264069 
        dd 00000404H, 0000001CH                         ; 0034 _ 1028 28 
        dd 0000003CH                                    ; 003C _ 60 
        dd _Z1fi-$-13H                                  ; 0040 _ 0000002D (rel)
        dd 0000003CH, 080E4100H                         ; 0044 _ 60 135151872 
        dd 0D420285H, 0CC57805H                         ; 004C _ 222429829 214267909 
        dd 00000404H, 0000001CH                         ; 0054 _ 1028 28 
        dd 0000005CH                                    ; 005C _ 92 
        dd _Z1fi-$+9H                                   ; 0060 _ 00000069 (rel)
        dd 00000025H, 080E4100H                         ; 0064 _ 37 135151872 
        dd 0D420285H, 0CC56105H                         ; 006C _ 222429829 214262021 
        dd 00000404H, 0000001CH                         ; 0074 _ 1028 28 
        dd 0000007CH                                    ; 007C _ 124 
        dd _Z1fi-$+0EH                                  ; 0080 _ 0000008E (rel)
        dd 0000002DH, 080E4100H                         ; 0084 _ 45 135151872 
        dd 0D420285H, 0CC56905H                         ; 008C _ 222429829 214264069 
        dd 00000404H, 00000028H                         ; 0094 _ 1028 40 
        dd 0000009CH                                    ; 009C _ 156 
        dd _Z1fi-$+1BH                                  ; 00A0 _ 000000BB (rel)
        dd 00000043H, 010C4400H                         ; 00A4 _ 67 17581056 
        dd 05104700H, 43007502H                         ; 00AC _ 84952832 1124103426 
        dd 7C75030FH, 010C7006H                         ; 00B4 _ 2088043279 17592326 
        dd 43C54100H, 0004040CH                         ; 00BC _ 1137000704 263180 
        dd 0000001CH, 000000C8H                         ; 00C4 _ 28 200 
        dd _Z1fi-$+32H                                  ; 00CC _ 000000FE (rel)
        dd 00000042H, 080E4100H                         ; 00D0 _ 66 135151872 
        dd 0D420285H, 0CC57E05H                         ; 00D8 _ 222429829 214269445 
        dd 00000404H, 0000001CH                         ; 00E0 _ 1028 28 
        dd 000000E8H                                    ; 00E8 _ 232 
        dd _Z1fi-$+54H                                  ; 00EC _ 00000140 (rel)
        dd 0000001AH, 080E4100H                         ; 00F0 _ 26 135151872 
        dd 0D420285H, 0CC55605H                         ; 00F8 _ 222429829 214259205 
        dd 00000404H                                    ; 0100 _ 1028 



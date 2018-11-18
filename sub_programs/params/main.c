/*
 * file: main.c
 * main C program that uses assembly routine in prog.asm
 * to create executable:
 * gcc:   gcc -m32 -o main main.c asm_main.o asm_io.o
 */

#include "cdecl.h"

int PRE_CDECL asm_main( int,int) POST_CDECL;

int main()
{
    int ret_status;
    ret_status = asm_main(100,200);
    return ret_status;
}

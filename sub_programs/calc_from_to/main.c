/*
 * file: main5.c
 * main C program that uses assembly routine in sub5.asm
 * to create executable:
 * DJGPP:   gcc -o sub5 main5.c sub5.o asm_io.o
 * Borland: bcc32 sub5.obj main5.c asm_io.obj
 */

#include <stdio.h>

#include "cdecl.h"

int PRE_CDECL calc( int, int ) POST_CDECL; /* prototype for assembly routine */

int main( void )
{
  printf("Sum is %d\n", calc(10, 20));
  return 0;
}

/*
 * file: main5.c
 * main C program that uses assembly routine in sub5.asm
 * to create executable:
 * DJGPP:   gcc -o sub5 main5.c sub5.o asm_io.o
 * Borland: bcc32 sub5.obj main5.c asm_io.obj
 */

#include <stdio.h>

#include "cdecl.h"

int PRE_CDECL add( int, int ) POST_CDECL; /* prototype for assembly routine */

int main( void )
{
  int a, b;

  printf("add 2 integers: ");
  scanf("%d %d", &a,&b);
  int ret = add(a, b);
  printf("add(%d,%d) is %d\n", a,b,ret);
  return 0;
}

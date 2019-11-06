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
   int sum = 0;
   for(int i=0;i<10;i++)
   {
      sum += calc(i*10,(i+1)*10-1);
      printf("(%d,%d) Sum is %d\n", i*10,(i+1)*10-1,calc(i*10, (i+1)*10-1));
   }
   sum += 100;
   printf("-----------\n%d\n",sum);
      /*
  printf("Sum is %d\n", calc(10, 20));
  printf("Sum is %d\n", calc(20, 30));
  printf("Sum is %d\n", calc(30, 40));
  printf("Sum is %d\n", calc(40, 50));
  printf("Sum is %d\n", calc(50, 60));
  printf("Sum is %d\n", calc(60, 70));
  printf("Sum is %d\n", calc(70, 80));
  printf("Sum is %d\n", calc(80, 90));
  printf("Sum is %d\n", calc(90, 100));
  */
  return 0;
}

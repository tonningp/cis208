/*
 * file: main5.c
 * main C program that uses assembly routine in sub5.asm
 * to create executable:
 */

#include <stdio.h>

#include "cdecl.h"

void PRE_CDECL calc_sum( int, int * ) POST_CDECL; /* prototype for assembly routine */

int main( void )
{
  int n, sum;

  printf("Sum integers up to: ");
  scanf("%d", &n);
  calc_sum(n, &sum);
  printf("Sum is %d\n", sum);
  return 0;
}

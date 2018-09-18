/*
 * file: main5.c
 * main C program that uses assembly routine in sub5.asm
 * to create executable:
 * DJGPP:   gcc -o sub5 main5.c sub5.o asm_io.o
 * Borland: bcc32 sub5.obj main5.c asm_io.obj
 */
#include <iostream>

using namespace std;

#include "cdecl.h"

void PRE_CDECL calc_sum( int, int * ) POST_CDECL; /* prototype for assembly routine */

int main( )
{
  int n, sum;

  cout << "Sum integers up to: ";
  cin >>  n;
  calc_sum(n, &sum);
  cout << "Sum is " << sum << endl;

  return 0;
}

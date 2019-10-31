/*
 * file: main.c
 * main C program that uses assembly routine in prog.asm
 * to create executable:
 * gcc:   gcc -m32 -o main main.c asm_main.o asm_io.o
 */

#include <stdio.h>
#include "cdecl.h"

int PRE_CDECL asm_main( void ) POST_CDECL;

int sum(int n)
{
   int total = 0;
   
   for(int i=0;i<n;i++)
      total += i;

   return total;
}

int main()
{
    int ret_status;
    int total = 10;

    ret_status = asm_main();
    printf("The sum of %d numbers is: %d\n",100,sum(100));

    return ret_status;
}

/*
 * file: main.c
 * main C program that uses assembly routine in prog.asm
 * to create executable:
 * gcc:   gcc -m32 -o main main.c asm_main.o asm_io.o
 */
#include <stdio.h>
#include "cdecl.h"

int PRE_CDECL asm_main( void ) POST_CDECL;
int PRE_CDECL quadratic ( double, double, double, double ∗, double ∗) POST_CDECL;

int main()
{
    int ret_status;
	double a,b,c, root1, root2;
	printf(”Enter a, b, c: ”); scanf(”%lf %lf %lf”, &a, &b, &c);
	if (quadratic( a, b, c, &root1, &root2) )
		printf (”roots: %.10g %.10g\n”, root1, root2 );
	else
		printf (”No real roots\n”); 

    //ret_status = asm_main();

    return 0;
}


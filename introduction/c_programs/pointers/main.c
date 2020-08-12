#include <stdio.h>
 
int main()
{ 
    int x;            /* A normal integer*/
    int *p;           /* A pointer to an integer ("*p" is an integer, so p
                       must be a pointer to an integer) */
 
    printf("Enter a value: ");
    p = &x;           /* Read it, "assign the address of x to p" */
    scanf( "%d", &x );          /* Put a value in x, we could also use p here */
    printf( "The value using a pointer is: %d\n", *p ); /* Note the use of the * to get the value */
    getchar();
}

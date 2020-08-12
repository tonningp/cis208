#include<stdio.h>

int main()
{
    char astring[10];
    int i = 0;
    /* Using scanf isn't really the best way to do this; we'll talk about that 
       in the next tutorial, on strings */
    scanf( "%s", astring );
    for ( i = 0; i < 10; ++i )
    {
        if ( astring[i] == 'a' )
        {
            printf( "You entered an a!\n" );
        }
    }
    return 0;
}

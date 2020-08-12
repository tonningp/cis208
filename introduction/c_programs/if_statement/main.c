#include <stdio.h>    
 
int main()                            /* Most important part of the program!  */
{
    int age;                          /* Need a variable... */
   
    printf( "Please enter your age: " );  /* Asks for age */
    scanf( "%d", &age );                 /* The input is put in age */
    if ( age < 100 ) {                  /* If the age is less than 100 */
        printf ("You are pretty young!\n" ); /* Just to show you it works... */
    }
    else if ( age == 100 ) {            /* I use else just to show an example */
        printf( "You are old\n" );       
    }
    else {
        printf( "You are really old\n" );     /* Executed if no other statement is */
    }

  return 0;
}

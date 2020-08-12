#include <stdio.h>
 
int main()
{
  int x;
 
  x = 10;
  do {
    /* "Hello, world!" is printed at least one time
      even though the condition is false */
      printf( "Hello, world!\n" );
      x--;
  } while ( x != 0 );
  getchar();

  return 0;
}

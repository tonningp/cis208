#include <stdio.h>
 
int main()
{ 
  int x = 0;  /* Don't forget to declare variables */
   
  while ( x < 10 ) { /* While x is less than 10 */
      printf( "%d\n", x );
      x++;             /* Update x so the condition can be met eventually */
  }
  getchar();
}

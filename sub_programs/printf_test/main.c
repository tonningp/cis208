#include <stdio.h>


int main()
{
   printf("%d,%d,%d\n",1,2,3);

   /*
   push DWORD 3
   push DWORD 2
   push DWORD 1
   push address_of_string
   call _printf
   add  esp,16

   */
   return 0;
}

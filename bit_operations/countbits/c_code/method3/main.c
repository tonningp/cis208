#include<stdio.h>


int countbits (unsigned int x )
{
   static unsigned int mask[] = { 
    0x55555555,
    0x33333333,
    0x0F0F0F0F,
    0x00FF00FF,
    0x0000FFFF 
    };
    int i ;
    int shift; /* number of positions to shift to right */
    for (int i=0,shift=1;i<5;i++,shift *= 2)
       x = (x & mask[i]) + ( ( x >> shift) & mask[i] );
     return x;
   }

int main()
{
    printf("%d\n",countbits(0xF7));
    return 0;
}

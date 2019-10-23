#include<stdio.h>


int countbits ( unsigned int data )
{
	 int cnt = 0;

	 while( data != 0 ) {
		 data = data & (data-1);
		 cnt++;
	 }
	 return cnt;
}

int main()
{
    printf("%d\n",countbits(0xF7));
    return 0;
}

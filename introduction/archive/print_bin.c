#include<stdio.h>
#include<stdlib.h>

typedef unsigned char word_size;

word_size MASK = 0x1<<sizeof(word_size)*8-1;

void print_bin(word_size d)
{
    int i;
    for(i=1;i < sizeof(d) * 8+1;i++,d<<=0x1)
       printf("%c%c",(d & MASK) ? '1':'0',(i%4)?' ':'_'); 
    printf("\n");
}

int main()
{
    int i;
    for(i = 0;i<0xFF+1;i++)
       print_bin(i);
    return 0;
}



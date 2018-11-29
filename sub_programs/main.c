#include <stdio.h>
// https://wiki.cdot.senecacollege.ca/wiki/X86_64_Register_and_Instruction_Quick_Start

int add(int a,int b)
{
    return a+b;
}

double MyFunction1(double x, double y, float z)
 {
 	return (x + 1.0) * (y + 2.0) * (z + 3.0);
 }
 
double MyFunction2(double x, double y, float z)
 {
 	return (x + 1.0) * (y + 2.0) * (z + 3.0);
 }
 
double MyFunction3(double x, double y, float z)
 {
 	return (x + 1.0) * (y + 2.0) * (z + 3.0);
 }

int main()
{
    int answer = add(10,20);
    printf("%d %d %d %d %d\n",answer,1,2,3,4);
    return 0;
}

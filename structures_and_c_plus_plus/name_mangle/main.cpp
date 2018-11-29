#include<iostream>
#include<stdio.h>
#include<string>

typedef struct
{
    double x;
    double y;
} Point;

void f(int x)
{
    std::cout << x << std::endl;
}

void f(double x)
{
    std::cout << x << std::endl;
}

extern "C" {

void g(Point *p) {
    printf("%f",p->x);
}

};

void h(std::string s)
{
    std::cout << s << std::endl;
}

int main()
{
    f(1);
    f(11.5);
    
    return 0;
}

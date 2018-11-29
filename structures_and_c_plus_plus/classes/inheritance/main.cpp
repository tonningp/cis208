#include<iostream>
#include<cstddef>
#include<vector>

class A 
{
public:
    virtual void member_function() {std::cout << "A::member_function()" << std::endl;}
    int ad;
    void f() {std::cout << "does nothing" << std::endl;}
};

class B : public A
{
public:
    virtual void member_function() {std::cout << "B::member_function()" << std::endl;}
    int bd;
};

void f(A *p)
{
    p->ad = 5;
    p->member_function();
}


int main()
{
    A a;
    B b;
    std::cout << "Size of a: " << sizeof(a)
              << " Offset of ad: " << offsetof(A,ad) << std::endl;

    std::cout << "Size of b: " << sizeof(b)
              << " Offset of ad: " << offsetof(B,ad) << std::endl
              << " Offset of bd: " << offsetof(B,bd) << std::endl;
    
    f(&a);
    f(&b);

    std::vector<A*> a_s;
    a_s.push_back(&a);
    a_s.push_back(&b);

    a_s[0]->member_function();
    a_s[1]->member_function();

	return 0;
}

#include<iostream>
#include<cstddef>

class A 
{
public:
    virtual void m1() {std::cout << "A::m1()" << std::endl;}
    virtual void m2() {std::cout << "A::m2()" << std::endl;}
    int ad;
};

class B : public A
{
public:
    virtual void m1() {std::cout << "A::m1()" << std::endl;}
    int bd;
};

void print_vtable(A *pa)
{
    unsigned *p = reinterpret_cast<unsigned *>(pa);
    // vt sees vtable as an array of pointers
    void **vt = reinterpret_cast<void**>(p[0]);
    std::cout << std::hex << "vtable address = " << vt << std::endl;
    for(int i=0;i<2;i++)
        std::cout << "dword " << i << ":" << vt[i] << std::endl;

    // call virtual function in EXTREMELY non-portable way!

    void (*m1func_pointer)(A *);   // function pointer variable
    m1func_pointer = reinterpret_cast<void(*)(A*)> (vt[0]);
    m1func_pointer(pa); // call method m1 via function pointer

    void (*m2func_pointer)(A *);    // function pointer variable
    m2func_pointer = reinterpret_cast<void (*)(A*)>(vt[1]);
    m2func_pointer(pa);     // call method m2 via function pointer
}


int main()
{
    A a; B b1; B b2;
    std::cout << "a: " << std::endl; print_vtable(&a); 
    std::cout << "b1: " << std::endl; print_vtable(&b1); 
    std::cout << "b2: " << std::endl; print_vtable(&b2); 

	return 0;
}

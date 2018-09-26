#include<iostream>

using namespace std;

int main()
{
    int a = 56;
    int shift = a;
    for(int i=0;i<32;i++) {
        int x = shift & 0x100000000;
    //    cout << x;
        cout << shift << endl;
        shift = shift << 1; 
    }
    cout << endl;
    cout << shift;
}

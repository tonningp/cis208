#include<iostream>

void printb(char a[][4])
{
    for(int row=0;row < 3;row++)
    {
        for(int col=0;col < 3;col++)
           std::cout << a[row][col];
        std::cout << std::endl;
    }
}

int main()
{
    char board[3][4] = {
        {'-','-','-','\0'}, 
        {'-','X','-','\0'}, 
        {'-','-','-','\0'}
    };
    printb(board);
}

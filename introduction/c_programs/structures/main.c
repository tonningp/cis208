#include <stdio.h>
 
struct xampl {
  int x;
  double pi;
};
 
int main()
{  
    struct xampl structure;
    struct xampl *ptr;
 
    structure.x = 12;
    structure.pi = 3.141;
    ptr = &structure; /* Yes, you need the & when dealing with 
                           structures and using pointers to them*/
    printf( "ptr->x = %d, ptr->pi = %0.2f\n", ptr->x,ptr->pi );  /* The -> acts somewhat like the * when 
                                   does when it is used with pointers
                                    It says, get whatever is at that memory
                                   address Not "get what that memory address
                                   is"*/
    getchar();
    return 0;
}

#include<stdio.h>
#include<math.h>


typedef struct {
    double x;
    double y;
} Point;

double distance(Point *p1,Point *p2)
{
    return sqrt(pow(p1->y - p2->y,2) + pow(p1->x - p2->x,2));
}

int main()
{
    Point p1,p2;
    
    p1.x = 1.0;
    p1.y = 1.0;

    p2.x = 2.0;
    p2.y = 2.0;
   
    printf("distance is: %f\n",distance(&p1,&p2));

    return 0;
}

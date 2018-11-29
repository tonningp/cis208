#include<iostream>

class Point
{
    double m_x,m_y;
public:
    Point();
    Point(double x,double y);
    void set_x(double x);
    void set_y(double x);
};

Point::Point()
{
    m_x = m_y = 0.0;
}

Point::Point(double x,double y)
{
    m_x = x;
    m_y = y;
}

void Point::set_x(double x)
{
    m_x = x;
}

void Point::set_y(double y)
{
    m_y = y;
}

extern "C"
{
    void set_x( Point &p ,double x)
    {
       p.set_x(x); 
    }
}

int main()
{
    Point p;
    p.set_x(10);
    p.set_y(11);
	return 0;
}

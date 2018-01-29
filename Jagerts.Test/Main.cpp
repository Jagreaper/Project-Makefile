#include <iostream>
#include "Jagerts.Geometry/Rectangle.hpp"

using namespace std;
using namespace Jagerts::Geometry;

int main()
{
    Rectangle rect;
    rect.SetHeight(5);
    rect.SetWidth(2);
    cout << "Rectangle\n";
    cout << "  Width: " << rect.GetWidth() << "\n";
    cout << "  Height: " << rect.GetHeight() << "\n";
    cout << "  Area: "<< rect.GetArea() << "\n";
    cout << "  Perimeter: "<< rect.GetPerimeter() << "\n";
}
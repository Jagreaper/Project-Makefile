#include "Rectangle.hpp"

using namespace Jagerts::Geometry;

Rectangle::Rectangle()
{
    this->_width = 0;
    this->_height = 0;
}

Rectangle::Rectangle(const float width, const float height)
{
    this->_width = width;
    this->_height = height;
}

void Rectangle::SetWidth(double width)
{
    this->_width = width;
}

void Rectangle::SetHeight(double height)
{
    this->_height = height;
}

const double& Rectangle::GetWidth() const
{
    return this->_width;
}

const double& Rectangle::GetHeight() const
{
    return this->_height;
}

const double Rectangle::GetPerimeter() const
{
    return (this->_width * 2) + (this->_height * 2);
}

const double Rectangle::GetArea() const
{
    return this->_width * this->_height;
}
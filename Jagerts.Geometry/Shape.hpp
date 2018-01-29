#pragma once

namespace Jagerts::Geometry
{
    class Shape
    {
    public:
        virtual const double GetPerimeter() const = 0;
        virtual const double GetArea() const = 0;
    };
}
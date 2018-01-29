#pragma once

#include "Jagerts.Geometry/Shape.hpp"
#include "Jagerts.Shared/Common.hpp"

namespace Jagerts::Geometry
{
    class JAGERTS_GEOMETRY_API Rectangle : public Shape
    {
    public:
        Rectangle();
        Rectangle(const float width, const float height);
        void SetWidth(double width);
        void SetHeight(double height);

        const double& GetWidth() const;
        const double& GetHeight() const;
        const double GetPerimeter() const;
        const double GetArea() const;
    private:
        double _width;
        double _height;
    };
}
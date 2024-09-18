abstract class Shape {
  late String _color;
  late double _area;

  void setColor(String Color) {
    _color = Color;
  }

  String getColor() {
    return _color;
  }

  void setArea(double Area) {
    _area = Area;
  }

  double getArea() {
    return _area;
  }

  double calculateArea();
}

class Circle extends Shape {
  double _radius;

  Circle(this._radius);
  double calculateArea() {
    return 3.14 * _radius * _radius;
  }
}

class Rectangle extends Shape {
  double _length;
  double _width;

  Rectangle(this._length, this._width);

  double calculateArea() {
    return _length * _width;
  }
}

void main(List<String> args) {
  Circle circle = Circle(2);
  Rectangle rectangle = Rectangle(2, 3);

  circle.setArea(10);
  circle.setColor("red");
  rectangle.setArea(20);
  rectangle.setColor("blue");

  print(circle.calculateArea());
  print(rectangle.calculateArea());
}

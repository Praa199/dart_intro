import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    // To trigger exception, don't implement a check for 'triangle'.
    // When an exception is encountered, DartPad reports Uncaught. To see information that's more helpful, wrap the code in a try-catch statement and print the exception.
    throw 'Can\'t create $type.';
    // To use a single quote inside a string, either escape the embedded quote using slash ('Can\'t create $type.') or specify the string with double quotes ("Can't create $type.").
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

class Triangle implements Shape {
  final num side;
  Triangle(this.side);
  num get area => pow(side, 2) / 2;
}

main() {
  try {
    print(Shape('circle').area);
    print(Shape('square').area);
    print(Shape('triangle').area);
  } catch (err) {
    print(err);
  }
}
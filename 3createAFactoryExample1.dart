// dart:math is one of Dart's core libraries. Other core libraries include dart:core, dart:async, dart:convert, and dart:collection.
import 'dart:math';

// Dart supports abstract classes.
abstract class Shape {
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

// Implement a factory as a top-level function by adding the following function at the highest level (outside of any class):
Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  // If the function is called with any string other than 'circle' or 'square', it throws an exception.
  throw 'Can\'t create $type.';
}

main() {
//  Invoke the factory function by replacing the first two lines in the main() method:
  // final circle = Circle(2);
  // final square = Square(2);
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');
  print(circle.area);
  print(square.area);
}
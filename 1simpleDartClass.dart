class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;
  int get speed => _speed;

  // Define a Bicycle constructor
  // this in a constructor's parameter list is a handy shortcut for assigning values to instance variables.
  Bicycle(this.cadence, this.gear);
//   The code above is equivalent to the following, which uses an initializer list:
// Bicycle(int cadence, int speed, int gear)
//       : this.cadence = cadence,
//         this.speed = speed,
//         this.gear = gear;

// Add the following toString() method anywhere in the Bicycle class:
// @override annotation tells the analyzer that you are intentionally overriding a member.
  @override
  String toString() => 'Bycicle: $_speed mph';
  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}

  //Dart's main method is named main()
void main() { 
// var bike = new Bicycle(2, 0, 1);
// The new keyword became optional in Dart 2
  var bike = Bicycle(2, 1);
  print(bike);
}

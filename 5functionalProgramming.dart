//  the string ${'a' * length} evaluates to "the character 'a' repeated length times."
String scream(int length) => "A${'a' * length}h!";

/*In functional programming you can do things like the following:

Pass functions as arguments.
Assign a function to a variable.
Deconstruct a function that takes multiple arguments into a sequence of functions that each take a single argument (also called currying).
Create a nameless function that can be used as a constant value (also called a lambda expression; lambda expressions were added to Java in the JDK 8 release).

The following example uses imperative (not functional-style) code:
*/
main() {
  final values = [1, 2, 3, 5, 10, 50];
// Remove the imperative for() {...} loop in main() and replace it with a single line of code that uses method chaining:
  // for (var length in values) {
  //   print(scream(length));
  // }
  // values.map(scream).forEach(print); // Replace the values.map() line in main() with the following:
  values.skip(1).take(3).map(scream).forEach(print); 
  // skip(1)skips the first value, 1, in the values list literal.
// take(3)gets the next 3 values—2, 3, and 5—in the values list literal.
}

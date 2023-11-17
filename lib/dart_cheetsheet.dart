
void main() {

  String s = stringify(4, 7);
  print(s);

  int i = calculate(4, 7);
  print('$i');

  // int i2 = null;   // This is invalid
  int? i3 = null;  // This is valid
  int? i4;   // is null

  String? name = 'Jane';
  String? address;

  // Null aware operators
  print('Null Aware Operators');
  int? a; // = null
  a ??= 3;
  print(a);  // prints 3

  a ??= 9;
  print(a);  // prints 3

  int? b;
  int c = 0;  // inc c;  will not compile
  print(1 ?? 3);
  print(b ?? 6);
  print(c);

  String? foo = 'a string';
  String? bar; // = null

  String? baz = foo ?? bar;
  print(baz);

  String? baz2 = bar ?? foo;
  print(baz2);

  // updateSomeVars;

  // void updateSomeVars() {
  //   bar ??= 'a string';
  // }

  // Conditional property access
  // myObject?.someProperty
  // (myObject != null) ? myObject.someProperty : null
  // myObject?.someProperty?.someMethod()

  // Null Variables
  String? str = 'tony mcclay';
  str = upperCaseIt(str);
  print(str);

  String? strNull;
  strNull = upperCaseIt(strNull);
  print(strNull);

}

String? upperCaseIt(String? str) {
  return str?.toUpperCase();
}


String stringify(int x, int y) {
  return '$x $y';
}


int calculate(int x, int y) {
  return x * y;
}



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

  // Collection literals
// Dart has built-in support for lists, maps, and sets.
// You can create them using literals:

  final aListOfStrings = ['one', 'two', 'three', 'one'];
  final aSetOfStrings = {'one', 'two', 'three', 'one'};
  final aMapOfStringsToInts = {
    'one': 1,
    'two': 2,
    'three': 3,
    'one': 4 // redefining 'one'
  };

  print(aListOfStrings);
  print(aSetOfStrings);
  print(aMapOfStringsToInts);

  final aListOfInts = <int>[];
  final aSetofInts = <int>{};
  final aMapofIntToString = <int, String>{};

  aListOfInts.add(5);
  aListOfInts.addAll([6,7,8,9]);

  aSetofInts.add(10);
  aSetofInts.addAll({11,12,13,14});

  aMapofIntToString.addAll({1:'one'} as Map<int, String>);
  aMapofIntToString.addAll({2:'two'});
  aMapofIntToString.addAll({3:'three',4:'four',5:'five'});

  print(aListOfInts);
  print(aSetofInts);
  print(aMapofIntToString);

  // Map Example
  // https://www.tutorialspoint.com/dart_programming/dart_programming_map_function_addall.htm
  Map m = {'name':'Tom','Id':'E1001'};
  print('Map :${m}');

  m.addAll({'dept':'HR','email':'tom@xyz.com'});
  print('Map after adding  entries :${m}');

  // aListOfStrings.any((element) => false)

  // List.any function
  bool hasEmpty = aListOfStrings.any((s) {
    return s.isEmpty;
  });
  bool hasEmpty2 = aListOfStrings.any((s) => s.isEmpty);
  print('List.any function and the => operator');
  print(hasEmpty);
  print(hasEmpty2);

  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  // Returns the product of the above values:
  // int get = product => value1 * value2 * value3;

  void incrementValue1() => value1++;
  String joinWithCommas(List<String> aListOfStrings) => aListOfStrings.join('-');

  print(joinWithCommas(aListOfStrings));

  // BigObject bigObject;
  // bigObject = fillBigObject(bigObject);
  // print(bigObject);


  // List.fold
  List<int> ages = [22, 28, 27, 19, 18];

//The
// The reduce() method assumes the value at index 0 as the initial value:
  int totalAge = ages.reduce((totalLength, element) => totalLength + element);
  print("List.reduce Total age =  $totalAge");

  // List.fold  (Inital Value)
  int totalAge2 = ages.fold(10, (totalLength, element) => totalLength + element);
  print("List.reduce Total age2 =  $totalAge2");

  List<String> names = ["John", "Doe", "Jane", "Doe"];
  // names.reduce((totalLength, element) =>
  //     names.reduce((totalLength, element) => totalLength + element.length);

  print(names);
  int totalNamesLength = names.fold(0, (totalLength, element) => totalLength + element.length);
  print('Total Names Length = $totalNamesLength'); // 14

  int sum1 = sumUp(1,3,9);
  int sum2 = sumUp(4,6,8,10);

  print('SumUp');
  print('First sum : $sum1');
  print('Second sum : $sum2');

  sum1 = sumUp2(1);
  sum2 = sumUp2(4);
  print('SumUp2');
  print('First sum : $sum1');
  print('Second sum : $sum2');

  void printName(String firstName, String lastName, {String? middleName}) {
    // print('$firstName $middleName ?? '' $lastName');
    print('$firstName ${middleName ?? ''} $lastName');
  }
  print('Printing names - Names Arguements');
  printName('Dash', 'Dartisan');
  printName('John', 'Smith', middleName: 'Who');
  // Named arguments can be placed anywhere in the argument list
  printName('John', middleName: 'Who2', 'Smith');


  print('Using this in constructor');
  final color = MyColor(80, 80, 128);
  final color2 = MyColor2(red: 80, green: 80, blue: 128);
  print(color);
  print(color2);

  // Initializer lists
  // NonNegativePoint(this.x, this.y)
  //     : assert(x >= 0),
  //       assert(y >= 0) {
  // print('I just made a NonNegativePoint: ($x, $y)');
  // }


  // Named COnstructors

  final myPoint1 = Point(5,6);
  final myPoint2 = Point.origin();
  print(myPoint1);
  print(myPoint2);


  print('Factory Constructors');
  Shape shape = Shape.fromTypeName('circle');
  print(shape);

  print('Redirecting constructors');

  // Redirecting constructors
  Automobile auto = Automobile('Chevy', 'Camaro', 9000);
  Automobile hybrid = Automobile.hybrid('Ford', 'hybrid');
  Automobile fancy = Automobile.fancyHybrid();

  print(auto);
  print(hybrid);
  print(fancy);

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

class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  return obj
    ..anInt = 1
    ..aString = 'String!'
    ..aList.add(3)
    ..allDone();
}

class MyClass {
  int _aProperty = 0;

  int get aproperty => _aProperty;

  set aProperty(int value) {
    if (value >= 0) {
      _aProperty = value;
    }
  }

  final List<int> _values = [];

  void addValue(int value) {
    _values.add(value);
  }
  // A computed property
  int get count {
    return _values.length;
  }
}

// Optional positional parameters
int sumUp(int a,[int? b, int? c, int? d, int? e]) {
  int sum = a;
  if (b != null) sum + b;
  if (c != null) sum + c;
  if (d != null) sum + d;
  if (e != null) sum + e;
  return sum;
}

int sumUp2(int a,[int b = 2, int c = 3, int d = 4, int e = 5]) {
  int sum = a;
  if (b != null) sum + b;
  if (c != null) sum + c;
  if (d != null) sum + d;
  if (e != null) sum + e;
  return sum;
}


String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  var total = '$a';
  if (b != null) total = '$total,$b';
  if (c != null) total = '$total,$c';
  if (d != null) total = '$total,$d';
  if (e != null) total = '$total,$e';
  return total;
}

// Constructors use of the term THIS
class MyColor {
  int red;
  int green;
  int blue;
  MyColor(this.red, this.green, this.blue);
}

class MyColor2 {
  int red;
  int green;
  int blue;
  MyColor2({required this.red,required  this.green,required  this.blue});
}

class Point {
  double x , y;

  Point(this.x, this.y);

  Point.origin()
    : x = 0,
      y = 0;
}

class Square extends Shape{}

class Circle extends Shape {}

class Shape {
  Shape();

  factory Shape.fromTypeName(String typeName) {
    if (typeName == 'square') return Square();
    if (typeName == 'circle') return Circle();

    throw ArgumentError('Unrecognized $typeName');
  }
}

class Automobile {
  String make;
  String model;
  int mpg;

  //Main Constructor
  Automobile(this.make, this.model, this.mpg);

  // Delegate to main constrcutor
  Automobile.hybrid(String make, String model) : this(make,model,60);

  // Delagtes to a named constructor
  Automobile.fancyHybrid(): this.hybrid('Futurecar', 'Mark 2');

}



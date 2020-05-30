//---Dart has---
//String
//number = num,int,double
//boolean = bool
//collection = list,set,map,tuple(Array(fixed list))
//dynamic = any

//uninitialized variable always has null value

void main() {
  //most variables don’t need explicit types, thanks to type inference:
  var name = 'Voyager I'; //string
  var year = 1977; //integer
  var antennaDiameter = 3.7; //double
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune']; //array
  var image = {
    //map
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

//Another option is to explicitly declare the type that would be inferred:
  String name_explicit = 'Bob';
  bool isAlive = true; //boolean
  num canBeDoubleInt = 12.3; //int justInt = 12;
  dynamic typeAny = 12; //can have any value 
  //typeAny = "12";
  
  print(name.isEmpty);
}

//string interpolation just like kotlin
void stringInterPolation() {
  //string interpolation
  var s = 'string interpolation';
  var combined = 'i have combined $s';
  var combined2 = 'i have combined ${s.toUpperCase()}';
}

//string to and from int and double
void dataTypeConversion() {
  //Here’s how you turn a string into a number, or vice versa:
// String -> int
  int one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}

void finalVsConst() {
  //Final and const
//final must be initialized once inside the constructor
  final name_final = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

//const
  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere
}

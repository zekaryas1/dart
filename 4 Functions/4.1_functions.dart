//We recommend specifying the types of each function’s arguments and return value:

//!! function is an object too
// 1. you can assign it to variable
// 2. you can pass it to function
import 'dart:collection';

import 'dart:svg';

void main(List<String> args) {
  var result = fibonacci(20);
  print(result);

  print(isEven(12));

  //[[you can provide optional params in dart in two separate ways]]
  //one using [named arguments] can help
  printTwoString(one: "Zekaryas", two: "Tadele");
  printTwoString(two: "Tadele"); //named params are also optional

  //two using [Positional parameters]
  say("zekaryas", "hello");
  say("zekaryas", "hello", "samsung");

  //you can use default value on a function
  //but it has to be [named arguments] or [positional parameter]
  printTwoString2(two: "Two");

  anonymousFunctions();

  print(makeItLoud("help"));
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

//if a function has only one line short it like this
bool isEven(int number) => number % 2 == 0;

//function to show named params
//! you need to use {}
void printTwoString({String one, String two}) {
  print(one);
  print(two);
}

//function with default value
void printTwoString2({String one = "one", String two}) {
  print(one);
  print(two);
}

//Positional parameters
//Wrapping a set of function parameters in [] marks them as optional positional parameters:
say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  print(result);
}

void anonymousFunctions() {
  var list = ['apples', 'bananas', 'oranges'];

  list.forEach((item) => {print("item is $item")});

  // list.forEach((item) {
  //   print('${list.indexOf(item)}: $item');
  // });
}

//You can also assign a function to a variable, such as:
var makeItLoud = (msg) => '!! ${msg.toUpperCase()} !!';

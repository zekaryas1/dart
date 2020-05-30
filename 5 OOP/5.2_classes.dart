//Here’s an example of a class with three properties,
//two constructors, and a method. One of the properties can’t be set directly,
//so it’s defined using a getter method (instead of a variable).
import 'dart:math';

class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate);

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear => launchDate?.year; // read-only non-final property

  // Method.
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main(List<String> args) {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}


class Point {
  num x;
  num y;

  //------Constructors-----------
  // Point(num x,num y){
  //   this.x = x;
  //   this.y = y;
  // }

  //the above is same as
  Point(this.x,this.y);

  //i.e constructors are not inherited,

  // Named constructors 2
  // val p = Point.origin()
  Point.origin() {
    x = 0;
    y = 0;
  }

   // Delegates to the main constructor.
  Point.alongXAxis(num x) : this(x, 0);


  //getter and setter
  // Define two calculated properties: right and bottom.
  num get sum => x + y;
  set sum(num value) => sum = value;

  static num distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}
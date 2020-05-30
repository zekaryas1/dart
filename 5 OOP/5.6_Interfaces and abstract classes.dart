//Dart has no interface keyword. Instead, all classes implicitly define an interface.
//Therefore, you can implement any class.
import '5.2_classes.dart';

class MockSpaceship implements Spacecraft {
  @override
  DateTime launchDate;

  @override
  String name;

  @override
  void describe() {
    // TODO: implement describe
  }

  @override
  // TODO: implement launchYear
  int get launchYear => null;
}

//You can create an abstract class to be extended (or implemented) by a concrete class.
//Abstract classes can contain abstract methods (with empty bodies).
abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}

//Any class extending Describable has the describeWithEmphasis() method,
//which calls the extender’s implementation of describe().

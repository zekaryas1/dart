//Mixins are a way of reusing code in multiple class hierarchies.
//The following class can act as a mixin:

import '5.2_classes.dart';

class Piloted {
  int astronauts = 1;
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

//To add a mixin’s capabilities to a class, just extend the class with the mixin.
class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String name, DateTime launchDate) : super(name, launchDate);
  // ···
}

//PilotedCraft now has the astronauts field as well as the describeCrew() method.

// Importing core libraries
import 'dart:math';

import '5.2_classes.dart';

void main(List<String> args) {
  var minOfTwo = min(12, 14);
  print(minOfTwo);

  // no new keyword
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}
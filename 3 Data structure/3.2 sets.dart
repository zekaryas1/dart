//A set in Dart is an unordered collection of unique items.
//Dart support for sets is provided by set literals
void main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  //how to create empty set
  // var names = Set<String>();

  //other ways to create set
  // var names = <String>{};
  Set<String> names = {}; // This works, too.

  //i.e var names = {}; // Creates a map, not a set.

  //add item to set
  names.add("Oxygen");
  names.addAll(halogens);
  print(names.length);

  names.contains("oxygen");

  constSets();
}

void constSets() {
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  // constantSet.add('helium'); // Uncommenting this causes an error.
}

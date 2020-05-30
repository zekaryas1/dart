//In general, a map is an object that associates keys and values.
//Both keys and values can be any type of object. Each key occurs only once,
//but you can use the same value multiple times.
//Dart support for maps is provided by map literals and the Map type.

void main(List<String> args) {
  var preGifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var preNobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  //adding data to map
  // var gifts = Map<String,String>();
  Map<String, String> gifts = {};
  gifts['first'] = 'partridge';

  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var nobleGases = Map();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  gifts.forEach((key, value) => print("$key $value"));

  constMap();
}

void constMap() {
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // constantMap[2] = 'Helium'; // Uncommenting this causes an error.
}

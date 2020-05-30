void main() {
  List<int> list = [1, 2, 3]; //generic way
  // var list = [1,2,3]; //infered way
  list.add(12);

  list.addAll([4, 5, 6, 7]);

  list.sort();
  list.sort((a, b) => a.compareTo(b));

  list.isEmpty;
  list.isNotEmpty;

  assert(list.length == 3);

  constList();

  printAllElementInList();

  joinTwoList();

  importantLambdaFunctions();
}

void importantLambdaFunctions() {
  var list = ["App", "Application", "Web"];

  //0. foreach
  list.forEach((item) => {print(item)});

  //1. map => return iterable
  // object returned with map isn't an object
  //don't forget to use map().toList() or map().toSet():

  var listUC = list.map((item) => item.toUpperCase()).toList();

  //2. where => return iterable
  //get all the items that match a condition
  var list2 = list.where((item) => item.startsWith("A"));

  //3. any => retuen boolean
  //to check whether at least one item in the
  // collection satisfies a condition.
  print(list.any((item) => item.length > 10));

  //4. every to check whether all the items in a
  // collection satisfy a condition.
  print(list.every((item) => item.length > 4));

  listUC.forEach(print);
}

//use of for of
void printAllElementInList() {
  var list = ["App", "Application", "Web"];
  list.add("Software");
  for (var item in list) {
    print(item);
  }

  //or
  list.forEach((item) => {print(item)});

  //even or
  list.forEach(print);
}

//tuple or a constant list
void constList() {
  const List<int> constList = [1, 2, 3]; //List<int> constList = const [1, 2, 3];
  // constList[0] = 12; this will cause an error = unmodifiable list
}

// using spread(...) operator join two lists (like JS)
void joinTwoList() {
  var list1 = [4, 5, 6, 7];
  // var list2 = [1,2,3,...list1];
  var list2 = [1, 2, 3, ...?list1]; //to be save incase list1 is null use ?

  print("---------");

  for (var item in list2) {
    print(item);
  }
}

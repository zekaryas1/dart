//Dart supports the usual control flow statements:
// if and else
// for loops
// while and do-while loops
// break and continue
// switch and case
// assert

void main(List<String> args) {
  //1. if else
  var number = 1917;
  if (number >= 2000) {
    print("21th century");
  } else {
    print("20th century");
  }

  //2. for of
  var fruitList = ['apple', 'banana', 'orange'];

  for (String fruit in fruitList) {
    print(fruit);
  }

  //2.2 for loop
  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  //3. while loop
  var year = 2000;
  while (year < 2016) {
    year += 1;
  }

  switchExample();
}

void switchExample() {
  //missing break cause an error
  //but if you want to make it fall through use continue

  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      // executeClosed();
      break;
    case 'PENDING':
      // executePending();
      break;
    case 'APPROVED':
      // executeApproved();
      continue deniedLabel;
    deniedLabel:  
    case 'DENIED':
      // executeDenied();
      break;
    case 'OPEN':
      // executeOpen();
      break;
    default:
    // executeUnknown();
  }

}

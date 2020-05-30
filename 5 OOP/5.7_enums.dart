enum Color{
  red,
  green,
  blue
}

main(List<String> args) {
  var aColor = Color.blue;
  switch (aColor) {
  case Color.red:
    print('Red as roses!');
    break;
  case Color.green:
    print('Green as grass!');
    break;
  default: // Without this, you see a WARNING.
    print(aColor); // 'Color.blue'
}
}
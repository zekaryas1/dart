// Fetching data over a network.
// Writing to a database.
// Reading data from a file.

//--important--
// When you need the result of a completed Future, you have two options:

// Use async and await.
// Use the Future API.

// await only used in async function
// future is like promise in js , async function returns future always
// value returned from async func is Future object

void main(List<String> args) async{
  await printWithDelay("Zekaryas");
  print("zekaryas 1");
}

Future<void> printWithDelay(String message) async {
  await Future.delayed(Duration(seconds: 1));
  print(message);
}

void getData() {}

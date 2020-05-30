void main(List<String> args) {
  //throw exception
  var astronauts = 0;
  if (astronauts == 0) {
    throw StateError('No astronauts.');
  }

  try {
    var alwaysException = 10 / 0;
  } on IntegerDivisionByZeroException catch (e) {
    print('Could not describe object: $e');
  } catch (e) {
    print("handles all");
  } finally {
    //do clean up
  }
}

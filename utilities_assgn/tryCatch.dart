void main() {
  try {
    // Perform an operation that might throw an exception
    int result = 1 ~/ 0;
    print('Result: $result'); // This line will not be executed
  } catch (e) {
    // Catch the specific exception and output an error message
    if (e is IntegerDivisionByZeroException) {
      print('Error: Cannot divide by zero');
    } else {
      print('Error: $e');
    }
  }
}

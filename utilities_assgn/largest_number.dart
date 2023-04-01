import 'dart:io';

void main() {
  // Prompt the user to enter a list of numbers separated by space
  stdout.write('Enter a list of numbers separated by space: ');

  // Read the input from the user
  String input = stdin.readLineSync()!;

  // Split the input string into a list of strings
  List<String> numberStrings = input.split(' ');

  // Convert the list of strings to a list of integers
  List<int> numbers = numberStrings.map((e) => int.parse(e)).toList();

  // Find the largest number in the list
  int largestNumber = numbers.reduce((a, b) => a > b ? a : b);

  // Output the largest number
  print('The largest number is: $largestNumber');
}
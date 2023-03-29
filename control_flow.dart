// Importing dart:io file
import 'dart:io';

void main()
{
	// Asking for favourite number
	print("Enter your favourite number:");

// Scanning number
	int? n = int.parse(stdin.readLineSync()!);
// Here ? and ! are for null safety

if(n < 10)
{
  print("Your number is less than ten");
}
else if(n > 10)
{
  print("Your number is greater than 10");
}
else{
  print("Your number is equal to 10");
}
}

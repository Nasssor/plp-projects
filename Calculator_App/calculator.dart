import 'dart:io';
import 'dart:math';
double input()
{
  print("Enter number for operation");
  double myinput = double.parse(stdin.readLineSync()!);
  return (myinput);
}
String operation()
{
  print("Choose the operation");
  String myoperation = stdin.readLineSync()!;
  return (myoperation);
}
void main()
{
  double num1 = input();
  String operations = operation();
  double num2 = input();
  double answer = 0.0;

  switch(operations){
    case '+': 
    answer = num1 + num2;
    print("${num1} ${operations} ${num2} = ${answer}");
    break;
    case '-':
    answer = num1 - num2;
    print("${num1} ${operations} ${num2} = ${answer}");
    break;
    case '*':
    answer = num1 * num2;
    print("${num1} ${operations} ${num2} = ${answer}");
    break;
    case '/':
    answer = num1 / num2;
    print("${num1} ${operations} ${num2} = ${answer}");
    break;
    default:
    print("Invalid input");
  }
}
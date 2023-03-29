int addTwo(int num1, int num2)
{
  return num1 + num2;
}
int subtractTwo(int num1, int num2)
{
  return num1 + num2;
}
int multiplyTwo(int num1, int num2)
{
  return num1 * num2;
}
double divideTwo(int num1, int num2)
{
  return num1 / num2;
}
int stringLength(String name)
{
  return name.length;
}
String getFirstElement(List collection)
{
  return collection[0];
}
void main() {
  print(addTwo(3,4));
  print(multiplyTwo(3, 5));
  print(subtractTwo(5,7));
  print(divideTwo(6, 3));
  print(stringLength("Ally"));
  print(getFirstElement(["james","ally"]));
}
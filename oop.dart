class car{
  int ?name;
  String ?color;
  void display(){
    print("This is my car");
  }
}

class toyota implements car{
  String ?color;
  int ?name;
  void display(){
    print("Toyota car");
  }
}

void main()
{
var LandCruiser = toyota();
LandCruiser.display();
}
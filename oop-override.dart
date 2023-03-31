class car{
  int ?name;
  String ?color;
  void display(){
    print("This is my car");
  }
}

class toyota extends car{
  String ?color;
  int ?name;
  void display(){
    print("Toyota car");
  }
}

void main()
{
var LandCruiser = toyota();
var carz = car();
LandCruiser.display();
carz.display();
}
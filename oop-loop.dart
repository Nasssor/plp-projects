class fruit{
  List name =[];
  List price = [];
  void getFruit(){
    for (int i = 0; i < 3; i++){
      print('name: ${name[i]}, price: ${price[i]}');
          }
  }
}
void main() {
  var fruits = fruit();
  fruits.name = ['apple','mango','orange','banana'];
  fruits.price = [22,24,23,45,53];
  fruits.getFruit();
}
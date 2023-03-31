class Person {

String _name;

Person(this._name);

String get name {

return _name.toUpperCase();

}
set names(newname){
  _name = newname; 
}

}

void

main() {

final person = Person('Bob');
person.names = 'Alice';


print(person._name);

}

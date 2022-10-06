void main() {
  String name = 'Vitor';
  int age = 20;

  printName(name);
  printNameAndAge(name, age);

  print(multBy2(age));
  myFunction(name);
}

// functions are build outside main
void printName(String name) {
  print('Name = ' + name);
}

void printNameAndAge(String name, int age) {
  print('Name = ' + name);
  print('Age = ' + age.toString());
}

// function with return
int multBy2(int value) {
  return value * 2;
}

// optional parameters => use {}
void myFunction(String name, {String phone = ''}) {
  print('Name = $name, Phone: $phone');
}

/* make a kind of inline function

// optional parameters => use {}
void myFunction(String name, {String phone = ''}) => print('Name = $name, 
Phone: $phone');

*/

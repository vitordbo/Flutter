void main() {
  User user1 = User('Vitor', 20); // new isn't necessary
  user1.introduce();

  Dad dad1 = Dad('Fabio', 50, 'Artist');
  dad1.introduce();
}

class User {
  String name = '';
  int age = 20;

  User(this.name, this.age);

  void introduce() {
    print('My name is $name and my age is $age');
  }
}

//Inheritance in OOP => When a class derives from another class

class Dad extends User {
  String job = ''; // only for dad

  // using constructor from User
  Dad(name, age, this.job) : super(name, age);

  @override // modifying the origial method
  void introduce() {
    print('My name is $name, my age is $age and my job is $job');
  }
}

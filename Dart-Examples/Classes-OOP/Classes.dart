void main() {
/*
  User user = User();

  //without the constructor
  user.name = 'Vitor';
  user.age = 30;
  user.phone = '8499995555';
*/
  User user = User('Vitor', 30, '8499995555');
  user.introduce();

  User user2 = User('Livia', 19, '8455559999');
  user2.introduce();
}

class User {
  //attributes
  String name = '';
  int age = 0;
  String phone = '';

/*
  // constructor
  User(String name, int age, String phone) {
    this.name = name;
    this.age = age;
    this.phone = phone;
  }
*/
  // constructor
  User(this.name, this.age, this.phone);

  //methods
  void introduce() {
    print('My name is ${this.name}, my age is $age and my phone is $phone');
  }
}

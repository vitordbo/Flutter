void main() {
  // show that is using phone here
  User user = User('Vitor', 30, phone: '8499995555');
  user.introduce();

  User user2 = User('Livia', 19);
  user2.introduce();
}

class User {
  //attributes
  String name = '';
  int age = 0;
  String phone = '';

  // constructor => phone is in {} => optional to use
  User(this.name, this.age, {this.phone = ''});

  //methods
  void introduce() {
    print('My name is ${this.name}, my age is $age');

    if (phone.length == 0) {
      print('i dont know my phone');
    } else {
      print('and my phone is $phone');
    }
    print('');
  }
}

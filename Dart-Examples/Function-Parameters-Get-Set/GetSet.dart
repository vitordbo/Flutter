void main() {
  // show that is using phone here
  People people = People('Vitor', 30, phone: '8499995555');
  people.introduce();

  People people2 = People('Livia', 19);
  people2.introduce();
}

class People {
  //attributes
  // avoid to much get and set => dart makes automatically => only if you have to test => like age < 120
  String name = '';
  int _age = 0; // _ before name of the variable => makes variable private
  String phone = '';

  // constructor => phone is in {} => optional to use
  People(this.name, int reciveAge, {this.phone = ''}) {
    this.age = reciveAge;
  }

  // useful to validations
  // set method to age
  void set age(int age) {
    if (age < 120) {
      this._age = age;
    }
  }

  // you must say the type to return => no () in get
  int get age {
    return this._age;
  }

  //methods
  void introduce() {
    print('My name is ${this.name}, my age is $age');
  }
}

void main() {
  List<User> users = [
    User('João', 20),
    User('Pedro', 25)
  ]; // creating a list of User

  print(users[0].name); // show using index
  print(users[0].age);

  print(users[users.length - 1].name); // show last using length
  print(users[users.length - 1].age);

  users.add(User('Maria', 27)); // using add

  print("-------------------------------");
  users.forEach((User pessoa) => print(pessoa.name)); // to show all

  users.removeAt(0);
  print("-------------------------------");
  users.forEach((User pessoa) => print(pessoa.name)); // to show all
}

class User {
  String name;
  int age;
  User(this.name, this.age);

  void apresenta() {
    print("My name is $name e tenho $age anos");
  }
}

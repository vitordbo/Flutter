void main() {
  List<User> users = [
    User('João', 20),
    User('Pedro', 25)
  ]; // creating a list of User

  print(users[0].nome); // show using index
  print(users[0].idade);

  print(users[users.length - 1].nome); // show last using length
  print(users[users.length - 1].idade);

  users.add(User('Maria', 27)); // using add

  print("-------------------------------");
  users.forEach((User pessoa) => print(pessoa.nome)); // to show all

  users.removeAt(0);
  print("-------------------------------");
  users.forEach((User pessoa) => print(pessoa.nome)); // to show all
}

class User {
  String nome;
  int idade;
  User(this.nome, this.idade);

  void apresenta() {
    print("Meu nome é Snome e tenho $idade anos");
  }
}

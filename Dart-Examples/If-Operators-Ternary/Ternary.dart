void main() {
  bool condition = false;
  String name = 'Gabriel';

  // ternary if => after '?' => true
  print(condition ? 'Condition is true' : 'Condition is false');

  // if two things are equal or not => could use < or >
  print(2 == 3 ? 'Equal' : 'Not equal');

  // if two things are equal or not
  String client = name == 'Vitor' ? 'Name OK' : 'Wrong name';
  print(client);
}

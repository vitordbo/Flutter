void main() {
  /*
  List<String> = [];

  // List => key and value
  // List =>  0  --   Vitor 
  // List =>  1  --   Maria
  // use map when the key isn't a int 
  */

  // int value has the String "name"
  Map<int, String> numbers = Map(); // number 1 = one => //number 2 = two

  // just identification
  numbers[1] = 'One';
  numbers[2] = 'Two';
  numbers[3] = 'Three';

  print(numbers);
  print('------------');

  // first String value has the String "full name" from the state
  Map<String, String> states = Map(); // number 1 = one => //number 2 = two

  // just identification
  states['SP'] = 'Sao Paulo';
  states['RN'] = 'Rio grande do Norte';
  states['CE'] = 'Ceara';

  print(states['SP']);
  print(states.keys);
}

void main(){

  // variables
  int id = 1;  // int value
  print(id);

  double price = 3.58; // real value 
  print(price);

  String name = 'Iphone'; // text => usually wiht ' '
  print(name);

  bool sold = true;  // true or false 
  print(sold);

  // when you don't know the type yet
  var variable = 1; // when you define a type to a var you can't change the type again  
  print(variable);

  // when the type will probably change 
  dynamic variable2 = 2; // when you define a dynamic you can change the type   
  print(variable2);
  variable2 = 'Vitor';
  print(variable2);

  // concatenate with variables
  print('name = $variable2'); // use $ to call a variable inside the ''

  print('name = ' + variable2); // could use with a + => but noy inside the ''   

  // concatenate with numbers
  print('value = ' + id.toString()); // to print a number    
}
void main() {
  
  int number1 = 5;
  int number2 = 2;

  print('variable number 1 = $number1');
  print('variable number 2 = $number2');

  // adding two numbers 
  int add = number1 + number2;
  print('add = $add');

  // subtraction
  int sub = number1 - number2;
  print('sub = $sub');

  // mult
  int mult = number1 * number2;
  print('mult = $mult');

  // div
  double div = number1 / number2; // has to be double 
  print('div = $div');

  // integer part of a division 
  int divInt = number1 ~/ number2; // has to be double 
  print('div using only int = $divInt');

  // rest of a division 
  int rest = number1 % number2; // has to be double 
  print('rest = $rest');

  // odd or even
  if (number1 % 2 == 0){ //if the rest is equal to 0 => even
    print(number1.toString() + ' is even');
  }else {
   print(number1.toString() + ' is odd');
  }
}
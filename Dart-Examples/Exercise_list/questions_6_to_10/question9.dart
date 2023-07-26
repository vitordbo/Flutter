/*
Construa um programa para exibir a tabuada de qualquer número “n” (1 a 9), sendo “n” 
um número fornecido pelo usuário. Utilize estrutura de repetição
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Type your number: ");

  int? number = int.tryParse(stdin.readLineSync()!); // ? => could be null

  if (number! <= 9 && number > 0) {
    for (var i = 1; i <= 10; i++) {
      int mult = number * i;
      print('$number X $i = $mult');
    }
  }
}

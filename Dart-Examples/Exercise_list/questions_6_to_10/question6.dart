/*
Construa um programa que leia do usuário um número inicial e um número final. Em seguida, exiba na 
tela uma sequencia com os números desse intervalo informado pelo usuário. Exemplo: caso o usuário 
entre com os números 4 e 10, o resultado do

programa seria: 4 5 6 7 8 9 10
a) Construa este programa utilizando a estrutura while.
b) Construa este programa utilizando a estrutura do-while.
c) Construa este programa utilizando a estrutura for
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Type your first number: ");

  int? firstNumber = int.tryParse(stdin.readLineSync()!); // ? => could be null

  stdout.write("Type your second number: ");

  int? secondNumber = int.tryParse(stdin.readLineSync()!); // ? => could be null

  int? tempFirst = firstNumber;
  int? tempSecond = secondNumber;

  print('\n\nUsando While: ');
  while (tempFirst! <= tempSecond!) {
    stdout.write('$tempFirst ');
    tempFirst++;
  }

  // voltando ao normal
  tempFirst = firstNumber;
  tempSecond = secondNumber;

  print('\n\nUsando Do-While: ');
  do {
    stdout.write('$tempFirst ');
    tempFirst = (tempFirst! + 1);
  } while (tempFirst <= tempSecond!);

  // voltando ao normal
  tempFirst = firstNumber;
  tempSecond = secondNumber;

  print('\n\nUsando For: ');
  for (var i = firstNumber; i! <= secondNumber!; i++) {
    stdout.write('$i ');
  }
}

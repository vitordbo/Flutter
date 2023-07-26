/*
Verificar se a senha, informada durante a execução, é correta. Quando a senha estiver correta, 
exiba “senha correta” e o programa é encerrado. Quando a senha estiver errada, exiba “senha incorreta”, 
e permita a entrada novamente da senha, repetindo esse processo até que a senha entrada seja correta.
a) Resolva esse problema utilizando a estrutura while.
b) Resolva esse problema utilizando a estrutura do-while.
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Type your password: ");

  String password = 'Vitor';
  String? typedPassword = stdin.readLineSync()!; // ? => could be null

  // usnado while
  while (password != typedPassword) {
    print('Incorrect Password from while');
    print('\nTry again: ');

    typedPassword = stdin.readLineSync()!;
  }

  if (password == typedPassword) {
    print('\nCorrect Password using while');
  }

  // usando do-while
  do {
    print('\nIncorrect Password from do-while');
    print('\nTry again: ');

    typedPassword = stdin.readLineSync()!;
  } while (password != typedPassword);

  if (password == typedPassword) {
    print('Correct Password using do while');
  }
}

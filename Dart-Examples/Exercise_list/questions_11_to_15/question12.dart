/*
Construa um programa que calcule o somatório dos números inteiros de um intervalo, 
definido por um número inicial e umnúmero final. 
Exemplo: caso as entradas fossem 4 e 9, o resultado seria: 39
4 + 5 + 6 + 7 + 8 + 9 = 39 
*/
import 'dart:io';

void main() {
  print("Digite o primeiro número inteiro:");
  int number1 = int.parse(stdin.readLineSync()!);

  print("Digite o segundo número inteiro:");
  int number2 = int.parse(stdin.readLineSync()!);

  int somator = somatorio(number1, number2);
  print('O somatório é: $somator');
}

int somatorio(int numb1, numb2) {
  int somatorioNumber = 0;

  for (var i = numb1; i <= numb2; i++) {
    somatorioNumber += i;
  }

  return somatorioNumber;
}

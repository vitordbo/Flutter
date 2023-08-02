/*
Construa um programa que calcule o fatorial de um número. Use uma estrutura de repetição. 
Fatorial: n! = n (n − 1)!
Exemplo: 5! = 5 x 4 x 3 x 2 x 1 = 120 ou 5! = 1 x 2 x 3 x 4 x 5 = 120
*/

import 'dart:io';

void main() {
  print("Digite um número inteiro para calcular seu faorial:");
  int number = int.parse(stdin.readLineSync()!);

  if (number < 0) {
    print("Não é possível calcular o fatorial de um número negativo.");
  } else {
    int fatorial = calcularFatorial(number);
    print("O fatorial de $number é $fatorial.");
  }
}

int calcularFatorial(int number) {
  int resultado = 1;

  for (int i = 2; i <= number; i++) {
    resultado *= i;
  }
  return resultado;
}

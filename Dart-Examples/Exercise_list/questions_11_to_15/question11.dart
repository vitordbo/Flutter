// Construa um programa que identifique se um número é primo
import 'dart:io';

void main() {
  print("Digite um número inteiro para verificar se é primo:");
  int number = int.parse(stdin.readLineSync()!);

  if (isPrime(number)) {
    print("$number é um número primo.");
  } else {
    print("$number não é um número primo.");
  }
}

bool isPrime(int number) {
  if (number <= 1) return false;
  if (number <= 3) return true;

  if (number % 2 == 0 || number % 3 == 0) return false;

  int i = 5;
  while (i * i <= number) {
    if (number % i == 0 || number % (i + 2) == 0) return false;
    i += 6;
  }

  return true;
}

// Calcule o somatório dos números inteiros do intervalo entre dois números.
//Resolva o problema com função recursiva
import 'dart:io';

void main() {
  print("Digite o primeiro número:");
  int primeiroNumero = int.parse(stdin.readLineSync()!);

  print("Digite o segundo número:");
  int segundoNumero = int.parse(stdin.readLineSync()!);

  int somatorio = calcularSomatorio(primeiroNumero, segundoNumero);
  print(
      "O somatório dos números no intervalo [$primeiroNumero, $segundoNumero] é $somatorio");
}

int calcularSomatorio(int inicio, int fim) {
  if (inicio > fim) {
    return 0;
  } else {
    return inicio + calcularSomatorio(inicio + 1, fim);
  }
}

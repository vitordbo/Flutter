//Construa e use uma função para calcular o fatorial de um número utilizando recursividade
import 'dart:io';

void main() {
  print("Digite um número para calcular o fatorial:");
  int numero = int.parse(stdin.readLineSync()!);
  int resultado = calcularFatorial(numero);
  print('O fatorial de $numero é $resultado');
}

int calcularFatorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calcularFatorial(n - 1);
  }
}

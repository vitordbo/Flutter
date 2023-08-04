/*
Construa um programa que simule uma calculadora. Disponibilize um menu de opções e simule a opção desejada, 
exibindo novamente o menu, até que o usuário escolha sair. Menu de opções:

1 - potenciação     Dica: utilize a função da biblioteca matemática.
2 - raiz quadrada   Dica: utilize a função da biblioteca matemática.
3 - fatorial        Dica: crie e utilize uma função com a solução da questão anterior.
0 - sair
*/
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print('Bem-vindo(a) a calculadora');
  print(
      'Menu = \n 1 - Potenciação \n 2 - Raiz quadrada \n 3 - fatorial \n 0 - sair');

  print("Digite a sua opção:");
  int option = int.parse(stdin.readLineSync()!);

  while (option != 0) {
    switch (option) {
      case 1:
        print('Potenciação: ');

        print("Digite o numero para ser feita a potenciação:");
        int number = int.parse(stdin.readLineSync()!);

        print("Digite o expoente:");
        int exponent = int.parse(stdin.readLineSync()!);

        num result = pow(number, exponent);

        print('Resultado = $result \n');
        break;

      case 2:
        print('Raiz quadrada: ');

        print("Digite o numero para ser feita a raiz quadrada:");
        int number = int.parse(stdin.readLineSync()!);

        num result = sqrt(number);

        print('Resultado = $result \n');
        break;

      case 3:
        print("Digite um número inteiro para calcular seu faorial:");
        int number = int.parse(stdin.readLineSync()!);

        if (number < 0) {
          print("Não é possível calcular o fatorial de um número negativo.");
        } else {
          int fatorial = calcularFatorial(number);
          print("O fatorial de $number é $fatorial \n");
        }
        break;

      default:
        print('Opção inválida, tente novamente!');
        break;
    }

    print(
        'Menu = \n 1 - Potenciação \n 2 - Raiz quadrada \n 3 - fatorial \n 0 - sair');

    print("Digite a sua opção:");
    option = int.parse(stdin.readLineSync()!);
  }

  print('Obrigado por usar a calculadora!');
}

int calcularFatorial(int number) {
  int resultado = 1;

  for (int i = 2; i <= number; i++) {
    resultado *= i;
  }
  return resultado;
}

//Construa um programa que calcule uma equação do 2º grau.
//Crie uma função com retorno para calcular o delta.
//Crie uma função sem retorno para calcular as raízes

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  stdout.write("Digite seu a:");

  double? aEquation =
      double.tryParse(stdin.readLineSync()!); // ? => could be null

  stdout.write("Digite seu b:");

  double? bEquation =
      double.tryParse(stdin.readLineSync()!); // ? => could be null

  stdout.write("Digite seu c:");

  double? cEquation =
      double.tryParse(stdin.readLineSync()!); // ? => could be null

  print('');
  print(
      'Essas sao suas variaveis: a: $aEquation, b: $bEquation, c: $cEquation');

  double deltaValue = delta(aEquation!, bEquation!, cEquation!);
  print("Seu delta é $deltaValue");

  double raizPositiva = raizPosit(deltaValue, bEquation, aEquation);

  double raizNegativa = raizNegati(deltaValue, bEquation, aEquation);

  print('');
  print(
      "As raizes são x1 = ${raizPositiva.toStringAsFixed(2)} e x2 = ${raizNegativa.toStringAsFixed(2)}");
}

double delta(double a, double b, double c) {
  double delta = pow(b, 2) - (4 * a * c);
  return delta;
}

double raizPosit(double delta, double b, double a) {
  double raizPositiva = ((b * (-1)) + sqrt(delta)) / (2 * a);
  return raizPositiva;
}

double raizNegati(double delta, double b, double a) {
  double raizNegativa = ((b * (-1)) - sqrt(delta)) / (2 * a);
  return raizNegativa;
}

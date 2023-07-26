/*
Construa um programa que calcule o rendimento mensal de um investimento em poupança. 
Variáveis: investimento inicial, investimento mensal, quantidade de meses, saldo acumulado, 
taxa de juros mensal, rendimento mensal
*/

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  stdout.write("Digite seu investimento inicial ");

  double? investimentoInicial =
      double.tryParse(stdin.readLineSync()!); // ? => could be null

  stdout.write("Digite seu investimento mensal ");

  double? investimentoMensal =
      double.tryParse(stdin.readLineSync()!); // ? => could be null

  stdout.write("Digite a quantidade de meses ");

  int? quantidadeDeMeses =
      int.tryParse(stdin.readLineSync()!); // ? => could be null

  stdout.write("Digite a taxa de juros mensal ");

  double? taxaJurosMensal =
      double.tryParse(stdin.readLineSync()!); // ? => could be null

  double? rendimentoMensalVar =
      rendimentoMensal(investimentoMensal!, taxaJurosMensal!);

  double? saldoAcumuladoVar = saldoAcumulado(investimentoInicial!,
      investimentoMensal, quantidadeDeMeses!, taxaJurosMensal);

  print('Rendimento Mensal: $rendimentoMensalVar');
  print('Saldo acumulado: $saldoAcumuladoVar');
}

double rendimentoMensal(double investimentoMensal, double jurosMensal) {
  double montante = investimentoMensal * pow((1 + jurosMensal), 1);
  return montante;
}

double saldoAcumulado(double investimentoInicial, double investimentoMensal,
    int meses, double jurosMensal) {
  double saldo = 0;
  saldo += rendimentoMensal(investimentoInicial, jurosMensal);
  for (int i = 0; i < meses; i++) {
    saldo += rendimentoMensal(investimentoMensal, jurosMensal);
  }
  return saldo;
}

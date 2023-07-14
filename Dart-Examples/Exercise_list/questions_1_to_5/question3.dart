//Construa um programa que calcule para o aluno sua média parcial e informe sua situação
//parcial (Aprovado, Recuperação ouReprovado). Caso ele esteja em Recuperação, calcule
//quanto ele precisa tirar na 4ª prova para ser aprovado (média final maior ou igual que 5,0).
//Observação: utilize os pesos e regras da UFERSA

import 'dart:io';

void main(List<String> args) {
  stdout.write("Type your grade for the first exam: ");

  double? firstGrade =
      double.tryParse(stdin.readLineSync()!); // ? => could be null

  if (firstGrade == null) {
    print("Invalid input, null or 0. Please enter a valid weight.");
    return; // end the main function
  }

  stdout.write("Type your grade for the second exam: ");

  double? secondGrade =
      double.tryParse(stdin.readLineSync()!); // ? => could be null

  if (secondGrade == null) {
    print("Invalid input, null or 0. Please enter a valid weight.");
    return; // end the main function
  }

  stdout.write("Type your grade for the third exam: ");

  double? thirdGrade =
      double.tryParse(stdin.readLineSync()!); // ? => could be null

  if (thirdGrade == null) {
    print("Invalid input, null or 0. Please enter a valid weight.");
    return; // end the main function
  }

  double gradeAverage = (firstGrade + secondGrade + thirdGrade) / 3;
}

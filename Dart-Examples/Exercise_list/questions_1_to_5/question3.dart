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
  print("");
  print("Sua média foi ${gradeAverage.toStringAsFixed(2)}");

  if (gradeAverage >= 7) {
    print("\nParabéns! Você foi aprovado!");
  } else if (gradeAverage >= 3 && gradeAverage <= 7) {
    print("\nOpa, voce esta de recuperação");
    recuperacao(gradeAverage);
  } else if (gradeAverage <= 3) {
    print("\nVoce esta reprovado");
  }
}

void recuperacao(double average) {
  // media final maior que 5
  // mp * 6 + mf * 4 / 10 = 50

  print("Digite quanto quer tirar na quarta prova: ");

  double? finalGrade =
      double.tryParse(stdin.readLineSync()!); // ? => could be null

  double finalGradeCount = (average * 6) + (finalGrade! * 4);
  finalGradeCount = finalGradeCount / 10;

  print("Sua média final foi ${finalGradeCount.toStringAsFixed(2)}");

  if (finalGradeCount >= 5) {
    print("\nParabéns, voce passou!");
  } else {
    print("\nTriste fim, voce reprovou!");
  }
}

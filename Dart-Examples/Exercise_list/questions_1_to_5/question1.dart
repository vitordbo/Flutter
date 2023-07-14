// Calcular o IMC (índice de massa corporal) de uma pessoa. Produza um alerta em caso de divisão por zero.
// Calculate BMI (Body mass index)

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  stdout.write("Type your weight in Kg: ");

  double? weight = double.tryParse(stdin.readLineSync()!); // ? => could be null

  if (weight == null || weight == 0) {
    print("Invalid input, null or 0. Please enter a valid weight.");
    return; // end the main function
  }

  stdout.write("Type your height in cm: ");

  double? height = double.tryParse(stdin.readLineSync()!);

  if (height == null || height == 0) {
    print("Invalid input, null or 0. Please enter a valid height.");
    return; // end the main function
  }

  print('');
  print("Your weight is: $weight kg");
  print("Your height is: $height cm");
  print('');

  double bmi = weight / pow(height, 2);
  double bmiPercentage = bmi * 10000;

  stdout.write("Your BMI is: ${bmiPercentage.toStringAsFixed(2)}");
}

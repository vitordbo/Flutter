// Construa um programa que calcule a área de um círculo, tendo como entrada o valor do raio,
// que deve ser positivo. Use o valor da constante “pi” vindo da biblioteca matemática.

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  stdout.write("Type the radius of the circle: ");

  double? radius = double.tryParse(stdin.readLineSync()!); // ? => could be null

  if (radius == null || radius == 0 || radius < 0) {
    print("Invalid input, null or 0. Please enter a valid radius.");
    return; // end the main function
  }

  double circle_area = pi * pow(radius, 2);

  print('Radius of the circle: ${circle_area.toStringAsFixed(2)}');
}

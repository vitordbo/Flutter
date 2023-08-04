/*
Construa um programa para ler do teclado as dimensões de uma matriz de inteiros e seus elementos. 
Em seguida, exiba seus elementos
*/
import 'dart:io';

void main() {
  // Leitura das dimensões da matriz
  print("Digite o número de linhas da matriz:");
  int rows = int.parse(stdin.readLineSync()!);

  print("Digite o número de colunas da matriz:");
  int cols = int.parse(stdin.readLineSync()!);

  // Criando a matriz
  List<List<int>> matrix =
      List.generate(rows, (_) => List<int>.filled(cols, 0));

  // Leitura dos elementos da matriz
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      print("Digite o elemento da posição [$i][$j]:");
      matrix[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Exibição dos elementos da matriz
  print("\nA matriz digitada é:");
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      stdout.write("${matrix[i][j]} ");
    }
    print(""); // Quebra de linha para a próxima linha da matriz
  }
}

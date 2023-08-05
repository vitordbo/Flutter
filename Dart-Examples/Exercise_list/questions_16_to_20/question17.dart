//Construa um programa que identifique o maior e o menor número de um vetor de inteiros.

void main() {
  //vetor original
  List<int> originalVector = [1, 2, 3, 4, 4, 3, 5, 9, 3, 0, -5];
  int maiorNum = maiorNumero(originalVector);
  int menorNum = menorNumero(originalVector);

  print("Vetor original: $originalVector");
  print("Menor do vetor: $menorNum");
  print("Maior do vetor: $maiorNum");
}

int maiorNumero(List<int> original) {
  int temp = 0;

  for (var i = 0; i < original.length; i++) {
    if (original[i] > temp) {
      temp = original[i];
    }
  }
  return temp;
}

int menorNumero(List<int> original) {
  int temp = 1;

  for (var i = 0; i < original.length; i++) {
    if (original[i] < temp) {
      temp = original[i];
    }
  }
  return temp;
}

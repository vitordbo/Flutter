//Construa e use uma função que produz um novo vetor de inteiros
//com a ordem inversa do vetor original passado por parâmetro.

void main() {
  //vetor original
  List<int> originalVector = [1, 2, 3, 4, 5];
  List<int> reversedVector = reverseVector(originalVector);

  print("Vetor original: $originalVector");
  print("Vetor invertido: $reversedVector");
}

List<int> reverseVector(List<int> original) {
  List<int> reversed = List.from(original.reversed);
  return reversed;
}

// Utilizando o recurso de programação genérica, implemente a estrutura de dados “pilha”

class Stack<T> {
  List<T> _items = [];

  bool get isEmpty => _items.isEmpty;

  int get length => _items.length;

  void push(T item) {
    _items.add(item);
  }

  T pop() {
    if (isEmpty) {
      throw StateError("A pilha está vazia");
    }
    return _items.removeLast();
  }

  T peek() {
    if (isEmpty) {
      throw StateError("A pilha está vazia");
    }
    return _items.last;
  }

  @override
  String toString() {
    return "Stack($_items)";
  }
}

void main() {
  var stackInt = Stack<int>();
  stackInt.push(10);
  stackInt.push(20);
  stackInt.push(30);

  print("Tamanho da pilha: ${stackInt.length}");
  print("Elemento no topo: ${stackInt.peek()}");

  while (!stackInt.isEmpty) {
    print("Removendo ${stackInt.pop()}");
  }

  var stackString = Stack<String>();
  stackString.push("Hello");
  stackString.push("World");

  print("Tamanho da pilha: ${stackString.length}");
  print("Elemento no topo: ${stackString.peek()}");

  while (!stackString.isEmpty) {
    print("Removendo ${stackString.pop()}");
  }
}

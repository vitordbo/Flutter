// Utilizando o recurso de programação genérica, construa um programa que tenha funcionalidades de um
//CRUD (create, read,update e delete). Teste seu programa com as classes
//Integer e Pessoa (que você mesmo deve criar)

class CRUD<T> {
  List<T> _items = [];

  void create(T item) {
    _items.add(item);
    print("Item criado: $item");
  }

  void read() {
    print("Itens na lista:");
    _items.forEach((item) => print(item));
  }

  void update(int index, T newItem) {
    if (index >= 0 && index < _items.length) {
      _items[index] = newItem;
      print("Item atualizado: $newItem");
    } else {
      print("Índice inválido");
    }
  }

  void delete(int index) {
    if (index >= 0 && index < _items.length) {
      var deletedItem = _items.removeAt(index);
      print("Item removido: $deletedItem");
    } else {
      print("Índice inválido");
    }
  }
}

class Pessoa {
  final String nome;
  final int idade;

  Pessoa(this.nome, this.idade);

  @override
  String toString() {
    return "Pessoa(nome: $nome, idade: $idade)";
  }
}

void main() {
  var integerCRUD = CRUD<int>();
  integerCRUD.create(10);
  integerCRUD.create(20);
  integerCRUD.read();
  integerCRUD.update(1, 30);
  integerCRUD.delete(0);
  integerCRUD.read();

  var pessoaCRUD = CRUD<Pessoa>();
  pessoaCRUD.create(Pessoa("Alice", 25));
  pessoaCRUD.create(Pessoa("Bob", 30));
  pessoaCRUD.read();
  pessoaCRUD.update(1, Pessoa("Charlie", 28));
  pessoaCRUD.delete(0);
  pessoaCRUD.read();
}

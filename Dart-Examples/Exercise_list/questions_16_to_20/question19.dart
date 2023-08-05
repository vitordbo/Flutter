//Construa um programa que registre objetos da classe Pessoa, com os seguintes atributos:
// nome, peso, altura, imc. Permita que o usuário defina a quantidade de pessoas em tempo
//de execução. Ao cadastrar uma pessoa, calcule o IMC (Índice de Massa Corporal).
//Ao final, exiba a lista de pessoas (com seus respectivos atributos).
import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;
  late double imc;

  Pessoa(this.nome, this.peso, this.altura) {
    calcularIMC();
  }

  void calcularIMC() {
    imc = peso / ((altura / 100) * (altura / 100));
  }
}

void main() {
  List<Pessoa> pessoas = [];

  print("Digite a quantidade de pessoas: ");
  int quantidadePessoas = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < quantidadePessoas; i++) {
    print("Digite o nome da pessoa ${i + 1}: ");
    String nome = stdin.readLineSync()!;

    print("Digite o peso da pessoa ${i + 1} (em kg): ");
    double peso = double.parse(stdin.readLineSync()!);

    print("Digite a altura da pessoa ${i + 1} (em cm): ");
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome, peso, altura);
    pessoas.add(pessoa);
  }

  print("\nLista de pessoas cadastradas:");
  for (var pessoa in pessoas) {
    print("Nome: ${pessoa.nome}");
    print("Peso: ${pessoa.peso} kg");
    print("Altura: ${pessoa.altura} m");
    print("IMC: ${pessoa.imc.toStringAsFixed(2)}\n");
  }
}

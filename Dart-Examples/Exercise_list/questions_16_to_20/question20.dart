// Evolua a questão anterior. Permita que o programa salve o resultado em um arquivo binário.
//Permita que o programa abra o arquivo binário e exiba o conteúdo na tela

import 'dart:io';
import 'dart:convert';

class Pessoa {
  String nome;
  double peso;
  double altura;
  late double imc;

  Pessoa(this.nome, this.peso, this.altura) {
    imc = calcularIMC();
  }

  double calcularIMC() {
    return peso / (altura * altura);
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'peso': peso,
      'altura': altura,
      'imc': imc,
    };
  }

  factory Pessoa.fromMap(Map<String, dynamic> map) {
    return Pessoa(
      map['nome'],
      map['peso'],
      map['altura'],
    );
  }

  @override
  String toString() {
    return 'Nome: $nome, Peso: $peso, Altura: $altura, IMC: $imc';
  }
}

void main() {
  stdout.write('Digite a quantidade de pessoas a serem cadastradas: ');
  int quantidade = int.parse(stdin.readLineSync()!);

  List<Pessoa> pessoas = [];

  for (int i = 0; i < quantidade; i++) {
    stdout.write('Digite o nome da pessoa $i: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Digite o peso da pessoa $i (kg): ');
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write('Digite a altura da pessoa $i (m): ');
    double altura = double.parse(stdin.readLineSync()!);

    pessoas.add(Pessoa(nome, peso, altura));
  }

  List<Map<String, dynamic>> pessoasJson =
      pessoas.map((pessoa) => pessoa.toMap()).toList();

  File file = File('pessoas.bin');
  file.writeAsBytesSync(utf8.encode(json.encode(pessoasJson)));

  print('Dados das pessoas foram salvos no arquivo "pessoas.bin".');

  print('Lendo e exibindo os dados do arquivo:');

  if (file.existsSync()) {
    List<dynamic> data = json.decode(utf8.decode(file.readAsBytesSync()));
    List<Pessoa> pessoasLidas =
        data.map((item) => Pessoa.fromMap(item)).toList();
    for (var pessoa in pessoasLidas) {
      print(pessoa);
    }
  } else {
    print('Arquivo não encontrado.');
  }
}

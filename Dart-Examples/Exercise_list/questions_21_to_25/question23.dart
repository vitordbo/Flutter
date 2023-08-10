//Evolua a questão anterior. Permita que o programa salve o resultado em um arquivo de texto CSV.
//Permita que o programa abra o arquivo de texto CSV e exiba o conteúdo na tela

import 'dart:io';
import 'dart:convert';

void main() {
  print("Digite uma frase:");
  String frase = stdin.readLineSync()!;
  Map<String, int> contadorPalavras = contarPalavras(frase);

  contadorPalavras.forEach((palavra, quantidade) {
    print('$palavra=$quantidade');
  });

  salvarCSV(contadorPalavras);
  lerEExibirCSV();
}

Map<String, int> contarPalavras(String frase) {
  Map<String, int> contador = {};
  List<String> palavras = frase.split(' ');

  for (String palavra in palavras) {
    if (contador.containsKey(palavra)) {
      contador[palavra] = (contador[palavra]! + 1);
    } else {
      contador[palavra] = 1;
    }
  }

  return contador;
}

void salvarCSV(Map<String, int> dados) {
  final csvFile = File('resultado.csv');
  var csvContent = StringBuffer('Palavra,Quantidade\n');

  dados.forEach((palavra, quantidade) {
    csvContent.write('$palavra,$quantidade\n');
  });

  csvFile.writeAsStringSync(csvContent.toString());
  print('Resultado salvo em resultado.csv');
}

void lerEExibirCSV() {
  final csvFile = File('resultado.csv');

  if (!csvFile.existsSync()) {
    print('Arquivo CSV não encontrado.');
    return;
  }

  final lines = csvFile.readAsLinesSync();

  if (lines.isEmpty) {
    print('Arquivo CSV está vazio.');
    return;
  }

  for (var i = 0; i < lines.length; i++) {
    // Começa a partir do índice 0
    final columns = LineSplitter.split(lines[i]).toList();
    if (columns.length == 2) {
      final palavra = columns[0];
      final quantidade = columns[1];
      print('$palavra = $quantidade');
    }
  }
}

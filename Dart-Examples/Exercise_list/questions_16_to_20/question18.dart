// Construa um programa que inverta a frase digitada pelo usuário. Por exemplo, se string1 for
//“bom dia”, então string2 será “aid mob”

import 'dart:io';

void main() {
  print("Digite uma frase: ");
  String frase =
      stdin.readLineSync()!; // Leitura da frase digitada pelo usuário

  String fraseInvertida = inverterFrase(frase);
  print('');
  print(fraseInvertida);
}

String inverterFrase(String frase) {
  List<String> palavras = frase.split(" "); // Divide a frase em palavras
  List<String> palavrasInvertidas = [];

  for (String palavra in palavras) {
    String palavraInvertida = inverterPalavra(palavra);
    palavrasInvertidas.add(palavraInvertida);
  }

  return palavrasInvertidas.reversed
      .join(" "); // Inverte a ordem das palavras e junta em uma única frase
}

String inverterPalavra(String palavra) {
  List<String> letras = palavra.split(""); // Divide a palavra em letras
  List<String> letrasInvertidas =
      letras.reversed.toList(); // Inverte a ordem das letras

  return letrasInvertidas
      .join(""); // Junta as letras invertidas em uma única palavra
}

//Construa um programa que conte a quantidade de vezes que as palavras de uma frase aparecem.
//Exemplo: “estude muito sempre sempre estude” Resultado: estude=2 muito=1 sempre=2

import 'dart:io';

void main() {
  print("Digite uma frase:");
  String frase = stdin.readLineSync()!;
  Map<String, int> contadorPalavras = contarPalavras(frase);

  contadorPalavras.forEach((palavra, quantidade) {
    print('$palavra=$quantidade');
  });
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

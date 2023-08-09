// Construa um programa que conte a quantidade de letras de uma palavra.
//Exemplo: “casa” Resultado: c=1 a =2 s =1

import 'dart:io';

void main() {
  print("Digite uma palavra:");
  String palavra = stdin.readLineSync()!;
  Map<String, int> contadorLetras = contarLetras(palavra);

  contadorLetras.forEach((letra, quantidade) {
    print('$letra = $quantidade');
  });
}

Map<String, int> contarLetras(String palavra) {
  Map<String, int> contador = {};

  for (int i = 0; i < palavra.length; i++) {
    String letra = palavra[i];
    if (contador.containsKey(letra)) {
      contador[letra] = (contador[letra]! + 1);
    } else {
      contador[letra] = 1;
    }
  }

  return contador;
}

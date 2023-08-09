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

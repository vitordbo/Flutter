/*
Construa um método que valide se uma string possui seus parênteses colocados corretamente. 
A string de entrada é válida se a quantidade de parênteses abertos for a mesma dos parênteses 
fechados. Dica: utilize uma “pilha” para resolver o problema.

Exemplo: entrada: str = "()" saída: true Exemplo: entrada: str = "()()" saída: true
Exemplo: entrada: str = "(a)b" saída: true Exemplo: entrada: str = "(a)(b)" saída: true
Exemplo: entrada: str = "((" saída: false Exemplo: entrada: str = "(a)(b" saída: false
Exemplo: entrada: str = ")(" saída: false Exemplo: entrada: str = ")a()b(" saída: false
*/

import 'question27.dart';

bool validaParenteses(String str) {
  var stack = Stack<String>();

  for (var char in str.runes.map((rune) => String.fromCharCode(rune))) {
    if (char == "(") {
      stack.push(char);
    } else if (char == ")") {
      if (stack.isEmpty || stack.pop() != "(") {
        return false;
      }
    }
  }
  return stack.isEmpty;
}

void main() {
  print(validaParenteses("()")); // true
  print(validaParenteses("()()")); // true
  print(validaParenteses("(a)b")); // true
  print(validaParenteses("(a)(b)")); // true
  print(validaParenteses("((")); // false
  print(validaParenteses("(a)(b")); // false
  print(validaParenteses(")(")); // false
  print(validaParenteses(")a()b(")); // false
}

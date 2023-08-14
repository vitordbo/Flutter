//Construa um programa que receba duas strings, s1 e s2, e retorne true se s2 for um anagrama de s1.
//Exemplos de anagrama: PATO, PATO, TOPA e OPTA

bool saoAnagramas(String s1, String s2) {
  if (s1.length != s2.length) {
    return false;
  }

  var charCount = Map<String, int>();

  for (var char in s1.runes.map((rune) => String.fromCharCode(rune))) {
    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  for (var char in s2.runes.map((rune) => String.fromCharCode(rune))) {
    if (charCount[char] == null) {
      return false;
    }
    charCount[char] = (charCount[char]! - 1);

    if (charCount[char]! < 0) {
      return false;
    }
  }

  return true;
}

void main() {
  print(saoAnagramas("PATO", "PATO")); // true
  print(saoAnagramas("PATO", "TOPA")); // true
  print(saoAnagramas("PATO", "OPTA")); // true
  print(saoAnagramas("PATO", "CASA")); // false
}

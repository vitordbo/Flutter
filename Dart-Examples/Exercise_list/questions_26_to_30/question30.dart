//Construa um programa para implementar, apenas, um codificador de Huffman.
//Exemplo: Entrada: ABRACADABRA Saída: 1 01 000 1 0010 1 0011 1 01 000 1

class HuffmanNode {
  final String? character;
  final int frequency;
  HuffmanNode? left;
  HuffmanNode? right;

  HuffmanNode(this.character, this.frequency);
}

class HuffmanEncoder {
  Map<String, String> _characterToCode = {};

  void _buildCodeTable(HuffmanNode? node, String code) {
    if (node == null) {
      return;
    }

    if (node.character != null) {
      _characterToCode[node.character!] = code;
      return;
    }

    _buildCodeTable(node.left, code + '0');
    _buildCodeTable(node.right, code + '1');
  }

  void encode(String input) {
    final frequencyMap = Map<String, int>();
    for (var char in input.runes.map((rune) => String.fromCharCode(rune))) {
      frequencyMap[char] = (frequencyMap[char] ?? 0) + 1;
    }

    final priorityQueue = List<HuffmanNode>.from(frequencyMap.entries
        .map((entry) => HuffmanNode(entry.key, entry.value)))
      ..sort((a, b) => a.frequency.compareTo(b.frequency));

    while (priorityQueue.length > 1) {
      final left = priorityQueue.removeAt(0);
      final right = priorityQueue.removeAt(0);
      final parent = HuffmanNode(null, left.frequency + right.frequency);
      parent.left = left;
      parent.right = right;
      priorityQueue.insert(0, parent);
      priorityQueue.sort((a, b) => a.frequency.compareTo(b.frequency));
    }

    final root = priorityQueue[0];
    _buildCodeTable(root, '');

    final encodedOutput = input.runes
        .map((rune) => _characterToCode[String.fromCharCode(rune)]!)
        .join(' ');

    print(encodedOutput);
  }
}

void main() {
  final encoder = HuffmanEncoder();
  encoder.encode("ABRACADABRA");
}

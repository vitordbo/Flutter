import 'dart:io';

void main() {
  print("type your name: ");

  String? name =
      stdin.readLineSync(); // null safety => ? to say tha could be null
  // must use terminal to stdin works

  print("hello $name");
}

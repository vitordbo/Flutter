void main() {
  const a = 1; //can't change => must be like this

  //a++; // error
  // a = 2; // error
  print(a);

  final b =
      5; //can't change but could be a "strange" value => like a DateTime.now()

  //a++; // error
  // a = 2; // error
  print(b);
}

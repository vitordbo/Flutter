void main() {
  // async
  // Future in Dart == Promisse in JS
  var future = Future.delayed(Duration(seconds: 2));
  future.then((value) => print('4')); // it will appear after the 1,2,3

  // event loop => in order
  print('1');
  print('2');
  print('3');
}

// used in functions too
Future<void> print4() async {
  await Future.delayed(Duration(seconds: 2)); // could be a http request
  print('4');
}

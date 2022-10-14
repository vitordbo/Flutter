void main() {
  List<String> names = ['Vitor', 'Gabriel', 'Lice'];

  print(names); // works with some types
  print(names[0]); // first => like C
  print(names[names.length - 1]); // last item

  print('---------------------');
  names.add('Duarte'); // add in the end
  names.insert(2, 'Oliveira'); // select the position to add
  print(names); // works with some types

  print('---------------------');
  names.removeAt(2); // remove at your choice
  print(names); // works with some types

  print('---------------------');
  print(names.contains('Lice')); // if exists => return true

  print('---------------------');
  int index = 0;
  names.forEach((String name) {
    // a variable to each
    print('$index = $name'); // show the index
    index++;
  });
}

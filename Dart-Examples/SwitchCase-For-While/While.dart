void main() {
  int i = 1;
  int a = 1;
  bool condition = true;

  while (condition) {
    print(i);
    i++;

    if (i > 10) {
      condition = false;
    }
  }

  print('--------------');

  while (a <= 10) {
    print(a);
    a++;
  }

  print('--------------');

  // always repeat in the first time
  int x = 1;
  do {
    print(x);
    x++;
  } while (x <= 10);
}

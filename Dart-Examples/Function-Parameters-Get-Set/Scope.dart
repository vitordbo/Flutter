int result = 100; // global
// avoid global variables

void main() {
  int result = 50; // this is inside main => use this on the print

  print(result);
}

int add(int num1, int num2) {
  int result = num1 + num2;

  return result; // result is only visible in fucntion
}

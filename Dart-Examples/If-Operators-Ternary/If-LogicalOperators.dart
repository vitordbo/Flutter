void main() {
  String weather;
  weather = 'rain';

  int temperature = 21;

  // && AND
  if (weather == 'sun' && temperature > 20) {
    print('Lets go out');
  } else {
    print('Stay in home');
  }

  // || OR
  if (weather == 'sun' || temperature > 20) {
    print('Lets go out');
  } else {
    print('Stay in home');
  }
}

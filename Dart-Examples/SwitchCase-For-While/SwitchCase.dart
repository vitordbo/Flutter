void main() {
  String screen = 'Home';

  // switch => condition
  switch (screen) {
    case 'Home': // case 1
      print('Home page');
      break;

    case 'SplashScreen': // case 2
      print('Splash Screen');
      break;

    default: // if is not case 1 or case 2
      print('Screen');
      break;
  }
}

void main() {
  double pi = 3.1415;

  print('Pi:');
  print(pi);
  print('----------------');

  print('absolute:');
  print(pi.abs()); // absolute value
  print('----------------');

  print('To int:');
  print(pi.toInt()); // convert doublle to int
  print('----------------');

  print('Floor:');
  print(pi.floor()); // round to less
  print('----------------');

  print('Ceil:');
  print(pi.ceil()); // round to more
  print('----------------');

  print('Convert to String:');
  print('Pi value = ' + pi.toString());
  print('----------------');

  print('Clamp:');
  print(pi.clamp(1, 2)); // minimum value and maximum value to return
  print('----------------');

  print('Round:');
  print(pi.round()); // print int more close to the number
  print('----------------');

  print('Convert to String with certain decimal points:');
  print('Pi value = ' + pi.toStringAsFixed(2)); // 3.14 => not 3.1415
  print('----------------');

  if (pi.isNegative) {
    // if the value is negative
    print('negative');
  } else {
    print('positive');
  }
}

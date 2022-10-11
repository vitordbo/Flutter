void main() {
  // static => use a variable from a class without instantiate the class

  print(World.gravity);
  //print(World.gravity2); // error => not static

  // using a static method
  World.twoTimesGravity();
  print(World.gravity);
}

class World {
  static double gravity = 9.81;
  double gravity2 = 15;

  World();

  // could be used in methods
  static void twoTimesGravity() {
    gravity = gravity * 2;
  }
}

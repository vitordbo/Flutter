void main() {
  Player player1 = Player(10, 20, 'Vitor');
  player1.show(); // using from the abstract class

  print(player1.getPosX());
  print(player1.getPosY());
}

abstract class Character {
  // abstract class => just a model
  int posX = 0;
  int posY = 0;
  String name = '';

  Character(this.posX, this.posY, this.name);

  void show() {
    print('$name is on x= $posX and y= $posY');
  }

  int getPosX() => posX;
  int getPosY() => posY;
}

class Player extends Character {
  // real class
  Player(int posX, int posY, String name) : super(posX, posY, name);
}

Rectangle rectangle = new Rectangle (10, 10, 80, 10);
BlueSquare bluesquare = new BlueSquare (10, 80, 10);
RedSquare redsquare = new RedSquare (80, 80, 10);
WhiteSquare whitesquare = new WhiteSquare (45, 45, 10);

void setup() {
  size (100, 100);
}

void draw() {
  rectangle.draw();
  bluesquare.draw();
  redsquare.draw();
  whitesquare.draw();
}

//void mousePressed() {}

// One way of calling Classes, but these are all related
Rectangle rectangle = new Rectangle(10, 10, 80, 10);
Square square = new Square(40, 30, 20);
RedSquare redSquare = new RedSquare(10, 75, 20);
BlueSquare blueSquare = new BlueSquare(70, 75, 20);

void setup() {
  size(100, 100);
  square.printMe(); //Works when Square square = new Square () is called, ask Kevin why
}

void draw() {
  rectangle.draw();
  square.draw();
  redSquare.draw();
  blueSquare.draw();
}
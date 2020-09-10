private ArrayList <Shape> shapes = new ArrayList<Shape>();

public void setup() {
  size(1000, 900);
  ellipseMode(RADIUS);
  createShapes();

  font = createFont("Times New Roman", 16);
  textFont(font, 36);
}
public void draw() {
  if (gameStart == true) {
    background(255);
    drawShapes();
    ball.step();
    paddleMove();
  }
}

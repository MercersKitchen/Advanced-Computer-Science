//Global Variables
Ball ball = new Ball(250, 250, 25);

void setup() {
  size(600, 500); //Teaching Canvas, all students will use size, not fullScreen()
  canvasDisplayChecker();
  //ellipseMode(CENTER); // Default mode so a reminder that ball is drawn from centre
} // End setup()

void draw() {
  background(0); //Black, greyscale (less memory than color variable)
  ball.step(); //Arithmetic for Chase
  drawBall(255, ball.getX(), ball.getY(), ball.getDiameter());
} // End draw()


void mousePressed() {
  float mouseX() { //too much issue with security, also variable is public anyway
    return mouseX;
  }
  ball.getTargetX() = mouseX();
  ball.getTargetY() = mouseY;
} // End mousePressed()

void keyPressed() {
} // End keyPressed()

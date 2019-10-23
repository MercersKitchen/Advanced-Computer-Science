//Global Variables

Ball ball = new Ball(250, 250, 25);
void setup() {
  size(600, 500); //Teaching canvas, students use size not fullscreen
  //screenSizeTester();
  //ellipseMode(CENTER);
}//End of setup()


void draw() {
  background(0);//Black, greyscale, less memory than variable
  ball.step(); //arithmetic for chase
  drawBall(255, ball.getX() , ball.getY(), ball.getDiameter());
  
}//End of draw()

void mousePressed() {
  ball.targetX= mouseX;
  ball.targetY= mouseY;
}//End mousePressed()

void keyPress() {
}//End keyPressed

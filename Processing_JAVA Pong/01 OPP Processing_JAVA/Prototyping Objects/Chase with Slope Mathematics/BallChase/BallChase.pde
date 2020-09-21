// Global Variables
Ball ball;

void setup() {
  size(500, 300); //fullScreen(), displayWidth & displayHeight
  // Landscape vs. portrait views, leads to screeSize Checker
  ball = new Ball(width*1/2, height*1/3, width*1/8.333333);
}

void draw() {
  background(0);
  ball.step();
  ball.draw();
}

void keyPressed () { // Review KeyBoard Input
}

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
ball.targetX = mouseX;
ball.targetY = mouseY;
}

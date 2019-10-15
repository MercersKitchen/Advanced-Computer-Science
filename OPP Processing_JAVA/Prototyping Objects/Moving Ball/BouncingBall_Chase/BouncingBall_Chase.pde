Ball ball = new Ball(250, 250, 25);

void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}

void draw() {

  ball.step();

  background(0);
  ellipse(ball.x, ball.y, ball.diameter, ball.diameter);
} //End of draw()

void mouseClicked() {
  ball.targetX = mouseX; 
  ball.targetY = mouseY; 
} //End of mouseClicked()

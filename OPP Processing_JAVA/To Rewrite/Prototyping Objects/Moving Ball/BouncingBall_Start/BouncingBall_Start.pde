Ball ball = new Ball(250, 250, 25);

void setup() {
  size(500, 500);
  ellipseMode(CENTER); // Default mode so a reminder that ball is drawn from centre
}

void draw() {
  background(0);
  ellipse(ball.x, ball.y, ball.diameter, ball.diameter); //variable values coming from ball instance, first line in main program
}

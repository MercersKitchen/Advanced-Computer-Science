Ball ball = new Ball(250, 250, 25);

void setup() {
  size(500, 500);
  ellipseMode(CENTER);
}

void draw() {

  ball.step();

  background(0);
  ellipse(ball.x, ball.y, ball.diameter, ball.diameter); //Error is here, but actual error is elsewhere
  
} //End of draw()

void mouseClicked() {
  
  //Introducing an error, when collaborating, easy to make
  ball.X = mouseX; 
  ball.Y = mouseY; 

  //ball.targetX = mouseX; //Uses default access modifiers
  //ball.targetY = mouseY; //Uses default access modifiers
  
} //End of mouseClicked()

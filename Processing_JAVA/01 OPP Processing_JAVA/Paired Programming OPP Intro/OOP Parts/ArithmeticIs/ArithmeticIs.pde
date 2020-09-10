// Creating a Class Variable
Ball myBall = new Ball();

void setup() {
  size (500, 600);
}

void draw() {
  background(0);
  
  //Arithmetic First ... two sections
  
  //Next Step of Ball
  myBall.x += myBall.xSpeed;
  myBall.y += myBall.ySpeed;
  
  //Collision with Canvas Boundaries
  if (myBall.x+myBall.xSpeed < 0 || myBall.x+myBall.xSpeed > width) { 
    myBall.xSpeed *= -1; //Alternating Geomteric Sequence
  }
  if (myBall.y+myBall.ySpeed < 0 || myBall.y+myBall.ySpeed > height) {
    myBall.ySpeed *= -1; //Alternating Geomteric Sequence
  }

  //Drawing Second
  fill(myBall.colour);
  ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter);
  
} //Empty void Draw()

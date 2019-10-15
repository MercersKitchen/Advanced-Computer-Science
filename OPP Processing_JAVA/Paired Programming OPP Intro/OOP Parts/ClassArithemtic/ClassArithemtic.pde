// Creating a Class Variable
Ball myBall = new Ball();

void setup() {
  size (500, 600);
}

void draw() {
  background(0);
  myBall.step ();
  fill(myBall.colour);
  ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter);
  
} //Empty void Draw()

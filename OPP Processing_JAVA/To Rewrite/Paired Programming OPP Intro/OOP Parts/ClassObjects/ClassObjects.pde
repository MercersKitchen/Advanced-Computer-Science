// Creating a Class Variable
Ball myBall = new Ball(50, 100, color(0, 255, 0));
Ball yourBall = new Ball(50, 75, color(0, 255, 0));

void setup() {
  size (500, 600);
}

void draw() {
  background(0);
  
  myBall.step();
  yourBall.step();
  
  fill(myBall.colour);
  fill(yourBall.colour);
  
  ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter);  
  ellipse(yourBall.x, yourBall.y, yourBall.diameter, yourBall.diameter);
  
} //Empty void Draw()

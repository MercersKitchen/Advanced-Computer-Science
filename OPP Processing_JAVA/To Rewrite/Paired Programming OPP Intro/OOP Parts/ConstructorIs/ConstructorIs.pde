// Creating a Class Variable
Ball myBall = new Ball();

void setup() {
  size (500, 600);

  //Assigning Variables in setup(), can be anywhere & should be in class
  myBall.x = 50; 
  myBall.y = 100;
  myBall.diameter = 20;
  myBall.colour = color(0, 255, 0);
}

void draw() {
  background(0);
  fill(myBall.colour);
  ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter);
} //Empty void Draw()

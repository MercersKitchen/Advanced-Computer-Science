// Creating a Class Variable
Ball myBall = new Ball();

void setup() {
  size (500, 600);
}

void draw() {
  background(0);
  myBall.step ();
  myBall.draw ();
  
} //Empty void Draw()

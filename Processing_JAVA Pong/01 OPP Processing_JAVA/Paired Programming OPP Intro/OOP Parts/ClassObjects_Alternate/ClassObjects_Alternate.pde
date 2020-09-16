// Creating a Class Variable
Ball myBall;
Ball yourBall;
float ballStartX, ballStartY;

void setup() {
  size (500, 600);
  ballStartX = width*1/2;
  ballStartY = height*1/2;
  println (ballStartX);
  //
  // Using Ratios and Variables
  myBall = new Ball(ballStartX, ballStartY, color(0, 255, 0)); //Change X & Y to ratios
  //
  // Passsing Numbers, not best practice
  yourBall = new Ball(200, 200, color(0, 255, 0)); //of width and height
}

void draw() {
  background(0);
  
  myBall.step();
  yourBall.step();
  
  myBall.draw();
  //yourBall.draw();
  
} //Empty void Draw()

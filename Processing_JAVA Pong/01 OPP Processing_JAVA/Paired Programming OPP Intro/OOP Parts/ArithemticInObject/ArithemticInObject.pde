// Global Variables
Ball myBall = new Ball(); //Object is Global

void setup() {
  size(500, 300); //fullScreen(), displayWidth & displayHeight
  // Landscape vs. portrait views, leads to screenSize Checker
} //End of setup()

void draw() {
  background(0);
  //Arithmetic first ... two sections
  myBall.step();
  //
  //Bouncing Code
  myBall.bounce();
  //
  //Drawing Second
  myBall.draw();
} //End of draw() //Empty Loop

void keyPressed () {
}

void mousePressed() {
}

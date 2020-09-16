// Global Variables
Ball myBall; //Object is Global

void setup() {
  size(500, 300); //fullScreen(), displayWidth & displayHeight
  // Landscape vs. portrait views, leads to screenSize Checker
  myBall = new Ball(width*1/10, height*1/3, width*1/25, color(31,255,3)); //Note hexidecimal is #1FFF03
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

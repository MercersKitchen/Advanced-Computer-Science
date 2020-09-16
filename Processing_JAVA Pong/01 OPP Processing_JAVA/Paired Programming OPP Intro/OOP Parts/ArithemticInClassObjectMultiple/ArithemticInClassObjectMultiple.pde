// Global Variables
Ball myBall; //Object is Global
Ball yourBall;

void setup() {
  size(500, 300); //fullScreen(), displayWidth & displayHeight
  // Landscape vs. portrait views, leads to screenSize Checker
  myBall = new Ball(width*1/10, height*1/3, width*1/25, color(31,255,3)); //#1FFF03
  yourBall = new Ball(width*2/10, height*2/3, width*1/25, #0503FF);
} //End of setup()

void draw() {
  background(0);
  //Arithmetic first ... two sections
  myBall.step();
  yourBall.step();
  //
  //Bouncing Code
  myBall.bounce();
  yourBall.bounce();
  //
  //Drawing Second
  myBall.draw();
  yourBall.draw();
} //End of draw() //Empty Loop

void keyPressed () {
}

void mousePressed() {
}

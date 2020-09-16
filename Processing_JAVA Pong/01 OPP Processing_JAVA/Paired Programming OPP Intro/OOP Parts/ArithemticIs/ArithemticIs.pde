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
  if (myBall.x-myBall.diameter*1/2 < width*0 || myBall.x+myBall.diameter*1/2 > width) {
    myBall.xSpeed *= -1;
  }
  if (myBall.y-myBall.diameter*1/2 < height*0 || myBall.y+myBall.diameter*1/2 > height) {
    myBall.ySpeed *= -1;
  }
  //
  //Drawing Second
  fill(myBall.colour);
  ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter);
} //End of draw() //Empty Loop

void keyPressed () {
}

void mousePressed() {
}

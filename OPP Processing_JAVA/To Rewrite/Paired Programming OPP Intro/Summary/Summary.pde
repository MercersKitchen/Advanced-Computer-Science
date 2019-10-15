//Global Variables

//Creating Classes like Global "Variables"
Ball myBall = new Ball(50, 100, #FA03FF); //Hexidecimal, purple
Ball yourBall = new Ball(60, 150, #FF3503); //Hexidecimal, orange

void setup() {
  size(2000, 1500); //Use size() while developing, will use fullScreen later, 
  screenSizeTester();
}

void draw() {
  background(0);
  
  //Class-accessed arithmetic
  myBall.step();
  yourBall.step();
  
  //Reviewing Procedure to repeat lines of code
  drawBall(myBall.colour, myBall.x, myBall.y, myBall.diameter);
  drawBall(yourBall.colour, yourBall.x, yourBall.y, yourBall.diameter);
} //End of void draw()

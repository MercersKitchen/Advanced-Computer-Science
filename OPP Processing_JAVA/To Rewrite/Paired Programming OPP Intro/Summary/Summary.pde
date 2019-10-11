//Global Variables

//Creating Classes as Global "Variables"
Ball myPongBall = new Ball(50, 100, #FA03FF); //Hexidecimal, purple
Ball fiveHoleBall = new Ball(60, 150, #FF3503); //Hexidecimal Orange

void setup() {
  size(600, 500); //Use size() while developing, will use fullScreen later
}

void draw() {
  background(0);
  
  //Class-accessed arithmetic
  myPongBall.step();
  fiveHoleBall.step();
  
  //Reviewing Procedure to repeat lines of code
  drawBall(myPongBall.colour, myPongBall.x, myPongBall.y, myPongBall.diameter);
  drawBall(fiveHoleBall.colour, fiveHoleBall.x, fiveHoleBall.y, fiveHoleBall.diameter);
} //End of void draw()

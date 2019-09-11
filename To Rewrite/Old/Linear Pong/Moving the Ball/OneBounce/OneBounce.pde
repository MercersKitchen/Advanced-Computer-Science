// Global Variables
int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX = 1, ballMoveY = 1;

void setup() {
  size(500, 500);
  ballStartX = width/2;
  ballStartY = height/2;
  ballX = ballStartX;
  ballY = ballStartY;
  ballDiameter = width/70; //must pick one dimension for both ellipse diameters, for a circle
}

void draw() {
  background(#E9FF03); //Yellow

  //Ball Movement within Pong Table
  if (ballX == 500) {
    ballMoveX= ballMoveX * (-1);
  }
  if (ballY == 500) {
    ballMoveY = ballMoveY * (-1);
  }
  if (ballX <= width) {
    ballX += ballMoveX; //origonally x+1 operation
  } 
  if (ballY <= height) {
    ballY += ballMoveY; //origonally x+1 operation
  } 

  //Printing Ball
  fill(0); //Black
  ellipse(ballX, ballY, ballDiameter, ballDiameter);

  //Debugging Ball Position
  print ("Ball X-Value: " + ballX);
  println (", Ball Y-Value: " + ballY);
}

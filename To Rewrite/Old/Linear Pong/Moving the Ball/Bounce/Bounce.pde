// Global Variables
int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX = 1, ballMoveY = 1;

void setup() {
  size(500, 600);
  ballStartX = width/2;
  ballStartY = height/2;
  ballX = ballStartX;
  ballY = ballStartY;
  ballDiameter = width/70; //must pick one dimension for both ellipse diameters, for a circle
}

void draw() {
  background(#E9FF03); //Yellow
  
  //Calcualting "next" ball position
  //Section necessary when calling functions so passing current arguements
  ballX += ballMoveX; //origonally x+1 operation
  ballY += ballMoveY; //origonally x+1 operation

  //Ball Movement within Pong Table
  if (ballX == width || ballX == 0) {
    ballMoveX= ballMoveX * (-1);
  }
  if (ballY == height || ballY == 0) {
    ballMoveY = ballMoveY * (-1);
  }
  
  //Printing Ball
  fill(0); //Black
  ellipse(ballX, ballY, ballDiameter, ballDiameter);

  //Debugging Ball Position
  print ("Ball X-Value: " + ballX);
  println (", Ball Y-Value: " + ballY);
}

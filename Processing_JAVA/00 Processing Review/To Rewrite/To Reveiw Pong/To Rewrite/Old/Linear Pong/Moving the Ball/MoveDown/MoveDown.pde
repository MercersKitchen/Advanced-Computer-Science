// Global Variables
int ballX;
int ballY;
int ballStartX;
int ballStartY;
int ballDiameter;

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
  if (ballX < width) {
    ballX += 1; //origonally x+1 operation
  } 
  if (ballY < height) {
    ballY += 1; //origonally x+1 operation
  } 
  
  //Printing Ball
  fill(0); //Black
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
  
  //Debugging Ball Position
  print ("Ball X-Value: " + ballX);
  println (", Ball Y-Value: " + ballY);
}

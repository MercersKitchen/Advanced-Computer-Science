//Global Variables
float ballStartPositionX; // displayWidth
float ballStartPositionY; // displayHeight
float ballSize ; // displayWidth
int ballMoveX; //Declare
int ballMoveY; //Declare
int speedX = 1; // Follows rules of physics
int speedY = 1; // Follows rules of physics
int lightMode1; // Populated with a Button
int lightMode2; //Populated with a Button
float paddleStartY; 
float paddleMoveY;
float paddleWidth;
float paddleHeight;
float paddleMoveXleft;
float paddleMoveXright;

void setup() {
  size (700, 500); // fullScreen(); Cannot Teach with fullScreen()
  ballStartPositionX = width*1/2; // displayWidth
  ballStartPositionY = height*1/2; // displayHeight
  ballSize = width*1/128; // displayWidth
  ballMoveX = int (ballStartPositionX); //Populate, Example of Casting
  ballMoveY = int (ballStartPositionY); //Populate, Example of Casting
  lightMode1 = 255; // Black, Should be a Button to toggle between 0 & 255
  lightMode2 = 0; // White, Should be a button
  paddleStartY = (height/2)-(height*1/16);
  paddleMoveY = paddleStartY; 
  paddleWidth = width*1/100;
  paddleHeight = height*1/8;
  paddleMoveXleft = 0+width*1/30;
  paddleMoveXright = 0+width*29/30;

  // Create a Ball, start position 
  ellipse (ballStartPositionX, ballStartPositionY, ballSize, ballSize);
}

void draw () {
  // Arithmetic  First, then visual data

  // Move the Ball
  noStroke();
  fill(lightMode2);
  rect(0, 0, width, height); // Background
  fill(0);
  stroke(1);

  println ("X Start:", ballStartPositionX, "Y Start:", ballStartPositionY);
  println ("X Move:", ballMoveX, "Y Move:", ballMoveY);
  if (  ballMoveX <= 0+ballSize/2 || ballMoveX >= width-ballSize/2 ) {
    speedX = speedX * -1;
  }
  if ( ballMoveY <= 0+ballSize/2 || ballMoveY >= height-ballSize/2 ) {
    speedY = speedY * -1;
  }
  ballMoveX += speedX; // Progression of ballMoveX=ballMoveX+1 to ballMoveX=+1 to ... 
  ballMoveY += speedY; //What is the difference in these lines
  println ("X Move:", ballMoveX);
  println ("Y Move :", ballMoveY);
  // Moved Position
  noStroke();
  fill(lightMode1); 
  ellipse (ballMoveX, ballMoveY, ballSize, ballSize);
  rect(paddleMoveXleft, paddleMoveY, paddleWidth, paddleHeight); // Paddle #1
  rect(paddleMoveXright, paddleMoveY, paddleWidth, paddleHeight); // Paddle #2
  //Image retains shawdows and ball doesn't bounce
  fill(0);
  stroke(1);
} 

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
float paddleMoveYleft;
float paddleMoveYright;
float paddleWidth;
float paddleHeight;
float paddleMoveXleft;
float paddleMoveXright;
Boolean paddleRightUp = false;
Boolean paddleRightDown = false;
Boolean paddleLeftUp = false;
Boolean paddleLeftDown = false;

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
  paddleMoveYleft = paddleStartY; 
  paddleMoveYright = paddleStartY;
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

  if (  ballMoveX <= paddleMoveXleft || ballMoveX >= paddleMoveXright+paddleWidth ) {
    noLoop(); // End the Game
  }
  if ( ballMoveY <= 0+ballSize/2 || ballMoveY >= height-ballSize/2 ) {
    speedY = speedY * -1;
  }
  ballMoveX += speedX; // Progression of ballMoveX=ballMoveX+1 to ballMoveX=+1 to ... 
  ballMoveY += speedY; //What is the difference in these lines
  //Order is important here
  //Right Paddle
  if (paddleRightUp == true ) {
    paddleMoveYright -= 1;
  }
  if (paddleRightDown == true) {
    paddleMoveYright += 1;
  }
  if (paddleMoveYright <= 0 ) {
    paddleMoveYright = 0;
  }
  if (paddleMoveYright >= height-paddleHeight ) {
    paddleMoveYright = height-paddleHeight;
  }
  //Left Paddle
  if (paddleLeftUp == true ) {
    paddleMoveYleft -= 1;
  }
  if (paddleLeftDown == true) {
    paddleMoveYleft += 1;
  }
  if (paddleMoveYleft <= 0 ) {
    paddleMoveYleft = 0;
  }
  if (paddleMoveYleft >= height-paddleHeight ) {
    paddleMoveYleft = height-paddleHeight;
  }

  // Bounce off Paddles, order of arithemtic important
  if (ballMoveX <= paddleMoveXleft+paddleWidth+ballSize/2) { // Bounce or Goal
    if (ballMoveY >= paddleMoveYleft && ballMoveY <= paddleMoveYleft+paddleHeight) {
      speedX = speedX * -1;
    }
  }
  if (ballMoveX >= paddleMoveXright-ballSize/2) { // Bounce or Goal
    if (ballMoveY >= paddleMoveYright && ballMoveY <= paddleMoveYright+paddleHeight) {
      speedX = speedX * -1;
    }
  }

  noStroke();
  fill(lightMode1); 
  ellipse (ballMoveX, ballMoveY, ballSize, ballSize);
  rect(paddleMoveXleft, paddleMoveYleft, paddleWidth, paddleHeight); // Paddle #1
  rect(paddleMoveXright, paddleMoveYright, paddleWidth, paddleHeight); // Paddle #2
  fill(0);
  stroke(1);
} 

void keyPressed () {
  if (key == CODED && keyCode == UP) {
    paddleRightUp = true; //Codes continuous action
    paddleRightDown = false; //Only one action at a time
  }
  if (key == CODED && keyCode == DOWN) {
    paddleRightDown = true; //Codes continuous action
    paddleRightUp = false;
  }
  if (key == CODED && key == 'W' || key == 'w') {
    paddleLeftUp = true; //Codes continuous action
    paddleLeftDown = false;
  }
  if (key == CODED && key == 'S' || key == 's') {
    paddleLeftDown = true; //Codes continuous action
    paddleLeftUp = false;
  }
}

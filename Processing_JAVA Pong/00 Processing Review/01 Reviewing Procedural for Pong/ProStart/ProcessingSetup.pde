float ballStartPositionX, ballX;
float ballStartPositionY, ballY;
float ballSpeedX, ballSpeedY;
float ballSize;
float netWidth; 
float paddleWidth, paddleHeight, paddleXStartLeft, paddleXStartRight;
float paddleXLeft, paddleXRight, paddleYLeft, paddleYRight;
float paddleLeftUp, paddleRightUp, paddleLeftDown, paddleRightDown;
Boolean paddleMoveLeftUp, paddleMoveLeftDown, paddleMoveRightUp, paddleMoveRightDown;

void screenChecker () { //Landscape vs. portraint mode
  if (width<height) { //option displayWidth & displayHeight
    //Change feedback to print to Canvas
    println ("Please change to landscape mode to play game");
    exit();
  } else {
    println ("Good Geometry, play the game.");
  }
} //end screenChecker ()

void ProcessingSetup () {

  ballStartPositionX = width*1/2;
  ballStartPositionY = height*1/2;
  ballX = ballStartPositionX;
  ballY = ballStartPositionY;
  ballSize = width*0.05; //0.02
  //
  netWidth = width*1/40;
  //
  paddleWidth = width*1/80;
  paddleHeight = height*1/4;
  paddleXStartLeft = netWidth;
  paddleXLeft = paddleXStartLeft;
  paddleXStartRight = width - netWidth - paddleWidth;
  paddleXRight = paddleXStartRight;
  paddleYLeft = height*1/2-paddleHeight*1/2;
  paddleYRight = paddleYLeft;
  
   
   ballSpeedX = 1;
   ballSpeedY = 1;
   
   paddleLeftUp = 1;
   paddleRightUp = 1;
   paddleLeftDown = 1;
   paddleRightDown = 1;
   
   paddleMoveLeftUp = false;
   paddleMoveLeftDown = false;
   paddleMoveRightUp = false;
   paddleMoveRightDown = false;
   
   /*
   netHeight;
   
   paddleStartX;
   paddleStartY;
   
   paddleUpRight;
   paddleUpLeft;
   paddleDownRight;
   paddleDownLeft;
   //
   scoreLeft;
   scoreRight;
   */
  //
} //end ProcessingSetup ()

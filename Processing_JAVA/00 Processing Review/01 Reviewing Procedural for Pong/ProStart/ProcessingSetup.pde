float ballStartPositionX;
float ballStartPositionY;
float ballSize;
float netWidth; 
float paddleWidth;
float paddleHeight;
float paddleXLeft;
float paddleXRight;
float paddleYLeft;
float paddleYRight;

void ProcessingSetup () {

  ballStartPositionX = width*1/2;
  ballStartPositionY = height*1/2;
  ballSize = width*0.02;
  //
  netWidth = width*1/40;
  //
  paddleWidth = width*1/80;
  paddleHeight = height*1/5;
  paddleXLeft = netWidth;
  paddleXRight = width - netWidth - paddleWidth;
  paddleYLeft = height*1/2-paddleHeight*1/2;
  paddleYRight = paddleYLeft;
  /*
   ballMoveX;
   ballMoveY;
   ballSpeedX;
   ballSpeedY;
   
   netHeight;
   
   paddleStartX;
   paddleStartY;
   paddleMoveXLeft;
   paddleMoveXRight;
   paddleMoveYLeft;
   paddleMoveYRight;
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

void screenChecker () { //Landscape vs. portraint mode
  if (width<height) { //option displayWidth & displayHeight
    //Change feedback to print to Canvas
    println ("Please change to landscape mode to play game");
    exit();
  } else {
    println ("Good Geometry, play the game.");
  }
} //end screenChecker ()

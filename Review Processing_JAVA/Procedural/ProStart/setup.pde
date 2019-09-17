void setupVariables() {
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
}

void gameStart() {

  //Arithmetic to play the start the game

  ballStartX = width/2;
  ballStartY = height/2;
  ballX = ballStartX;
  ballY = ballStartY;
  ballDiameter = width/70; //Must pick one dimension for both ellipse diameters, for a circle

  paddleWidthRatio = ballDiameter/2;
  paddle[0] = paddleWidthRatio; 
  paddle[1] = height/paddleHeightRatio; 
  player[0] = 0;
  player[1] = height/2 - height/paddleHeightRatio/2; //Middle minus half the paddle to find the paddle's center
  int section = width / paddleWidthRatio; // Local Variable: calculate the divisions of the paddle and draw in the last one
  player[2] = width*(section-1)/section; // *(paddlewidthRatio-1)/paddlewidthRatio, except looking for very last section in variable geometry
  player[3] = height/2;

  //This sets the random for the ball, commented out as an intentional mistake
  /*
  ballMoveX = int (random (-2, 2));
  while (ballMoveX == 0) {
    ballMoveX = int (random (-2, 2));
  }
  ballMoveY = int (random (-2, 2));
  while (ballMoveY == 0) {
    ballMoveY = int (random (-2, 2));
  }
  */
}

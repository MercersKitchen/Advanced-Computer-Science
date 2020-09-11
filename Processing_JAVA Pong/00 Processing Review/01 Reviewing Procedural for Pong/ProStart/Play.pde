void ballMove () {

  //floor and ceiling bounces
  if (ballY < 0+ballSize*1/2 || ballY > height-ballSize*1/2) {
    ballSpeedY = ballSpeedY * -1;
  }

  if (ballX < netWidth+paddleWidth+ballSize*1/2) {
    if (ballY >= paddleYLeft && ballY <= paddleYLeft+paddleHeight) {
      ballSpeedX = ballSpeedX * -1;
    } else {
      noLoop();
    }
  }
  if (ballX > width) {
    ballSpeedX = ballSpeedX * -1;
  }

  // Arithmetic Ball Movement
  ballX = ballX + ballSpeedX;
  ballY = ballY + ballSpeedY;
}

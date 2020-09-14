void ballMove () {

  //floor and ceiling bounces
  if (ballY < 0+ballSize*1/2 || ballY > height-ballSize*1/2) {
    bounce ();
  }
  //
  // Left and Right Paddle Bounces and Net
  //Left Side
  if (ballX < netWidth+paddleWidth+ballSize*1/2) {
    if (ballY >= paddleYLeft && ballY <= paddleYLeft+paddleHeight) {
      ballSpeedX = ballSpeedX * -1;
    } else {
      noLoop(); //Socreboard Counter
    }
  }
  //Rigth Side
  if (ballX > width-netWidth-paddleWidth-ballSize*1/2) {
    if (ballY >= paddleYRight && ballY <= paddleYRight+paddleHeight) {
      ballSpeedX = ballSpeedX * -1;
    } else {
      noLoop(); //Scoreboard Counter
    }
  }
  
  // Arithmetic Ball Movement
  ballX = ballX + ballSpeedX;
  ballY = ballY + ballSpeedY;
}

void paddleMoveDraw () {
  //Checking if Paddle on the Screen
  if (paddleYLeft <= height*0) {
    paddleYLeft = 0; //paddle does not go above screen
  }
  if (paddleYLeft >= height-paddleHeight) {
    paddleYLeft = height-paddleHeight; //paddle does not go below screen
  }
  if (paddleYRight <= height*0) {
    paddleYRight = 0; //paddle does not go above screen
  }
  if (paddleYRight >= height-paddleHeight) {
    paddleYRight = height-paddleHeight; //paddle does not go above screen
  }
  //Moving Paddle COde
  if (paddleMoveLeftUp == true) {
    paddleYLeft = paddleYLeft - paddleLeftUp;
  }
  if (paddleMoveLeftDown == true) {
    paddleYLeft = paddleYLeft + paddleLeftDown;
  }
  if (paddleMoveRightUp == true) {
    paddleYRight = paddleYRight -paddleRightUp;
  }
  if (paddleMoveRightDown == true) {
    paddleYRight = paddleYRight + paddleRightDown;
  }
}

//paddleMoveLeftUp, paddleMoveLeftDown, paddleMoveRightUp, paddleMoveRightDown;

void paddleMoveControl () {
  if (key == 'W' || key == 'w') { //key == CODED
    paddleMoveLeftUp = true;
    paddleMoveLeftDown = false;
  }
  if (key == 'S' || key == 's') { //(key == CODED
    paddleMoveLeftUp = false;
    paddleMoveLeftDown = true;
  }
  if (key == CODED && keyCode == UP) {
    paddleMoveRightUp = true;
    paddleMoveRightDown = false;
  }
  if (key == CODED && keyCode == DOWN) {
    paddleMoveRightUp = false;
    paddleMoveRightDown = true;
  }
}

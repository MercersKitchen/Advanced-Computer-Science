private void ball_movment() {
  if (ball.right() > width) { 
    ball.speedX = -ball.speedX;
  }
  if (ball.left() < 0) {
    ball.speedX = -ball.speedX;
  }

  if (ball.bottom() > 650/1.25) {
    ball.speedY = -ball.speedY;
  }

  if (ball.top() < 650/26) {
    ball.speedY = -ball.speedY;
  }
 }

 private void paddle_movment() {
  if (paddleLeft.bottom() > 650/1.25) {
    paddleLeft.y = 648/1.25-paddleLeft.h/2;
  }

  if (paddleLeft.top() < 35) {
    paddleLeft.y = 35+paddleLeft.h/2;
  }
    
  if (paddleRight.bottom() > 650/1.25) {
    paddleRight.y = 648/1.25-paddleRight.h/2;
  }

  if (paddleRight.top() < 35) {
    paddleRight.y = 35+paddleRight.h/2;
  }
}

 private void collision() {
  if ( ball.left() < paddleLeft.right() && ball.y > paddleLeft.top() && ball.y < paddleLeft.bottom()){
    ball.speedX = -ball.speedX;
    ball.speedY = map(ball.y - paddleLeft.y, -paddleLeft.h/2, paddleLeft.h/2, -10, 10);
    
    
  }if ( ball.right() > paddleRight.left() && ball.y > paddleRight.top() && ball.y < paddleRight.bottom()) {
    ball.speedX = -ball.speedX;
    ball.speedY = map(ball.y - paddleRight.y, -paddleRight.h/2, paddleRight.h/2, -10, 10);
  }
}

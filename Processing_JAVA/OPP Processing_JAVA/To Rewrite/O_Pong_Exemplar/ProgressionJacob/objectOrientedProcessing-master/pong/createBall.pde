void createBall() {
   float xSpeed;
   float ySpeed;
  for (int i = 0; i < ball.length; i++) {
    int ballX = width/2;
    int ballY = height/2;
    xSpeed = int(random(-6, 6));
    ySpeed = int(random(-6, 6));
    while (xSpeed > -3 && xSpeed < 3) {
      xSpeed = random(-6, 6);
    }
    while (ySpeed > -3 && ySpeed < 3) {
      ySpeed = random(-6, 6);
    }
    ball[i] = new Ball(ballX, ballY, Ball.getBallRadius(), xSpeed, ySpeed);
  }
}

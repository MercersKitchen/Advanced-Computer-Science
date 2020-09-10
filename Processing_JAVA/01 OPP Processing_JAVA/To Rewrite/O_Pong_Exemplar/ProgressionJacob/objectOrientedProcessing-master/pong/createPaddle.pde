void createPaddle() {
  float speed = 5;
  float paddle1X = width/8;
  float paddle1Y = height * 7/16;
  float paddleWidth = width/64;
  float paddleHeight = height * 5/32;

  float paddle2X = width*27/32;
  float paddle2Y = height * 7/16;
  for (int i = 0; i < left.length; i++) {
    left[i] = new leftPaddle(paddle1X, paddle1Y, paddleWidth, paddleHeight, speed);
    right[i] = new rightPaddle(paddle2X, paddle2Y, paddleWidth, paddleHeight, speed);
  }
}

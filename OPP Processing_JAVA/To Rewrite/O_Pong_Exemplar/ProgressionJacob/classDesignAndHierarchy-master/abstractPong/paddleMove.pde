public void paddleMove() {
  if (keys[0] == true) {
    leftPaddle.stepUp();
  }
  if (keys[1] == true) {
    leftPaddle.stepDown();
  }
  if (keys[2] == true) {
    rightPaddle.stepUp();
  }
  if (keys[3] == true) {
    rightPaddle.stepDown();
  }
}

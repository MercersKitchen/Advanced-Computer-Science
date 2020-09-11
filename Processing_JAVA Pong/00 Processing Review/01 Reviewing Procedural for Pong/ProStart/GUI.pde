void drawGame () {
  background(0);
  ellipse (ballX, ballY, ballSize, ballSize);
  rect(paddleXLeft, paddleYLeft, paddleWidth, paddleHeight);
  rect(paddleXRight, paddleYRight, paddleWidth, paddleHeight);
}

void GUI_Starting () {
  drawGame ();
  
}

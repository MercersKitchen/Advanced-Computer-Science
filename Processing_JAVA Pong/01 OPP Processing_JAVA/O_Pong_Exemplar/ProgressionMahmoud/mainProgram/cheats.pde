public void cheats() {
  if (cheat == true) {
    autoScore();
  }
}
public void autoScore() {
  if (cheat == true) {
    ball.x = mouseX;
    ball.y = mouseY;
  }
}
public void cheat2() {
  if (cheat2 == true) {
    fastBall();
  }
}

public void fastBall() {
  if (cheat2 == true) {
    ball.speedX = 13;
    ball.speedY = 13;
  }
  if (ball.left() < 0) {
    cheat2 = false;
  }
  if (ball.right() > width) { 
    cheat2 = false;
  }
}

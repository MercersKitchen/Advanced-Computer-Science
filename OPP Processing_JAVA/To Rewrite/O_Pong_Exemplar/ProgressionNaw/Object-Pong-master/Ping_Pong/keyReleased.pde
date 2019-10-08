void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      paddle2.changeYm(0);
    } else if (keyCode == DOWN) {
      paddle2.changeYm(0);
    }
  }
  if (key == 'w' || key == 'W') {
    paddle1.changeYm(0);
  }
  if (key == 's' || key == 'S') {
    paddle1.changeYm(0);
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      paddle2.changeYm(-2);
    } else if (keyCode == DOWN) {
      paddle2.changeYm(2);
    }
    
  }
  if (key == 'w' || key == 'W') {
    paddle1.changeYm(-2);
  }
  if (key == 's' || key == 'S') {
    paddle1.changeYm(2);
  }
  if (key == 'r' ||key == 'R') {
    reset=true;

  }
  if (key == ' ') {
    play=true;
  }
}

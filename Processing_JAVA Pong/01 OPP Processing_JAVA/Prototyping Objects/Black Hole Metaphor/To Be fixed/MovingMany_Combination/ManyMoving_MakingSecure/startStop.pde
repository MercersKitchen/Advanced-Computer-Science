void startStop() {
  if (keyPressed) {
    if (key == ' ') {
      startKeyboard = true;
    }
  }

  if (keyPressed) { // ESC is a keyCoded Varaible and used to quit a game, ASCII is a little easier
    if (key == 'q' || key == 'Q') {
      println ("The canvas has exited.");
      exit();
    }
  }
}

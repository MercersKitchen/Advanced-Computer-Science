// Global Variables

void setup() {
  size(500, 300); //fullScreen(), displayWidth, Height
  screenChecker (); //for landscape vs. portrait mode
  ProcessingSetup ();
  GUI_Starting(); //Start of the Game
}

void draw() {
  ballMove ();
  drawGame ();
}

void keyPressed () { // Review KeyBoard Input
  if (key == CODED && key == 'S' || key == 's') {
    paddleYLeft = paddleYLeft + 1;
  }
}

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
}

// Global Variables
Boolean start = false; //Splash Screen

void setup() {
  size(500, 300); //fullScreen(), displayWidth, Height
  screenChecker (); //for landscape vs. portrait mode //See ProcessingSetup TAB
  ProcessingSetup ();
  //textSetup(); //No Code Included right now
  quitButtonSetup ();
  soundEffectSetup ();
}

void draw() { //review and adjust order here
  println(start);
  if (start == false) {
    splashScreen ();
  }
  if (start == true) {
    drawGame (); //See GUI TAB
    quitButtonDraw();
    ballMove (); //See Play TAB
    paddleMoveDraw (); //See Play TAB
  }
}

void keyPressed () { // Review KeyBoard Input
  gameStart ();
  paddleMoveControl (); //See Play TAB
  quitButtonKeyPressed ();
}

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
  quitButtonMousePressed ();
}

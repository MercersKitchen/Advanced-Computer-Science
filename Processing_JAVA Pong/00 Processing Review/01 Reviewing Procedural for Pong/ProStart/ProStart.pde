// Global Variables
String reset;
Boolean start = false; //Splash Screen

void setup() {
  size(500, 300); //fullScreen(), displayWidth, Height
  screenChecker (); //for landscape vs. portrait mode //See ProcessingSetup TAB
  ProcessingSetup ();
  //textSetup(); //No Code Included right now
  quitButtonSetup ();
  soundEffectSetup ();
  scoreBoardSetup();
}

void draw() { //review and adjust order here
  if (start == false) {
    splashScreen ();
  }
  if (start == true) {
    drawGame (); //See GUI TAB
    quitButtonDraw();
    paddleMoveDraw (); //See Play TAB
    ballMove (); //See Play TAB //Needs to be at end of draw() since noLoop()
    scoreBoardDraw();
    println(regame, stop);
    if (stop==true) {
      reset = "Press R to restart Game";
      textDraw(reset, quitFont, height, #FFFFFF, CENTER, CENTER, 0, height*1/2-height*1/20, width-1, height*1/10);
      noLoop();
    }
  }
}

void keyPressed () { // Review KeyBoard Input
  gameStart ();
  paddleMoveControl (); //See Play TAB
  quitButtonKeyPressed ();
  restart(); //See Scoreboard TAB
}

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
  quitButtonMousePressed ();
}

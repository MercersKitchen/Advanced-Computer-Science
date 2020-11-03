int scoreLeft = 0;
int scoreRight = 0;
String endScreen1 = "Red Wins";
String endScreen2 = "Blue Wns";
boolean StartScreen = true;


void scoreboard() {
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text(scoreRight, width/1.05, height-150);
  text(scoreLeft, width/20, height- 150);
  if (ball.right() > width) {
    scoreLeft = scoreLeft + 1;
    ball.x = width/2;
    ball.y = height/2;
     text("X", 0, 0,width*15/16,5);
  /*
  quitButtonX = width*15/16;
  quitButtonY = height*0;
  quitButtonWidth = width*1/16;
  quitButtonHeight = height*1/30;
  */
}
  if (ball.left() < 0) {
    scoreRight = scoreRight + 1;
    ball.x = width/2;
    ball.y = height/2;
}
  if(scoreRight == 7){
  fill(255);
  //rect(0, 0, 1366, 768);
  textSize(100);
  textAlign(CENTER, CENTER);
  textFont(f, 40);
  fill(#0000FF);
   text("Right Wins", 0, 0, 1100, 1150);
  fill(255);
  text("Press R to retart", 0, 0, 1100, 1250);
  noLoop();
}
    if(scoreLeft == 7){
  fill(0);
  //rect(0, 0, 1366, 768);
  textSize(100);
  textAlign(CENTER, CENTER);
  textFont(f, 40);
  fill(#FF0000);
  text("Left Wins", 0, 0, 1100, 1150);
  fill(255);
  text("Press R to retart", 0, 0, 1100, 1250);
  noLoop();
  }
}



void StartScreen() {
if (StartScreen == true) {
  fill(0);
  rect(0, 0, 1366, 768);
  textSize(80);
  textAlign(CENTER, CENTER);
  textFont(f, 55);
  fill(225);
  text("Welcome to mahmoud's pong", CENTER, CENTER, CENTER, CENTER);
  textSize(30);
  text("Click Screen To Start", width*1/4, height*2/5, width*1/2, 50);
  text("click -U- or -J- and use mouse for secret ", width*1/4, height*2.5/5, width*1/2, 50);
    text("First to 7 wins ", width*1/4, height*3/5, width*1/2, 50);


  noLoop();
  }
}

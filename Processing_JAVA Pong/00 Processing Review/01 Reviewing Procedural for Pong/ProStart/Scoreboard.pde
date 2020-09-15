int player1, player2;
String score1, score2;


void scoreBoardSetup() {
  player1 = 0;
  player2 = 0;
}

void scoreBoardDraw() {
  score1 = Integer.toString(player1);
  score2 = Integer.toString(player2);
  //rect(width*3/20, height*0, width*2/10, height*3/10); //rect() player1
  //rect(width*13/20, height*0, width*2/10, height*3/10); //rect() player2
  //rect2();
  textDraw(score1, quitFont, height, #FFFFFF, CENTER, CENTER, width*3/20, height*0, width*2/10, height*3/10);
  textDraw(score2, quitFont, height, #FFFFFF, CENTER, CENTER, width*13/20, height*0, width*2/10, height*3/10);
}

void restart() {
  if (key == 'R' || key == 'r') {
    regame = false;
    stop = false;
    ProcessingSetup ();
    loop();
  }
}

public class Scoreboard {
  float x;
  float y;
  float rectWidth;
  float rectHeight;
  float yMove;
  Boolean up;
  boolean down;


int player1, player2;
String score1, score2;


void scoreBoardSetup() {
  player1 = 0;
  player2 = 0;
}

void scoreBoardDraw() {
  fill(255);
  score1 = Integer.toString(player1);
  score2 = Integer.toString(player2);

}

void restart() {
  if (key == 'R' || key == 'r') {
    //regame = false;
    //stop = false;
    //ProcessingSetup ();
    loop();
  }
}
}

//Questions
//Where and how are new balls initiated

Ball[] balls = new Ball[2]; //only variable to start is how many Pong Balls will be in play

int ballCount = 0;
int Score1=0, Score2=0; //Placeholder variables until ScoreBoard Class created, FOR Loop using these should move to ScoreBoard Class
Boolean endGame = false; //Game will end when Fifth Ball is attempted
int fireworkX, fireworkY; //New memory location for Class Ball varaibles (ballX & ballY)
//int score1, score2; //Tracking scorePlayer1 & 2

void setup() {
  size(500, 600); //May need to change these variables
  frameRate(30); //Attempt to adjust frame rate so visual data shown consistently, doesn't work
  balls[0] = new Ball(width, height);
  balls[0].gameStart();
  ballCount = 1;
}

void draw() {
  background(255);

  if (ballCount >= balls.length) { //Array out of Bounds
    endGame = true;
  }

  if (balls[ballCount-1].ballXGoalOnce == true) { //Ball Scores connected to Firework Class
    println("inside firework");
    Firework[] fireworks = new Firework[1]; //Ratio of Max Pong Balls (related to Ball List), copied for other side too
    fireworkX = balls[ballCount-1].ballX; //address null pointer exception if trying to run Firework directly with ballX&Y
    fireworkY = balls[ballCount-1].ballY;
    println("Y Value in Ball Class:", balls[ballCount-1].ballY); 
    for (int i=0; i<fireworks.length; i++) {
      fireworks[i] = new Firework( fireworkX, fireworkY );
      println("inside firework creation");
    }
    //Not working
    while (fireworks[0].y < height  ) { //|| fireworks[1].y < height || fireworks[2].y < height
      println("inside firework while");
      println("Y Value in Firework Class:", fireworks[0].y); //Verify with above balls[ballCount-1].ballY
      //frameRate(1); //Doesn't work, see previous comment
      for (int i=0; i<fireworks.length; i++) {
        println("inside firework step");
        fireworks[i].fireWorkStep();
      }
      for (int i=0; i<fireworks.length; i++) {
        //background (255);
        println("inside firework draw");
        fireworks[i].fireWorkDraw();
      }
      //frameRate(30); //doesn't work, see previous comment
    }
    balls[ballCount-1].ballXGoalOnce = false;
  }

  for (int i=0; i<ballCount; i++) { //Replacement for Listener
    if (balls[i].createNextBall == true) {
      ballCount++;
      int j=i+1;
      balls[j] = new Ball(width, height);
      balls[j].gameStart();
    }
    balls[i].createNextBall = false;
  }

  for (int i=0; i<ballCount; i++) {
    balls[i].gamePlay();
    balls[i].ballDraw();
  }

  //score1 += balls[i].scorePlayer1;
  //score2 += ball[i].scorePlayer2; //Future Code

  if (endGame == true) {
    println("\n\nGame is over"); //Escapes because Console log happens in other classes
    for (int i=0; i<balls.length; i++) {
      Score1 += balls[i].scorePlayer1;
      Score2 += balls[i].scorePlayer2;
      //println("Player 1:", balls[i].scorePlayer1);
      //println("Player 2:", balls[i].scorePlayer2);
    }
    println("Player 1:", Score1, "\tPlayer 2:", Score2); //Escapes because Console log happens in other classes
    exit();
  }
} //End of void draw

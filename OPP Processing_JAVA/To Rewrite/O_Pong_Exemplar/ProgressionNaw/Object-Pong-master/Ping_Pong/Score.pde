class Score {
  public int Score1;
  public int Score2;

  public Score () {
  }
  void step() {
    textSize(30);
    text(+Score1 +"/5", 50, 50);
    text(+Score2 +"/5", 900, 50);
    
    //STARTING BALL
    if (ball1.getX()>width) {
      Score1=Score1+1;
      text(+Score1, 50, 50);
      ball1.reset();
    }
    if (ball1.getX()<-5) {
      Score2=Score2+1;
      text(+Score2, 50, 50);
      ball1.reset();
    }
    //SECOND BALL
    if (ball2.getX()<-5) {
      Score2=Score2+1;
      text(+Score2,50,50);
      ball2.reset();
    }
    if (ball2.getX()>width) {
      Score1=Score1+1;
      text(+Score1,50,50);
      ball2.reset();
    }
    //THIRD BALL
    if (ball3.getX()<-5) {
      Score2=Score2+1;
      text(+Score2,50,50);
      ball3.reset();
    }
    if (ball3.getX()>width) {
      Score1=Score1+1;
      text(+Score1,50,50);
      ball3.reset();
    }
    //FOURTH BALL
    if (ball4.getX()<-5) {
      Score2=Score2+1;
      text(+Score2,50,50);
      ball4.reset();
    }
    if (ball4.getX()>width) {
      Score1=Score1+1;
      text(+Score1,50,50);
      ball4.reset();
    }
    //FIFTH BALL
    if (ball5.getX()<-5) {
      Score2=Score2+1;
      text(+Score2,50,50);
      ball5.reset();
    }
    if (ball5.getX()>width) {
      Score1=Score1+1;
      text(+Score1,50,50);
      ball5.reset();
    }



    if (Score1>4) {
      background(0);
      delayTime=true;
      fill(c);
      textSize(50);
      text("Player 1 Won / Left Player", width*1/3-160, height*1/2);
      textSize(25);
      Score2=0;
      ball1.stop();
      ball2.stop();
      ball3.stop();
      ball4.stop();
      ball5.stop();
    }
    if (Score2>4) {
      background(0);
      delayTime=true;
      fill(c);
      textSize(50);
      text("Player 2 Won / Right Player", width*1/3-160, height*1/2);
      textSize(25);
      Score1=0;
      ball1.stop();
      ball2.stop();
      ball3.stop();
      ball4.stop();
      ball5.stop();
    }
  }
  
  void reset() {
    Score1=0;
    Score2=0;
  }
}

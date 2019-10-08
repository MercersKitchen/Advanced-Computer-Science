class Ball {

  int ballX;
  int ballY;
  Boolean ballXGoal;
  final int ballStartX;
  final int ballStartY;
  final int ballDiameter;
  int ballMoveX;
  int ballMoveY;
  int directionX;
  int directionY;
  int ballSpeedX;
  int ballSpeedY;
  color c;
  int scorePlayer1 = 0;
  int scorePlayer2 = 0;

  //int ballCount = 5; //Only variable that needs to be coded first

  //Constructor
  Ball(float width, float height) {
    ballStartX = int(width/2);
    ballStartY = int(height/2);
    this.ballX = ballStartX;
    this.ballY = ballStartY;
    this.ballXGoal = false;
    ballDiameter = int(width/70); //Must pick one dimension for both ellipse diameters, for a circle
    this.ballSpeedX = int (random (1, 5));
    this.ballSpeedY = int (random (1, 5));
    this.c = color(int(random(50, 200)), int(random(50, 200)), int(random(50, 200)));
  } //End of Constructor

  void ballDraw() {
    //In Pure-Java these variables will need Getters and Setters
    fill(c);
    ellipse(ballX, ballY, ballDiameter, ballDiameter);
  } //End of draw()

  //Game Start
  void gameStart() { //Completes the Ball Constructor
    //This sets the random for the ball, commented out as an intentional mistake
    //Change this to be a ball speed
    directionX = int (random (-2, 2));
    while (directionX == 0) {
      directionX = int (random (-2, 2));
    }
    directionY = int (random (-2, 2));
    while (directionY == 0) {
      directionY = int (random (-2, 2));
    }
  } //End gameStart

  void gamePlay() {

    //Scoring on Left and Right, reseting variables to decrease system resources
    //See Notes for how to operate goal area
    if (ballX < 0+(ballDiameter/4) || ballX > width-(ballDiameter/4)) { //Error: -(ballDiameter/2)
      if (ballX < 0+(ballDiameter/4)) {
        scorePlayer1 = scorePlayer1 + 1;
        ballX = 0+(ballDiameter/4);
        ballXGoal = true;
        ballY = ballY; //Assignment to itself, in the scoring area that becomes a marker for Fireworks and Scoreboard
      }
      if (ballX > width-(ballDiameter/4)) {
        scorePlayer2++;
        ballX = width-(ballDiameter/4);
        ballXGoal = true;
        ballY = ballY;
      }
    }

    //Top and Bottom Boundary Bounce, accounting for increased ball movement per "step"
    if ( (ballY > 0 && ballY <= 0+(ballDiameter) ) || ( ballY < height && ballY >= height-(ballDiameter) )   ) { //ballY bounce area wider than below
      directionY = directionY * (-1);
    }
    if (ballY < 0+(ballDiameter/2) ) { //Redraw to catch when the bounce has not happened in previous IF
      ballY = 0+(ballDiameter/2);
    }
    if (ballY > height-(ballDiameter/2) ) { //Redraw to catch when the bounce has not happened in first IF
      ballY = height-(ballDiameter/2);
    }

    //Ball "Step"
    if (ballXGoal == true) { //Empty IF to skip ball arithmetic, when score happens // Code cut || ballX >= width
    } else {
      ballMoveX = ballSpeedX*directionX;
      ballMoveY = ballSpeedY*directionY;
      ballX += ballMoveX;
      ballY += ballMoveY;
    }

    //Console Log tracking Scoring and BallX & BallY Positions
    println("\nPlayer 1:", scorePlayer1, "\tPlayer 2:", scorePlayer2);
    print("\tBall X:", ballX, "\t Ball Y:", ballY);
  } //End of gamePlay()

  //Ball Squish
  
} //End of Class

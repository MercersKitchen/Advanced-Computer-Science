class Ball {

  int ballX;
  int ballY;
  final int ballStartX;
  final int ballStartY;
  final int ballDiameter;
  int ballMoveX;
  int ballMoveY;
  int directionX;
  int directionY;
  int xSpeed;
  int ySpeed;

  static int ballCount = 5; //Only variable that needs to be coded first

  //Constructor
  Ball () {
    this.ballX = ballX;
    this.ballY = ballY;
    this.ballSpeedX = ballSpeedX;
    this.ballSpeedY = ballSpeedY;
  } //End of Constructor

  //Game Start
  void gameStart () {
    ballStartX = width/2;
    ballStartY = height/2;
    ballX = ballStartX;
    ballY = ballStartY;
    ballDiameter = width/70; //Must pick one dimension for both ellipse diameters, for a circle
    ballSpeedX = 1;
    ballSpeedY = 1;

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
    ballMoveX = ballSpeedX*directionX;
    ballMoveY = ballSpeedY*directionY;
    ballx += ballMoveX;
    ballY += ballMoveY;
  }

  //Ball Squish

  //Getters and Setters
  static int getBallCount() {
    return ballCount;
  }
  int getBallX() {
    return ballX;
  }
  int getBallY() {
    return ballY;
  }
  int getBallDiameter() {
    return ballDiameter;
  }
} //End of Class

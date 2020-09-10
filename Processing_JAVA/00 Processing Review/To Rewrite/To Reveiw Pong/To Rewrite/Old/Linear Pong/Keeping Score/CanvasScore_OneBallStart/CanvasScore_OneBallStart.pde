// Global Variables
int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX = 1, ballMoveY = 1;
int [] score = {0, 0}; //Player score 1 & 2

void setup() {
  size(500, 600);
  ballStartX = width/2;
  ballStartY = height/2;
  ballX = ballStartX;
  ballY = ballStartY;
  ballDiameter = width/70; //must pick one dimension for both ellipse diameters, for a circle
}

void draw() {
  background(#E9FF03); //Yellow

  //Calcualting "next" ball position
  //Section necessary when calling functions so passing current arguements
  ballX += ballMoveX; //origonally x+1 operation
  ballY += ballMoveY; //origonally x+1 operation

  //Ball Movement within Pong Table
  if (ballX == 0 || ballX == width) { //Score for Player 2, note the index
    if (ballX == 0) { //Player 2 Score
      score[1] += 1;
    }
    if (ballX == width) { //Player 1 Score
      score[0] += 1;
    }
    ballX = ballStartX;
    ballY = ballStartY;
  }

  // Code to bounce off of paddles, here
  // ballMoveX *= (-1); //Shorthand for previous x*-1

  if (ballY == height || ballY == 0) {
    ballMoveY = ballMoveY * (-1);
  }

  //Printing Ball
  fill(0); //Black
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
  
  //Printing Score to the Canvas
  textSize(0.1*width);
  text("Player 1:\n" + score[0], (width*1/5)-(0.1*width), height*1/5); //Printing to ration of screen, Player 1 is minusing width of font
  // Note: review of Character escape and this seems to "busy" on the screen
  text(score[1], width*4/5, height*1/5);
  println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");

  //Debugging Ball Position
  //print ("Ball X-Value: " + ballX);
  //println (", Ball Y-Value: " + ballY);
}

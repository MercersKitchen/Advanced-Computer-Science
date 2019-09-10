//Global Variables
float ballStartPositionX; // displayWidth
float ballStartPositionY; // displayHeight
float ballSize ; // displayWidth
int ballMoveX; //Declare
int ballMoveY; //Declare

void setup() {
  size (700, 500); // fullScreen(); Cannot Teach with fullScreen()
  ballStartPositionX = width*1/2; // displayWidth
  ballStartPositionY = height*1/2; // displayHeight
  ballSize = width*1/128; // displayWidth
  ballMoveX = int (ballStartPositionX); //Populate, Example of Casting
  ballMoveY = int (ballStartPositionY); //Populate, Example of Casting

  // Create a Ball, start position 
  ellipse (ballStartPositionX, ballStartPositionY, ballSize, ballSize);
}

void draw () {
  // Move the Ball
  println ("X Start:", ballStartPositionX, "Y Start:", ballStartPositionY);
  println ("X Move:", ballMoveX, "Y Move:", ballMoveY);
  ballMoveX += 1; // Progression of ballMoveX=ballMoveX+1 to ballMoveX=+1 to ... 
  ballMoveY -= 1; //What is the difference in these lines
  println ("X Move:", ballMoveX);
  println ("Y Move :", ballMoveY);
  // Moved Position
  ellipse (ballMoveX, ballMoveY, ballSize, ballSize);
  //Image retains shawdows and ball doesn't bounce
} 

//Global Variables
float ballStartPositionX; // displayWidth
float ballStartPositionY; // displayHeight
float ballSize ; // displayWidth
int ballMoveX; //Declare
int ballMoveY; //Declare
int speedX; // Follows rules of physics
int speedY; // Follows rules of physics

void setup() {
  size (700, 500); // fullScreen(); Cannot Teach with fullScreen()
  ballStartPositionX = width*1/2; // displayWidth
  ballStartPositionY = height*1/2; // displayHeight
  ballSize = width*1/128; // displayWidth
  ballMoveX = int (ballStartPositionX); //Populate, Example of Casting
  ballMoveY = int (ballStartPositionY); //Populate, Example of Casting

  // Create a Ball, start position 
  ellipse (ballStartPositionX, ballStartPositionY, ballSize, ballSize);

  //This code could be procedural since code repeats
  int number = int (random (-2, 2));
  while (number == 0) {
    number = int (random (-2, 2));
  }
  speedX = number;
  println("speedX", speedX);
  number = int (random (-2, 2));
  while (number == 0) {
    number = int (random (-2, 2));
  }
  speedY = number;
  println("speedY", speedX);
}

void draw () {
  //Value Testing and Arithmetic to Position Ball
  println ("X Start:", ballStartPositionX, "Y Start:", ballStartPositionY);
  println ("X Move:", ballMoveX, "Y Move:", ballMoveY);
  if (  ballMoveX <= 0+ballSize/2 || ballMoveX >= width-ballSize/2 ) {
    speedX = speedX * -1;
  }
  if ( ballMoveY <= 0+ballSize/2 || ballMoveY >= height-ballSize/2 ) {
    speedY = speedY * -1;
  }
  // Move the Ball, using Value Testing and Arithmetic
  ballMoveX += speedX; // Progression of ballMoveX=ballMoveX+1 to ballMoveX=+1 to ... 
  ballMoveY += speedY; //What is the difference in these lines
  println ("X Move:", ballMoveX);
  println ("Y Move :", ballMoveY);

  // Drawing the Canvas Objects
  ellipse (ballMoveX, ballMoveY, ballSize, ballSize);
  //Image retains shawdows and ball doesn't bounce
} 

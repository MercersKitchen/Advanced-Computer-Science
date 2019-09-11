/*Purpose: illustrates all asspects of linear pong in Procedural Method, 
- Display Geoemtry is checked, canvas "sqaure" is checked; user must program, code is not "smart"
- Ball bounces off the edge, not half off teh screen
- Ball starts in any of four 45-degree directions
*/

//This File is the main file
//It calls each Procedure in either setup() or draw()

// Global Variables (Note: any variables at the beginning of Tabs, before "void" are considered Global Variables)

Boolean start = false; //Variable for Game Starting, New to P_Pong

int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX = 1, ballMoveY = 1;
int paddleWidthRatio; //Variable is being repeated in setup() figuring good width of paddle, half of ballDiameter
//Reason: do not bounce of the edge of the paddle
int paddleHeightRatio = 10;
int [] paddle = {0, 0}; //Paddle width and height
int [] player = new int [4]; //Alternate way of initializing an Array, for paddles
//0: Player1_X, 1:Player1_Y, 2:Player2_X, 3:Player2_Y
int [] score = {0, 0}; //Player score 1 & 2
// End Global Variables

void setup() {
  size(500, 600); //May need to change these variables
  screenSizeChecker (); //checking the display and smaller canvas size to ensure this canvas fits
  gameStart(); //arithemetic to calculate starting positions of paddles and ball
}

void draw() {

  //Code to change "Start" Boolean Variable to true & to Quit the game
  startStop();

  if (start==true) { //Contains the entire Main File Code
    playGame(); //Also contains "ball squish" procedure, with change in frameRate
    score(); //contains highlihgts for positive user feedback
  }
}

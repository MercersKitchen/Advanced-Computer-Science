// Global Variables
int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX, ballMoveY; //This variable must be randomized to achieve the four directions
int [] score = {0, 0}; //Player1 & 2
int paddleWidthRatio; //Variable is being repeated in setup() figuring good width of paddle, half of ballDiameter
//Reason: do not bounce of the edge of the paddle
int paddleHeightRatio = 10;
int [] paddle = {0, 0}; //Paddle width and height
int [] player = new int [4]; //Alternate way of initializing an Array, for paddles
//0: Player1_X, 1:Player1_Y, 2:Player2_X, 3:Player2_Y
//End Global Variables

void setup() {
  size(500, 500); //Square will give issues if X & Y Axis change at same rate and time, might change this to rectangle canvas (automatically is better)
  //Note: all numbers are either ratios or declared once
  
  //Initial Varaible Assignments, based on canvas size: width and height
  
  //This sets the random direction for the ball, notes illustrate four possible directions
  
} //End Setup()

void draw() { //Important to decide what is calcualtoed first, before drawing it to the canvas
  background(#E9FF03); //Yellow

  //Calcualting "next" ball position
  //Section necessary when calling functions so passing current arguements
  
  //Code to bounce off of paddles, does not interfer with score code since at different X-axis values, just before goal area
  
  //Ball Movement within Pong Table after scoring
  
  // Code to Bounce off Floor and Ceiling
  
  //Drawing Ball
  
  //Code to Move Paddles, keyboard and mouseX&Y key variables
  //Player 1 Movement
  //Player 2 Movement
  
  //Drawing Paddles
  
  //Drawing Score to the Canvas
  
  //Debugging Ball Position
  
} //End Draw()

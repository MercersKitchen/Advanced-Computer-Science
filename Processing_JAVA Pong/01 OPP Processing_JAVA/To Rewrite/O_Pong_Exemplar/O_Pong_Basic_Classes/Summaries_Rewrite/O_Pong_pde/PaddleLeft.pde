class LeftPaddle {
}

int paddleWidthRatio; //Variable is being re peated in setup() figuring good width of paddle, half of ballDiameter
//Reason: do not bounce of the edge of the paddle
int paddleHeightRatio = 10;
int [] paddle = {0, 0}; //Paddle width and height
int [] player = new int [4]; //Alternate way of initializing an Array, for paddles
//0: Player1_X, 1:Player1_Y, 2:Player2_X, 3:Player2_Y
int [] score = {0, 0}; //Player score 1 & 2
// End Global Variables

paddleWidthRatio = ballDiameter/2;
paddle[0] = paddleWidthRatio; 
paddle[1] = height/paddleHeightRatio; 
player[0] = 0;
player[1] = height/2 - height/paddleHeightRatio/2; //Middle minus half the paddle to find the paddle's center
int section = width / paddleWidthRatio; // Local Variable: calculate the divisions of the paddle and draw in the last one
player[2] = width*(section-1)/section; // *(paddlewidthRatio-1)/paddlewidthRatio, except looking for very last section in variable geometry
player[3] = height/2;

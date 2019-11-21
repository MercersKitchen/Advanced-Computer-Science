// Global Objects
Firework[] ball = new Firework [1]; //Needs to include a Static Variable
Firework[] threeBallStart = new Firework [3]; //Needs to include a Static Variable
// Paddle List goes here, when we write it, then populate constructor below
PaddlesClass[] paddle = new PaddlesClass [2];

// Global Varaibles
color black = #010000;

void setup() {
  size(500, 600);
  ball[0] = new Firework (width, height);
  paddle[0] = new PaddlesClass (width, height, 0.05, 0); //Left Paddle
  paddle[1] = new PaddlesClass (width, height, 0.95, 0.025); //Right Paddle
}

void draw() {
  //ball
  //ball[0].xSpeed is constantly passing through this main program
  background(black);
  //println(ball[0].xSpeed);
  ball[0].xSpeed = ball[0].xSpeed * paddle[0].edgeDetection(ball[0].x, ball[0].y, ball[0].diameter);
  ball[0].xSpeed = ball[0].xSpeed * ball[0].edgeDetection(ball[0].xSpeed);
  ball[0].classDraw();
  ball[0].move();
  //paddle[1].();
  //up and down needs to go into the class
  paddle[0].movePaddle(paddle[0].up, paddle[0].down, height);
  paddle[1].movePaddle(paddle[1].up, paddle[1].down, height);
  paddle[0].classDraw();
  paddle[1].classDraw();
}

void mousePressed() {
}

void keyPressed() {
  if (key == CODED && key == 'W' || key == 'w') {
    paddle[0].up = true;
    paddle[0].down = false;
  }
  if (key == CODED && key == 'S' || key == 's') {
    paddle[0].up = false;
    paddle[0].down = true;
  }
  if (key == CODED && keyCode == UP) {
    paddle[1].up = true;
    paddle[1].down = false;
  }
  if (key == CODED && keyCode == DOWN) {
    paddle[1].up = false;
    paddle[1].down = true;
  }
}

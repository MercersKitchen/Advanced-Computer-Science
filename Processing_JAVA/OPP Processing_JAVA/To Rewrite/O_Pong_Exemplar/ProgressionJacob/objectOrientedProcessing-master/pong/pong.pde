private Boolean start = false;
private Ball[] ball = new Ball[Ball.getBallCount()];
public leftPaddle[] left = new leftPaddle[leftPaddle.getPaddleCount()];
public rightPaddle[] right = new rightPaddle[rightPaddle.getPaddleCount()];
public Firework [] firework = new Firework [20];

public static int [] scoreNum = new int [2];

public PFont font;

public void setup() {
  size(1000, 900);
  screenSizeChecker();
  ellipseMode(RADIUS);


  font = createFont("Times New Roman", 16);
  textFont(font, 36);
  
  createBall();
  createPaddle();
  for (int i =0; i < firework.length; i++) {
    firework[i] = new Firework(-10000, -10000);
  }
}

public void draw() {
  startStop();

  if (start == true) {
    background(146);
    for (int i = 0; i < firework.length; i++) {
      firework[i].display();
      firework[i].step();
    }
    fill(255, 0, 0);
    for (int i = 0; i < ball.length; i ++) {
      ball[i].move();
      ellipse(ball[i].getX(), ball[i].getY(), ball[i].getRadius(), ball[i].getRadius());
      fill(0, 255, 0);
    }
    for (int i = 0; i < left.length; i++) {
      fill(255);
      left[i].paddleMove();
      right[i].paddleMove();
      rect(left[i].getX(), left[i].getY(), left[i].getWidth(), left[i].getHeight());
      rect(right[i].getX(), right[i].getY(), right[i].getWidth(), right[i].getHeight());
    }
    text(scoreNum[0], 100, 100);
    text(scoreNum[1], 890, 100);
  }
}

public void keyPressed() {
  if (key == 'w' || key == 'W') {
    Ball.keys[0] = true;
  } 
  if (key == 's' || key == 'S') {
    Ball.keys[1] = true;
  }
  if (keyCode == UP) {
    Ball.keys[2] = true;
  }
  if (keyCode == DOWN) {
    Ball.keys[3] = true;
  }
}
public void keyReleased() {
  if (key == 'w' || key =='W') {
    Ball.keys[0] = false;
  }
  if (key == 's' || key == 'S') {
    Ball.keys[1] = false;
  }
  if (keyCode == UP) {
    Ball.keys[2] = false;
  }
  if (keyCode == DOWN) {
    Ball.keys[3] = false;
  }
}

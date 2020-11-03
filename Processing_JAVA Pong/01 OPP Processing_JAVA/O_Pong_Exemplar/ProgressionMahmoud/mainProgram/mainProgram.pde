private Paddle paddleLeft;
private Paddle paddleRight;
private Ball ball;
Firework[] firework = new Firework[20]; 
private Wall wallTop;
private Wall wallBottom;
private CenterLine centerline;
public boolean paused = false;
public boolean cheat = false;
public boolean cheat2 = false;
public boolean Menu = false;
public boolean screen = true;
public boolean DarkMode = false;
public PFont f;

public void setup() {
  size(1050, 750);
  ball = new Ball(width/2, height/2, 25);
  ball.speedX = random(4, 6);
  quitButtonSetup ();
  ball.speedY = random(-3, 3);
   for (int i=0; i<firework.length; i++) {
    firework[i] = new Firework(width, height);
  }
  paddleLeft = new Paddle(15, height/2, 15, 150);
  paddleRight = new Paddle(width-15, height/2, 15, 150);
  wallTop = new Wall(0, 650/26, width, 650/130);
  wallBottom = new Wall(0, 650/1.25, width, 650/130);
  for (int i = 30; i < 520; i = i+50) {
    centerline = new CenterLine(width*1/2, i, 10, 40);
  }
  //printArray(PFont.list());
  f = createFont("Arial Black", 285);
  textFont(f);
}


public void draw() {
 background(0);
  ball.move();
  ball.display();
  quitButtonDraw();
  ball_movment();
  collision();
  paddle_movment();
  paddleLeft.move();
  paddleLeft.display();
  paddleRight.move();
  for (int i=0; i<firework.length; i++) {
    firework[i].step();
    firework[i].bounce();
    firework[i].draw();
  }
  paddleRight.display();
  wallTop.display();
  centerline.display();
  wallBottom.display();
  scoreboard();
  StartScreen();
}

public void keyPressed () {
  if (keyCode == UP) {
    paddleRight.speedY=-7;
  }
  if (keyCode == DOWN) {
    paddleRight.speedY=7;
  }
  if (key == 'w') {
    paddleLeft.speedY=-7;
  }
  if (key == 's') {
    paddleLeft.speedY=7;
  }
  if (key == 'm') {
    //Menu();
  }
  if (key == 'u') {
    cheat = true;
  }
  if (key == 'j') {
    cheat2 = true;
  }
  if (key == 'm') {
    cheat2 = false;
  }
  if (key == 'v') {
    cheat = false;
  }
  if (key == 'r') {
    Reset();
  }
  paused();
  quitButtonKeyPressed ();
}

void mousePressed () {
  if (mousePressed == true) {
    StartScreen = false;
    loop();
  }
  for (int i=0; i<firework.length; i++) {
    firework[i] = new Firework(width, height);
  }
  quitButtonMousePressed ();
}

Ball ball1 = new Ball(500, 250, ceil(random(20))+ 5, 3, 3);
Ball ball2 = new Ball(500, 250, ceil(random(20))+ 5, -3, 3);
Ball ball3 = new Ball(500, 250, ceil(random(20))+ 5, 3, -3);
Ball ball4 = new Ball(500, 250, ceil(random(20))+ 5, -3, -3);
Ball ball5 = new Ball(500, 250, ceil(random(20))+ 5, -5, -5);

Paddle paddle1 = new Paddle(10,200);
Paddle paddle2 = new Paddle(980,200);

Score Score1 = new Score();
Score Score2 = new Score();

public boolean play = false;
public boolean reset = false;

public int c;
public int c2;

void setup() {
  
  size(1000, 500);

  println("MAXIMUM WIDTH : "+ displayWidth + " AND MINIMUM WIDTH : 500");
  println("MaXIMUM HEIGHT : " + displayHeight + " AND MINIMUM HEIGHT : 500 ");

  if (width > displayWidth || height > displayHeight || width < 500 || height < 500) {
    exit();
    println("ERROR : SCREEN SIZE INVALID");
    println("YOUR CURRENT WIDTH IS : " + width + " -AND- YOUR CURRENT HEIGHT IS : " + height);
  }
}
boolean delayTime = false;
void draw() {
  this.c = color( int(random(255)), int (random(255)),int (random(255)));
  this.c2 = color( int(random(255)), int (random(255)),int (random(255)));
  background(0);
  textSize(100);
  fill(c);
  text("Ping Pong",width*1/4,height/2);
  if (delayTime) {
    delay(300);
  }
  fill(c2);
  textSize(25);
  text("Press Space To Play", width*1/2-125,300);
  
  if (play){
    delayTime = false;
    fill(255);
  background(0);
  paddle1.Step();
  paddle2.Step();
  ball1.step();
  ball2.step();
  ball3.step();
  ball4.step();
  ball5.step();
  Score1.step();
  
  } else {
    delayTime = true;
  }
  if (reset) {
    play=true;
  }
}

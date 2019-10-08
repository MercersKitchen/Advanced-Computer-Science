class Firework {
  //Variables
  float x;
  float y;
  color c;
  float diameter;
  float xSpeed;
  float ySpeed;
  float gravity;
  //static int count = 25; //Static number for amount of firworks

  //Constructor
  Firework (float width, float height) {
    //X&Y are values when Pong Ball scores
    this.x = mouseX; //random (width); actually needs to be the X&Y of the score
    println(x);
    this.y = mouseY; //random (height); actually needs to be the X&Y of the score
    println(y);
    this.c = color( int(random(255)), int(random(255)), int(random(255)) );
    println(c);
    this.diameter = random(width*1/25);
    println (diameter);
    this.xSpeed = random(-5, 5);
    this.ySpeed = random(-5, 5);
    gravity = 0.5;
  } //End of Constructor

  //Procedures or Functions
  void draw() {
    fill(c);
    ellipse(x, y, diameter, diameter);
  }

  void step() {
    //Increasing x & y by their speeds so the ball moves
    x += xSpeed;
    y += ySpeed;

    //Changing Gravity of the firework, not changing the origonal position
    //Important concept of spawning, even though math works
    ySpeed += gravity;
  }


  //Getter and Setters
}

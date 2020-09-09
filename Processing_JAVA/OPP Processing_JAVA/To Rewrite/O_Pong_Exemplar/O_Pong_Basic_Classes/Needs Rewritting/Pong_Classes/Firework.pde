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
  Firework (float newX, float newY) {
    //X&Y are values when Pong Ball scores
    this.x = newX; //random (width); actually needs to be the X&Y of the score
    if (newX < width*1/4) {
      this.xSpeed = random(1, 5); //Goal on Left side, increasing all X Values
    } else {
      this.xSpeed = random(-1, -5); //Goal on Rigth side, decreasing all X Values
    }
    this.y = newY; //random (height); actually needs to be the X&Y of the score
    this.c = color( int(random(255)), int(random(255)), int(random(255)) );
    this.diameter = random(width*1/25);
    this.ySpeed = random(-5, 5);
    gravity = 0.5;
  } //End of Constructor

  //Procedures or Functions
  void fireWorkDraw() {
    fill(c);
    ellipse(x, y, diameter, diameter);
  }

  void fireWorkStep() {
    //Increasing x & y by their speeds so the ball moves
    x += xSpeed;
    y += ySpeed;
    //Changing Gravity of the firework, not changing the origonal position
    //Important concept, even though math works
    ySpeed += gravity;
  }

  //Getter and Setters
} //End of Class Firework

class Ball {
  //Variable Declaration & Assignment, notice that inside object, variable are not Class-Referenced by delimiter
  float x = 50;
  float y = 100;
  float diameter = 20;
  color colour = color(0, 255, 0);
  float xSpeed = 1;
  float ySpeed = 1;

  void step () {
    //Next Step of Ball
    x += xSpeed;
    y += ySpeed;

    //Collision with Canvas Boundaries, fix for radius of ball
    if (x+xSpeed < 0 || x+xSpeed > width) { 
      xSpeed *= -1; //Alternating Geomteric Sequence
    }
    if (y+ySpeed < 0 || y+ySpeed > height) {
      ySpeed *= -1; //Alternating Geomteric Sequence
    }
  } //End of step
  //
  void draw () {
    fill(colour);
    ellipse(x, y, diameter, diameter);
  } //End of draw()
  //
} //End of Class Ball

class Ball {
  //Variable Declaration & Assignment, notice that inside object, variable are not Class-Referenced by delimiter
  float x;
  float y;
  float diameter;
  color colour;
  float xSpeed;
  float ySpeed;

  Ball (float x, float y, color myColour) { //Constructor
    this.x = x;
    this.y = y;
    diameter = 20;
    colour = myColour;
    xSpeed = 1;
    ySpeed = 1;
  } //End of Constructor

  void step () {
    //Next Step of Ball
    x += xSpeed;
    y += ySpeed;

    //Collision with Canvas Boundaries
    if (x+xSpeed < 0 || x+xSpeed > width) { 
      xSpeed *= -1; //Alternating Geomteric Sequence
    }
    if (y+ySpeed < 0 || y+ySpeed > height) {
      ySpeed *= -1; //Alternating Geomteric Sequence
    }
  } //End of step
} //End of Class Ball

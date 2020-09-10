class Ball {
  //An Object Is
  //Variable Declaration & Assignment, notice that inside object, variable are not Class-Referenced by delimiter
  float x;
  float y;
  float diameter;
  color colour; //Hexidecimal, purple
  float xSpeed;
  float ySpeed;

  Ball (float x, float y, color myColour) { //Constructor
    this.x = x;
    this.y = y;
    diameter = 20;
    colour = myColour;
    xSpeed = 1;
    ySpeed = 1;
  }

  void step() { //Next Step of Ball
    x += xSpeed;
    y += ySpeed;

    //Collision with Canvas Boundaries
    if ( x-diameter/2 < 0*width || x+diameter/2 > width ) {
      xSpeed *= -1;
    }
    if ( y-diameter/2 < 0*height || y+diameter/2 > height ) {
      ySpeed *= -1;
    }
  } //End of step()
} //End of Ball Class

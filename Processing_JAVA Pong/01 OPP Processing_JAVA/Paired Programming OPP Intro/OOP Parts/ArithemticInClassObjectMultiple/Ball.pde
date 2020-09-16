class Ball {
  float x;
  float y;
  float diameter;
  color colour;
  float xSpeed;
  float ySpeed;

  Ball (float x, float y, float diameter, color colour) { // Constructor
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.colour = colour;
    xSpeed = 1;
    ySpeed = 1; 
  } //End Constructor

  void step () {
    x += xSpeed;
    y += ySpeed;
  } // End of step()

  void bounce () { //must pass width, 500, and height, 300
    if (x-diameter*1/2 < 0 || x+diameter*1/2 > 500) {
      xSpeed *= -1;
    }
    if (y-diameter*1/2 < 300*0 || y+diameter*1/2 > 300) {
      ySpeed *= -1;
    }
  } // End of bounce()

  void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
  } //End of draw()
}

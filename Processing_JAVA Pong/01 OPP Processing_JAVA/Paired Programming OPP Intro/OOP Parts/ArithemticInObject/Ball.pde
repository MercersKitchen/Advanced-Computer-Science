class Ball {
  float x = 50;
  float y = 100;
  float diameter = 20;
  color colour = color(0, 255, 0);
  float xSpeed = 1;
  float ySpeed = 1;

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

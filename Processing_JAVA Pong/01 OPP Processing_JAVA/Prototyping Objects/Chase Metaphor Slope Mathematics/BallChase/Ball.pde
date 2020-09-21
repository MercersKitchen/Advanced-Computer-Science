class Ball {
  float x;
  float y;
  float diameter;
  color colour;

  float targetX;
  float targetY;

  Ball(float xParameter, float yParameter, float diameterParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.diameter = diameterParameter;
    //Random Ball Color Selector
    int r = abs ( int (random(0-256))); // Truncate the decimal by casting
    // random(256)
    int b = abs ( int (random(0-256)));
    int g = abs ( int (random(0-256)));
    colour = color(r, b, g);
    targetX = xParameter;
    targetY = yParameter;
  }//End Constructor

  void step() {
    if (x < targetX) {
      x++;
    } else {
      x--;
    }
    if (y < targetY) {
      y++;
    } else {
      y--;
    }
  }//End step()

  void draw () {
    fill (colour);
    ellipse(x, y, diameter, diameter);
  }
}

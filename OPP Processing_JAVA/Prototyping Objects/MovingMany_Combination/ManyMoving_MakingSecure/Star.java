class Star {
  private int x;
  int y;
  int radius;

  int targetX; //Since mouseX keyword, should be public everywhere
  int targetY;

  static int starCount = 50; //Number of stars or Pong Balls that will be drawn
  static int maxRadius = 20; //can this be a ratio of width with error checking of different geometery

  Star(int x, int y, int radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this. targetX = x; //starting value must match initial instance value
    this. targetY = y; //starting value must match initial instance value
  } //End of Constructor

  //Moving Each Ball
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
  } //End of step
  
  /*
   public int getX() {
    return x;
  }
  */
  
} //End of Start Class

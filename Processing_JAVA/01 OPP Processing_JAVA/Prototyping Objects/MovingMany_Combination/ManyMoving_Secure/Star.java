public class Star {
  private int x;
  private int y;
  private int radius;

  public int targetX; //Since mouseX keyword, should be public everywhere
  public int targetY;

  public static int starCount = 50; //Number of stars or Pong Balls that will be drawn
  public static int maxRadius = 20; //can this be a ratio of width with error checking of different geometery

  public Star(int x, int y, int radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.targetX = x; //starting value must match initial instance value
    this.targetY = y; //starting value must match initial instance value
  } //End of Constructor

  //Moving Each Ball
  public void step() {

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

  public int getX() {
    return x;
  }
  
  public int getY() {
    return y;
  }
  
  public int getRadius() {
    return radius;
  }
   
} //End of Start Class

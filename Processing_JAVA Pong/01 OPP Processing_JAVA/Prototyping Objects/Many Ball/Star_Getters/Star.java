class Star {
  private float x;
  private float y;
  private float radius;
  
  private static int starCount = 50; //Number of stars or Pong Balls that will be drawn
  private static int maxRadius = 20; //can this be a ratio of width with error checking of different geometery

  public Star(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  } //End of Constructor

  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
  public static int getStarCount() {
    return starCount;
  }
  public static float getMaxRadius() {
    return maxRadius;
  }
} //End of Start

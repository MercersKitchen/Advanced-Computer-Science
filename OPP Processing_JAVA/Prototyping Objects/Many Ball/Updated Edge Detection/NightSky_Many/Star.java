class Star {
  private float x;
  private float y;
  private float radius;
  
  public static int starCount = 20; // Number of starts or Pong Balls that will be drawn
  public static int maxRadius = 20; 
  // can this be a ratio of width with error checking of different geometeries

  Star(float xParameter, float yParameter, float radiusParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.radius = radiusParameter;
  } //End of Constructor

  // Getters
  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
}

class Ball {
  private float x;
  private float y;
  private float diameter;

  private float targetX;
  private float targetY;

  Ball(float xParameter, int yParameter, float diameterParameter) { // Notice float vs. int; casting issue
    this.x = xParameter;
    this.y = yParameter; 
    this.diameter = diameterParameter;

    targetX = xParameter;
    targetY = yParameter;
  } // End of Constructor

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
  } // End step()

  public float getX() {
    return x;
  }

  public float getY() {
    return y;
  }
  
  public float getDiameter() {
    return diameter;
  }
  
  public float getTargetX() {
    return targetX;
  }
  
  public float getTargetY() {
    return targetY;
  }
 
} // End of the Ball Class

class Ball {
  private int x; //Modifier changed from default, private only to class Ball
  private int y; //Modifier changed from default, private only to class Ball
  private int diameter;

  // Private also used before method's return type

  public int targetX; //Since mouseX keyword, should be public everywhere
  public int targetY;

  Ball(int x, int y, int diameter) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    targetX = x; //starting value must match initial instance value
    targetY = y; //starting value must match initial instance value
  } //End of Constructor

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

  public int getX() { //Created for Private Modifier, security reasons
    return x;
  }
  public int getY() { //Created for Private Modifier, security reasons
    return y;
  }
  public int getDiameter() { //Created for Private Modifier, security reasons
    return diameter;
  }
  
} // End of class Ball

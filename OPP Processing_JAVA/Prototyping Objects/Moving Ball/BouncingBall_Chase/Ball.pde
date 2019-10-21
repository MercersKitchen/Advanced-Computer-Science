class Ball {
  int x; //Value supplied through instance
  int y; //Value supplied through instance
  int diameter;

  int targetX;
  int targetY;

  Ball(int x, int y, int diameter) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    targetX = x; //starting value must match initial instance value
    targetY = y; //starting value must match initial instance value
  } //End of Constructor

  void step() {
    Boolean XSmaller = false;
    Boolean YSmaller = false;
    float run = x-targetX;
    if (run < 0) {
      run = run * -1;
    }
    float rise = y-targetY;
    if (rise < 0) {
      rise = rise * -1;
    }
    float smallest;
    float largest;
    float step;
    if (run >= rise) {
      largest = run;
      smallest = rise;
      YSmaller = true;
    } else {
      smallest = run;
      largest = rise;
      XSmaller = true;
    }
    step = largest/smallest;

    if (x < targetX) {
      if (XSmaller == true) {
        x++;
      } else {
        x = int(float(x) + step);
      }
    } else {
      if (XSmaller == true) {
        x--;
      } else {
        x = int(float(x) - step);
      }
    }

    if (y < targetY) {
      if (YSmaller == true) {
        y++;
      } else {
        y = int(float(y) + step);
      }
    } else {
      if (YSmaller == true) {
        y--;
      } else {
        y = int(float(y) - step);
      }
    }
  } //End of step
} // End of class Ball

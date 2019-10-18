class Ball {
  float x;
  float y;
  float diameter;
  
  float targetX;
  float targetY;

  Ball(float xParameter, int yParameter, float diameterParameter) { // Notice float vs. int; casting issue
    this.x = xParameter;
    this.y = yParameter; 
    this.diameter = diameterParameter;
    
    targetX = xParameter;
    targetY = yParameter;
    
  } // End of Constructor

  void step() {
    if (x < targetX) {
      x--;
    } else {
      x++;
    }

    if (y < targetY) {
      y--;
    } else {
      y++;
    }
    
  } // End step()
} // End of the Ball Class

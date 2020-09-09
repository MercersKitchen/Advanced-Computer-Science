class Ball {
  private float x, y, diameter;
   float targetX, targetY;


  Ball(float xParameter, float yParameter, float diameterParameter ) { // Populate variables to create an object
    this.x = xParameter;
    this.y = yParameter;
    this.diameter = diameterParameter;

    targetX = xParameter;
    targetY= yParameter;
  }//End of constructor
  void step() {
    if (x < targetX) {
      x +=  (targetX - x)/20;
    } else {
      x -= (x - targetX)/20;
    }
    if (y <targetY) {
      y+=  (targetY-y)/20 ;
    } else {
      y-= (y-targetY)/20 ;
    }// Geometric code by remar and amir
  }//End step
public float getX() {
    return x;
  }
public  float getY() {
    return y;
  }
  public float getDiameter(){
    return diameter;
  }
}//End of Class

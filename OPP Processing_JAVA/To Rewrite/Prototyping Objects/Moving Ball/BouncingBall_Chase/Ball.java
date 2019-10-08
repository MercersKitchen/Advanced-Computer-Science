class Ball {
  int x; //Value supplied through instance
  int y; //Value supplied through instance
  int diameter;
  
  int targetX;
  int targetY;
  
Ball(int x, int y, int diameter){
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

} // End of class Ball

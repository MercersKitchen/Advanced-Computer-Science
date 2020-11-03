  
public class Ball {
  private float x;
  private float y;
  private float speedX;
  private float speedY;
  final private float diameter;
  final private color c;
  
  // Constructor method
  public Ball(float tempX, float tempY, float tempDiameter) {
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
    speedX = 0;
    speedY = 0;
    c = (225); 
  }
  
  private void move() {
    // Add speed to location
    y = y + speedY;
    x = x + speedX;
    if(mousePressed == true) {
    autoScore();
    fastBall();
    }
  }
  
  private void display() {
    fill(c);
    ellipse(x,y,diameter,diameter);
  }

  //functions to help with collision detection
  float left(){
    return x-diameter/2;
  }
  float right(){
    return x+diameter/2;
  }
  float top(){
    return y-diameter/2;
  }
  float bottom(){
    return y+diameter/2;
  }
 
}

public void screenChecker () {
if (width<height) { 
println ("Please change to landscape mode to play game");
exit();
  } else {println ("Good geometry, play the game.");
  }
}

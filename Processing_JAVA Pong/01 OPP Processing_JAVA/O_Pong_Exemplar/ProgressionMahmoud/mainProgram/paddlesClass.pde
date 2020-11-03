public class Paddle {

  private float x;
  private float y;
  final private float w;
  final private float h;
  private float speedY;
  private float speedX;
  final private color colour;
  final private color colour2;

  Paddle(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    speedY = 0;
    speedX = 0;
    colour=(#0000FF);
    colour2=(#FF0000);
  }

  private void move() {
    y += speedY;
    x += speedX;
  }

  private void display() {
    fill(colour);
    rect(x-w/2, y-h/2, w, h);
    
     fill(colour2);
    rect(x-w/2, y-h/2, w, h);
  } 

  float left() {
    return x-w/2;
  }
  float right() {
    return x+w/2;
  }
  float top() {
    return y-h/2;
  }
  float bottom() {
    return y+h/2;
  }
}

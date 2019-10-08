final class Paddle extends Shape{
  private float paddleWidth;
  private float paddleHeight;
  private float paddleSpeed = 5;
  private color c;

  Paddle(float x, float y, float paddleWidth, float paddleHeight, color c) {
    super(x, y);
    this.paddleWidth = paddleWidth;
    this.paddleHeight = paddleHeight;
    this.c = c;
  }

  void draw() {
    fill(c);
    rect(x, y, paddleWidth, paddleHeight);
  }

  void stepUp() {
    y -= paddleSpeed;
    if (y <= 0) {
      y = 0;
    }
  }
  void stepDown() {
    y += paddleSpeed;
    if ( y >= 900 - paddleHeight) {
      y = 900 - paddleHeight;
    }
  }
  
  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getWidth() {
    return paddleWidth;
  }
  public float getHeight() {
    return paddleHeight;
  }
}

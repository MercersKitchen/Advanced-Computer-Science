class leftPaddle {
  private static float x;
  private static float y;
  private static float paddleWidth;
  private static float paddleHeight;
  private float speed;

  private static int paddleCount = 1;

  public leftPaddle(float x, float y, float paddleWidth, float paddleHeight, float speed) {
    this.x = x;
    this.y = y;
    this.paddleWidth = paddleWidth;
    this.paddleHeight = paddleHeight;
    this.speed = speed;
  }

  public void paddleMove() {
    if (Ball.keys[0]) {
      y -= speed;
    } else if (Ball.keys[1] == true) {
      y += speed;
    }

    if (y <= 0) {
      y = 0;
    }
    if (y + paddleHeight >= 900) {
      y = 900 - paddleHeight;
    }
  }

  public static float getX() {
    return x;
  }
  public static float getY() {
    return y;
  }
  public static float getWidth() {
    return paddleWidth;
  }
  public static float getHeight() {
    return paddleHeight;
  }
  public static int getPaddleCount() {
    return paddleCount;
  }
}

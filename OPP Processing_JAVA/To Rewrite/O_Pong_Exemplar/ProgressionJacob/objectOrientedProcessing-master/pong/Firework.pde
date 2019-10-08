class Firework {
  float x;
  float y;
  color c;
  float radius;
  float xSpeed;
  float ySpeed;
  float gravity;

  float maxRadius = 10;
  int ballCount = 10;

  public Firework(float x, float y) {
    this.x = x;
    this.y = y;
    this.c = color(int(random(255)), int(random(255)), int(random(255)));
    this.radius = random(maxRadius);
    this.xSpeed = random(-5, 5);
    this.ySpeed = random(-5, 5);
    this.gravity = 0.5;
  }

  void display() {
    fill(c);
    ellipse(x, y, radius, radius);
    if (ball[0].getX() < leftPaddle.getX()) {
      for (int i = 0; i < firework.length; i++) {
        firework[i] = new Firework(ball[0].getX(), ball[0].getY());
      }
    }    
    if (ball[1].getX() < leftPaddle.getX()) {
      for (int i = 0; i < firework.length; i++) {
        firework[i] = new Firework(ball[1].getX(), ball[1].getY());
      }
    }    
    if (ball[0].getX() > rightPaddle.getX() + rightPaddle.getWidth()) {
      for (int i = 0; i < firework.length; i++) {
        firework[i] = new Firework(ball[0].getX(), ball[0].getY());
      }
    }    
    if (ball[1].getX() > rightPaddle.getX() + rightPaddle.getWidth()) {
      for (int i = 0; i < firework.length; i++) {
        firework[i] = new Firework(ball[1].getX(), ball[1].getY());
      }
    }
  }
  void step() {
    x += xSpeed;
    y += ySpeed;
    ySpeed += gravity;
  }

  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getColour() {
    return c;
  }
  public float getXSpeed() {
    return xSpeed;
  }
  public float getYSpeed() {
    return ySpeed;
  }
  public float getRadius() {
    return radius;
  }
}

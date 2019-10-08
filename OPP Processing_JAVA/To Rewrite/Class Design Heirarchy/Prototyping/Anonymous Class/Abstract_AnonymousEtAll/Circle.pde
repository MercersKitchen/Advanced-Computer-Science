class Circle extends Shape {

  private float radius;
  private color c;

  private Circle(float x, float y, float radius, color c) {
    super(x, y);
    this.radius = radius;
    this.c = c;
  }

  public void draw() {
    fill(c);
    ellipse(x, y, radius, radius);
  }

  private void step() {
    y++;
  }
}

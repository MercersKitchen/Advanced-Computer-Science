class Ball {
  float x = 50;
  float y = 100;
  float diameter = 20;
  color colour = color(0, 255, 0);
  float xSpeed = 1;
  float ySpeed = 1;

  void step () {
    x += xSpeed;
    y += ySpeed;
  }
}

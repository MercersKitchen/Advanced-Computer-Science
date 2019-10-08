class Particle {
  float x = 250;
  float y = 250;
  float deltaX = 5;
  float deltaY = -5;
  float radius = 10;
  float gravity = .5;

  void reset() {
    x = mouseX;
    y = mouseY;
    deltaX = 5;
    deltaY = -5;
  }

  void step() {
    //increase ySpeed by gravity so the ball falls faster over time
    deltaY += gravity;

    //increment x and y by their speeds so this Particle moves
    x += deltaX;
    y += deltaY;
  }

  void draw() {
    //draw this Particle
    fill(255, 0, 0);
    ellipse(x, y, radius, radius);
  }
}
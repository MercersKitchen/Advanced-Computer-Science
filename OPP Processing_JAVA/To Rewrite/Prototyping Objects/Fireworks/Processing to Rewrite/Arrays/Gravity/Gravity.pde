float gravity = .5;

float x = 250;
float y = 250;
float deltaX = 5;
float deltaY = -5;
float radius = 10;

void setup() {
  size(500, 500);
}

void draw() {

  background(0); //Black on a grey scale

  //increase ySpeed by gravity so the ball falls faster over time
  deltaY += gravity;

  //increment x and y by their speeds so the ball moves
  x += deltaX;
  y += deltaY;

  //draw the ball
  fill(255, 0, 0);
  ellipse(x, y, radius, radius);
}

//reset all the particles
void mousePressed() {
  x = mouseX;
  y = mouseY;
  deltaX = 5;
  deltaY = -5;
}
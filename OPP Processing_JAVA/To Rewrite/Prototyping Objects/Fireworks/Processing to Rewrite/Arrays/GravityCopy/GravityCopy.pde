Particle particle = new Particle();

void setup() {
  size(500, 500);
};

//reset all the particles
void mousePressed() {
  particle.reset();
}

void draw() {
  background(0);
  particle.step();
  particle.draw();
}
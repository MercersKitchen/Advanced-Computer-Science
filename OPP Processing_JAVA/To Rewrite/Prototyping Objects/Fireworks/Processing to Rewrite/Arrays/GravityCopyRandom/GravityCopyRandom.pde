Particle particle1 = new Particle();
Particle particle2 = new Particle();
Particle particle3 = new Particle();

void setup() {
  size(500, 500);
}

//reset all the particles
void mousePressed() {
  particle1.reset();
  particle2.reset();
  particle3.reset();
}

void draw() {
  background(0);
  
  particle1.step();
  particle2.step();
  particle3.step();
  
  particle1.draw();
  particle2.draw();
  particle3.draw();
}
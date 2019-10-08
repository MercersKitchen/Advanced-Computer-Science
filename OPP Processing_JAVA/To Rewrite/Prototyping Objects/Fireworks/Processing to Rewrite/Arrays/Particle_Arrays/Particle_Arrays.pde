Particle[] particles = new Particle[50];

void setup() {
  size(500, 500);

  for (int i=0; i < particles.length; i++) {
    particles[i] = new Particle();
  }
}

void draw() {
  background(0); //Black on a grey scale

  for (int i=0; i < particles.length; i++) {
    particles[i].step(); // Calling all class varaibles
  }
  for (int i=0; i < particles.length; i++) {
    particles[i].draw(); // Calling all class varaibles
  }
}

//reset all the particles
void mousePressed() {
  for (int i=0; i < particles.length; i++) {
    particles[i].reset(); // Calling all class varaibles
  }
}

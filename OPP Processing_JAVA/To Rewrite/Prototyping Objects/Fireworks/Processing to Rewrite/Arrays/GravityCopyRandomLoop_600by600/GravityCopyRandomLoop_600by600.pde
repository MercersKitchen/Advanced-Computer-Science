Particle[] particles = new Particle[25];

void setup() {
  size(500, 500);
  
  //put a new Particle in each index of the array
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Particle();
  }
}

//reset all the particles
void mousePressed() {
  for (int i = 0; i < particles.length; i++) {
    particles[i].reset();
  }
}

void draw() {
  background(0);

  //iterate over each particle and call the step() function of each
  for (int i = 0; i < particles.length; i++) {
    particles[i].step();
  }

  //iterate over each particle and call the draw() function of each
  for (int i = 0; i < particles.length; i++) {
    particles[i].draw();
  }
}

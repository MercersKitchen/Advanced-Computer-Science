//Must create main program to handle class, basic level
Firework[] fireworks = new Firework[25]; //Needs to include static variable

//Global Variables

void setup() {
  size(500, 600);
  
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Firework(width, height);
  }
  
}

void draw() {
  background(255);
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i].step(); //Calculate Arithmetic
    fireworks[i].draw(); //Draw to the Canvas
  }
}

void mouseClicked() {
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Firework (width, height);
  }
}

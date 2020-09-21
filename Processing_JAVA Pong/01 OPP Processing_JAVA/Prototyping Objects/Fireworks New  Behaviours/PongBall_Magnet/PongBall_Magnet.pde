// 3 Ball Advantage

//Global Objects
//Exploding Firework List
Firework[] fireworks = new Firework[3]; //Needs to include a Static Variable

//Global Variables

void setup() {
  size (500, 600);
  //fullScreen();
  // Screen Size Checker - see previous programs
  for (int i = 0; i < fireworks.length; i++) {
    fireworks[i] = new Firework(width, height);
  }
} // End of setup()

void draw() {
  background(0); //Black on Greyscale, variable memory size
  // Remeber to include Dark Mode

  for (int i = 0; i < fireworks.length; i++) {
  fireworks[i].edgeDetection();
  fireworks[i].move();
  fireworks[i].classDraw();
  }
  
} // End of draw()

void mouseClicked() {
  for (int i = 0; i < fireworks.length; i++) {
    fireworks[i] = new Firework(width, height);
  }
} // End of mouseClicker()

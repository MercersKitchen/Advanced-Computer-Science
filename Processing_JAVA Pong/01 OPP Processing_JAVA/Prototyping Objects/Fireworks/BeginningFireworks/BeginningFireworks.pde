// Exploding Firework Program

//Global Objects
Firework myFirework = new Firework(50, 100, #FFF705);
Firework yourFirework = new Firework(75, 75, #C805FF);

//Global Variables

void setup() {
  size (500, 600);
  //fullScreen();
  // Screen Size Checker - see previous programs
} // End of setup()

void draw() {
  background(0); //Black on Greyscale, variable memory size
  // Remeber to include Dark Mode
  
  myFirework.edgeDetection();
  myFirework.move();
  myFirework.classDraw();
  
  yourFirework.edgeDetection();
  yourFirework.move();
  yourFirework.classDraw();
  
} // End of draw()

void mouseClicked() {
} // End of mouseClicker()

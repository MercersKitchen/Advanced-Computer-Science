// Global Variables
Boolean start = false; //Space bar to start

// Objects
Star stars = new Star(250, 250, 25);

void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);
} // End of setup()

void draw() {
  startStop();

  if (start == true) {
    background (0); //Night Time
    ellipse(stars.getX(), stars.getY(), stars.getRadius(), stars.getRadius());
  } // End of draw()
} // End of Main

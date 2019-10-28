/* To Do List
- draw edge detector (radius too close to edge, like bounce)
*/

// Global Variables
Boolean start = false; //Space bar to start

// Objects
Star[] stars = new Star[Star.starCount]; //Size of List, must be getter

void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);
  createStars(); // Constructor
} // End of setup()

void draw() {
  startStop();

  if (start == true) {
    background (0); //Night Time
    ellipse(stars[1-Star.starCount].getX(), stars[1-Star.starCount].getY(), stars[1-Star.starCount].getRadius(), stars[1-Star.starCount].getRadius());
  }
} // End of draw()

void mouseClicked() {
  createStars();
}

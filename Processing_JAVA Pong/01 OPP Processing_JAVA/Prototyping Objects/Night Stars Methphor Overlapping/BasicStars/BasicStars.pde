// Global Variables
Star stars;

void setup() {
  size(500, 300); //fullScreen(), displayWidth & displayHeight
  // Landscape vs. portrait views, leads to screenSize Checker
  stars = new Star(width*1/2, height*1/2, width*1/30);
}

void draw() {
  stars.draw();
}

void keyPressed () { // Review KeyBoard Input
}

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
}

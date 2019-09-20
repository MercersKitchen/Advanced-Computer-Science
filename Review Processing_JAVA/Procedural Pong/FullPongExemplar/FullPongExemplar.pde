//Global Variables
Boolean start = false;

void setup() {
  //fullScreen(); //Student Only
  size(700, 500); //Teacher Only
  textSetup();
  GUI_Setup();
  
}

void draw() {
  if (start == true) {
  }
}

void keyPressed() {
  if (key == 'q' || key == 'Q') {
    exit();
  }
}

void mousePressed() {
}

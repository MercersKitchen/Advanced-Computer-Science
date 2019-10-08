Boolean startKeyboard = false;
Boolean startMouse = false;
Star[] stars = new Star[Star.starCount]; //only varaibles is how many stars to draw

void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);

  //Need drawing of ball before mouseClick(), two lines of the same code
  createStars();

  println ("Remember to press the SPACEBAR to start the program");
} //End of setup()

void draw() {

  //Listener for Clicking on the Canvas to Activate Program
  if (mousePressed == true) {
    startMouse = true;
  }

  //Must click on the Canvas to Start the Program
  if (startMouse == true) {
    background(0);
  }

  startStop(); //Update Start Variable or Quit Program

  //Must press the SPACEBAR to start the Program
  if (startKeyboard==true) {
    for (int i = 0; i < stars.length; i++) {
      stars[i].step();
      ellipse(stars[i].x, stars[i].y, stars[i].radius, stars[i].radius);
    }
  } //End of startStop
} //End draw()

void mouseClicked() {
  //Listener for Keyboard Key to Start the Program
  if (startKeyboard == true) {
    createStars();
    for (int i = 0; i < stars.length; i++) {
      stars[i].targetX = mouseX; 
      stars[i].targetY = mouseY;
    }
  } //End of IF
} //End of mouseClicked()

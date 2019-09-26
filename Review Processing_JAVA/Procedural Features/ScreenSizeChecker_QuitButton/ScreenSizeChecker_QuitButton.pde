//Global Variables

void setup() {
  //fullScreen();
  size(351, 500);
  screenSizeChecker();
  textSetup();

  println("Start of Console");

  GUI_setup();

  // string, font, height, colour, AlignHorizontal, AlignVertical, rectX, rectY, rect_Width, rectHeight
  textDraw(quitButton, titleFont, height, #2C08FF, CENTER, TOP, width*4/numberOfButtons+buttonPaddingX, menuY+buttonPaddingY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight-2*buttonPaddingY); //Quit Button
}

void draw() {
  //println(fillQuitButton); //Test the hover over effect for mouseX and mouseY correctness
  quitButtonHover();
  quitButtonColorChange();
}

void mousePressed() {
  quitButtonPressed();
}

int numberOfButtons = 5;
float menuX;
float menuY;
float menuWidth;
float menuHeight;
float buttonPaddingX;
float buttonPaddingY;

void GUI_setup() {
  //Note: must case study buttons and percentage of overall screen in pixels
  menuX = width*0;
  menuY = height*0;
  menuWidth = width-1; //Adjust for single pixel border, not in percent
  menuHeight = height*1/10;
  buttonPaddingX = width*1/100;
  buttonPaddingY = height*1/100;
  //rect(menuX, menuY, menuWidth, menuHeight); //Menu
  rect(menuX+buttonPaddingX, menuY+buttonPaddingY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight-2*buttonPaddingY); //Dark Light Mode
  rect(width*1/numberOfButtons+buttonPaddingX, menuY+buttonPaddingY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight-2*buttonPaddingY); //Restart Button
  rect(width*2/numberOfButtons+buttonPaddingX, menuY+buttonPaddingY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight-2*buttonPaddingY); //Player 1 Score
  rect(width*3/numberOfButtons+buttonPaddingX, menuY+buttonPaddingY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight-2*buttonPaddingY); //Player 2 Score
  fill(yellow);
  rect(width*4/numberOfButtons+buttonPaddingX, menuY+buttonPaddingY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight-2*buttonPaddingY); //Quit
}

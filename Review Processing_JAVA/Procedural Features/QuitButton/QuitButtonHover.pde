color red = #FF0303;
color yellow = #FAFF03;
Boolean fillQuitButton = false;

void quitButtonHover() {
  if (mouseX > width*4/numberOfButtons+buttonPaddingX && mouseX < width*5/numberOfButtons-buttonPaddingX && mouseY > menuY+buttonPaddingY && mouseY < menuHeight-buttonPaddingY ) {
    fillQuitButton = true;
  } else {
    fillQuitButton = false;
  }
}

void quitButtonColorChange() {
  if ( fillQuitButton == true ) {
    fill(red);
    rect(width*4/numberOfButtons+buttonPaddingX, menuY+buttonPaddingY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight-2*buttonPaddingY); //Quit
  } else {
    fill(yellow);
    rect(width*4/numberOfButtons+buttonPaddingX, menuY+buttonPaddingY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight-2*buttonPaddingY); //Quit
  }
  textDraw(quitButton, titleFont, height, #2C08FF, CENTER, TOP, width*4/numberOfButtons+buttonPaddingX, menuY+buttonPaddingY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight-2*buttonPaddingY); //Quit Button
}

void quitButtonPressed() {
  if (mouseX > width*4/numberOfButtons+buttonPaddingX && mouseX < width*5/numberOfButtons-buttonPaddingX && mouseY > menuY+buttonPaddingY && mouseY < menuHeight-buttonPaddingY ) {
    exit();
  }
}

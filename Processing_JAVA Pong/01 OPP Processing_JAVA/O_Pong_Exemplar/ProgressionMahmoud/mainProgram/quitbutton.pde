float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
String quitButton;
PFont quitFont;
color Blue, red, quitButtonColour, quitButtonColourHoverOver;

void quitButtonSetup () {
  //quitFont = createFont ("Arial Black", height); // //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
  quitButtonX = width*15/16;
  quitButtonY = height*0;
  quitButtonWidth = width*1/16;
  quitButtonHeight = height*1/30;
  //
  quitButton = "X";
  Blue = #050FFA;
  red = #FF0009;
  quitButtonColour = Blue;
  quitButtonColourHoverOver = red;
}

void quitButtonDraw() {
  quitButtonHoverOver();
  //textDraw(quitButton, f, height, 0, CENTER, CENTER, width*15/16, height*0, width*1/16, height*1/30); //#2C08FF is blue
}

void quitButtonHoverOver() {
  if (mouseX>=width*15/16 && mouseX<=width && mouseY>=height*0 && mouseY <= quitButtonHeight) {
    fill(quitButtonColourHoverOver);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill(0);
  } else {
    fill(quitButtonColour);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill(0);
  }
}

void quitButtonMousePressed () {
  if (mouseX>=width*15/16 && mouseX<=width && mouseY>=height*0 && mouseY <= quitButtonHeight) {
    exit();
  }
}

void quitButtonKeyPressed () {
  if (key == CODED && key == 'Q' || key == 'q') {
    exit();
    println("Game has exited. Thank-you for playing.");
  }
}

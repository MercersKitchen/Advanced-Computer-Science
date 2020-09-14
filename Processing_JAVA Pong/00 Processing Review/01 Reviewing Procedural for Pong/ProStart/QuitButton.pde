float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
String quitButton;
PFont quitFont;
color yellow, red, quitButtonColour, quitButtonColourHoverOver;

void quitButtonSetup () {
  quitFont = createFont ("Harrington", height); // //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
  quitButtonX = width*15/16;
  quitButtonY = height*0;
  quitButtonWidth = width*1/16;
  quitButtonHeight = height*1/16;
  //
  quitButton = "X";
  yellow = #FAFF00;
  red = #FF0009;
  quitButtonColour = yellow;
  quitButtonColourHoverOver = red;
}

void quitButtonDraw() {
  quitButtonHoverOver();
  textDraw(quitButton, quitFont, height, 0, CENTER, CENTER, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight); //#2C08FF is blue
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

PFont titleFont;
//String[] fontList = PFont.list(); //To list all fonts available on system

String title;
float titleWidth;
float titleHeight;

String footer; 
float footerY;

void textSetup() {
  //printArray(fontList); //For listing all possible fonts to choose, then createFont

  titleFont = createFont ("Harrington", height); // //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  title= "Top45678901234567890122";
  titleWidth = width*1/2;
  titleHeight = height*1/10;

  footer = "Bottom";
  footerY = (height*9/10)-1;
}

//Exemplar VOID with Parameters
void textDraw(String string, PFont font, float height, color ink, int alignHorizontal, int alignVertical, float rectX, float rectY, float rectWidth, float rectHeight) {
  float fontSize = height;
  fill(ink); //Blue Ink, copied from Color Selector
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  
  //Reference to Text Calculator, autoformat the fontSize
  
  textFont(font, fontSize); //Change the number until it fits, largest font sizetextFont(titleFont, titleFontSize); //Change the number until it fits, largest font size //titleFontSize
  text(string, rectX, rectY, rectWidth, rectHeight);
  fill(255); //Reset to white for rest of the program
}

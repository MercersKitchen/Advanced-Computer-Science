//Global Varaibles
String title = "Wahoop!8901234";
PFont titleFont;
float rectTitleWidth;
float titleFontSize;


void setup() {
  //fullScreen(); //Student Only
  size(700, 500); //Teacher Only
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont()
  titleFont = createFont("Harrington", 55); //Must also Tools / Create Font / Find Font / No "OK"
  rect(width*1/4, height*0, width*1/2, height*1/10);
  rectTitleWidth = width*1/2;
  titleFontSize = height;
}

void draw() {
  fill(#2C08FF); //Purple Ink, copied from Color Selector
  textAlign (CENTER, TOP); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  //Parameters change depending on font and serifs
  textFont(titleFont, titleFontSize); //Change the number until it fits, largest font size
  
  while ( textWidth(title) > rectTitleWidth) {
    titleFontSize = titleFontSize *  0.99;
    textSize(titleFontSize);
    println(titleFontSize);
  }
  textFont(titleFont, titleFontSize);
  text(title, width*1/4, height*0, width*1/2, height*1/10);
  fill(255); //Reset to white for rest of the program
}

void keyPressed() {
}

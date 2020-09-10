//Global Variables for Everything Text
PFont titleFont;
//String[] fontList = PFont.list(); //To list all fonts available on system
float geometry;
//Title
String title;
float titleWidth;
float titleHeight;
float titleFontDecrease;

//Footer
String footer;
float footerFontHeight;

void textSetup() {
  title= "I2E4567890123";
  titleWidth = width*1/2;
  titleHeight = height*1/10;
  //footerHeight; 
  titleFontDecrease = 1; //67%, 200|300; 57%, 200|200; 18%, 600|200;
  footer = "Bottom";

  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Harrington", height); // //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}

//Exemplar VOID with Parameters
void textDraw(String string, PFont font, float height, color colour, int AlignHorizontal, int AlignVertical, float rectX, float rectY, float rect_Width, float rectHeight) {
  float fontSize = height;
  fill(colour); //Blue Ink, copied from Color Selector
  textAlign (AlignHorizontal, AlignVertical); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  if (string.length() < 13) {
    //Catch for all Strings less than what will draw given a specific geometry
    geometry = width/height;
    println("Geometry Ratio is:", geometry);
    if (string == footer) {
      fontSize = 50;
    }
  } else {
    //Reference to Text Calculator
    fontSize = textCalculator(height, string, rect_Width);
  }
  textFont(font, fontSize); //Change the number until it fits, largest font sizetextFont(titleFont, titleFontSize); //Change the number until it fits, largest font size //titleFontSize
  text(string, rectX, rectY, rect_Width, rectHeight);
  fill(255); //default value
}

void LessThan13(String string, float number, PFont font, int AlignHorizontal, int AlignVertical, float rectX, float rectY, float rect_Width, float rectHeight) {
  //Here goes the catch for printing characters less than 13 ... see notes in ReadMe.md
  textFont(font, number); //Change the number until it fits, largest font sizetextFont(titleFont, titleFontSize); //Change the number until it fits, largest font size //titleFontSize
  text(string, rectX, rectY, rect_Width, rectHeight);
  fill(255); //default value
}

//Exemplar RETURN with Parameters
float textCalculator(float size, String string3, float rectWidth) {
  float i = 1;
  textSize(size); //For textWidth Sizing
  while (textWidth(string3) > rectWidth) {
    size = size * i;
    textSize (size);
    i = i - 0.0001;
  }
  return size; //Purpose of Calculator
}

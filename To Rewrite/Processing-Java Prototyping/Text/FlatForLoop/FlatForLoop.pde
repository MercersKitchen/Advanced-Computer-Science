//fullScreen();
size(600, 600);
String title= "I2E456789012";
PFont titleFont;
float titleWidth = width*1/2;
float titleHeight = height*1/10;
float titleFontSize = height;
//String[] fontList = PFont.list(); //To list all fonts available on system
println("Start of Console");
//printArray(fontList); //For listing all possible fonts to choose, then createFont
titleFont = createFont ("Harrington", height); // //Must also Tools / Create Font / Find Font / Do Not Press "OK"
String titleFontString = "Harrington";
float titleFontDecrease = 1; //67%, 200|300; 57%, 200|200; 18%, 600|200; 

rect(width*1/4, height*0, titleWidth, titleHeight);
fill(#2C08FF); //Blue Ink, copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
textFont(titleFont, titleFontSize); //Change the number until it fits, largest font size
float i = 1;
while (textWidth(title) > titleWidth) {
  titleFontSize = titleFontSize * i;
  textSize (titleFontSize);
  i = i - 0.0001;
  println ("i:", i, "Title Font Size:", titleFontSize); //75.8, 74.6, 50 is where it prints
}
if (titleFontString == "Harrington") {
  titleFontSize = titleFontSize * titleFontDecrease;
}
println ("New Font Size", titleFontSize);
textFont(titleFont, titleFontSize); //Change the number until it fits, largest font size //titleFontSize
text(title, width*1/4, height*0, titleWidth, titleHeight);
fill(255); //Reset to white for rest of the program

println(title);
println(title.length());

/* Example Adding Spaces
title = title + " ";
println(title);
println(title.length());
*/

// Title Bar
//fullScreen();
size(500, 600);
String title = "Rock, Paper, Scissors";
String[] fontList = PFont.list(); // Lists all fonts avaiable on system
printArray(fontList); // for listing all possible fonts to choose from, then createFont
rect (width*1/4, 0, width*1/2, height*1/10);
fill (0);
textAlign (CENTER); //2D may give error, not caught be debugger
textSize (height*1/10);
float textLength = width*1/2;
for (float i=1; textWidth(title) > width*1/2; i = i - 0.01) {
  textLength = textLength*i;
  textSize (textLength);
  println("For" + textLength);
} //Resizing Algorithm for Title Bar
textSize (textLength);
textAlign (CENTER, CENTER);
text (title, width*1/4, 0, width*1/2, height*1/10);
fill (255);

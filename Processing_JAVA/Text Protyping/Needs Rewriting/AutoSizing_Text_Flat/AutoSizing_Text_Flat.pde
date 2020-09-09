// Printing Text into Title Bar
//Note: Delete multi-line comment to view autoSizing text

fullScreen();
String title = "Cue Cards Study Tool"; //  String must be "long enough"
PFont titleFont;
String[] fontList = PFont.list(); // Lists all fonts avaiable on system
println("Starting of Console"); // If you cannot see this, the find another way to see the list on the program 
printArray(fontList); // for listing all possible fonts to choose from, then createFont
titleFont = createFont ("Arial-Black", 55); //Copy spelling from CreateFont
rect (displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10); //Title Rectangle
textFont(titleFont, 40); // Type of font needed for calculation, size needed for function
textAlign (CENTER);

textSize (displayHeight*1/10); //Needed for textWidth Calculation
float textLength = displayWidth*1/2; // Needed for Variable inside FOR Loop
for (float i=1; textWidth(title) > displayWidth*1/2; i = i - 0.01) {
  textLength = textLength*i;
  textSize (textLength);
  println("For" + textLength);
} //Resizing Algorithm for Title Bar
textSize (textLength);

fill (0); //Black Ink
text(title, displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10); 
fill (255);

//Copy and Paste Text Example, Changed rectangle width

String endCopy = "Bottom of the Page"; //  String must be "long enough"
rect (displayWidth*1/4, displayHeight*9/10, displayWidth*1/4, displayHeight*1/10); //Title Rectangle
textFont(titleFont, 40); // Type of font needed for calculation, size needed for function
textAlign (CENTER, CENTER); //Horizontal and Vertical CENTER'ing
textSize (displayHeight*1/10); //Needed for textWidth Calculation
textLength = displayWidth*1/2; // Needed for Variable inside FOR Loop, "float" deleted here
for (float i=1; textWidth(title) > displayWidth*1/4; i = i - 0.01) {
  textLength = textLength*i;
  textSize (textLength);
  println("For" + textLength);
} //Resizing Algorithm for Title Bar
textSize (textLength);
fill (0); //Black Ink
text(endCopy, displayWidth*1/4, displayHeight*9/10, displayWidth*1/4, displayHeight*1/10); 
fill (255);
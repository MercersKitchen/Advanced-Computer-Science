//Minimum code

//fullScreen(); //Student Only
size(700,500); //Teacher Only
String title = "Wahoop!";
PFont titleFont;
//String[] fontList = PFont.list(); //To list all fonts available on system
println("Start of Console");
//printArray(fontList); //For listing all possible fonts to choose, then createFont()
titleFont = createFont("Harrington", 55); //Must also Tools / Create Font / Find Font / No "OK"

rect(width*1/4, height*0, width*1/2, height*1/10);
fill(#2C08FF); //Purple Ink, copied from Color Selector
textAlign (CENTER, TOP); //Align X&Y, see Processing.org / Reference
//Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
//Parameters change depending on font and serifs
textFont(titleFont, 42); //Change the number until it fits, largest font size
text(title, width*1/4, height*0, width*1/2, height*1/10);
fill(255); //Reset to white for rest of the program

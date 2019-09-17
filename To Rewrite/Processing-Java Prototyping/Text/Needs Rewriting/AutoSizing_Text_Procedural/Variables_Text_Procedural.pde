// Varaibles can be called in Processing, or not called

String title = "Cue Cards Study Program"; 
// String must be "long enough", change text for more characters
// If too short, issue with ration between fontHeight and rectLength

String endCopy = "Bottom of the Page";

PFont titleFont;
String[] fontList = PFont.list(); // Lists all fonts avaiable on system

float fontFit = displayWidth+displayHeight; //Needs a value bigger than any rectangle
//If one is bigger than the other, then an error occurs
//If we add them, this will never happen
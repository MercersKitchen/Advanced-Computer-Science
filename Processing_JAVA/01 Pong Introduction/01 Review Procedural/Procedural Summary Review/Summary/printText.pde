//void printText() {}

/*
Parameters and local variables
 - Font-Variable, Font-Size, 
 - AlignX, AlignY: CENTER, LEFT, RIGHT, TOP, BOTTOM
 - text-String, text-X-Start, text-Y-Start, text-width, text-height 
 
 Note: parameters still match layout of rectangels for copy & paste
 */

/*
void printText(PFont fontVariable, int fontSize, int alignX, int alignY, String textString, Boolean fontCal, Boolean useCalc_local, int textX, int textY, int textWidth, int textHeight) {

  textFont(fontVariable, fontSize); // Type of font needed for calculation, size needed for function
  textAlign (alignX, alignY); //Horizontal and Vertical CENTER'ing
  if(fontCal == true) {
    fontFit = fontCalculator (textString, textWidth, textHeight); // 2nd parameter is different
  } else {
    fontFit = fontSize;
  }
    if (useCalc_local == true) {
    textSize (fontFit);
    fill (0); //Black Ink
    text(textString, textX, textY, textWidth, textHeight); 
    fill (255);
  } else {
    //fontFit or fontSize set earlier
    textSize (fontFit);
    fill (0); //Black Ink
    text(textString, textX, textY); //Changed so rectangle does not need to be filled
    fill (255);
  }
  //println("printText fontFit: " + fontFit); //Line reprints like in a LOOP
  //Used to get fontSize when fontCalculator needs to be turned off
}
*/